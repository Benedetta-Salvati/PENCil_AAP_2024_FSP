from __future__ import annotations

import csv
import re
import unicodedata
from pathlib import Path

INPUT_TXT = Path("C.txt")
INPUT_LEMMA_CSV = Path("tllemma.csv")

OUTPUT_TXT = Path("C.normalized.txt")
OUTPUT_TOK = Path("C.tokenized.txt")
OUTPUT_LOG = Path("C.normalization_log.tsv")


def strip_accents(text: str) -> str:
    return "".join(
        ch for ch in unicodedata.normalize("NFD", text)
        if unicodedata.category(ch) != "Mn"
    )


def norm_for_lookup(token: str) -> str:
    t = token.lower()
    t = strip_accents(t)
    t = t.replace("v", "u")
    t = t.replace("j", "i")
    t = t.replace("y", "i")
    t = t.replace("ë", "e").replace("ï", "i")
    t = re.sub(r"[’']", "'", t)
    t = re.sub(r"[^a-z0-9'.-]", "", t)
    return t


def load_lemma_index(path: Path) -> set[str]:
    lemmas = set()
    with path.open("r", encoding="latin1", newline="") as f:
        reader = csv.DictReader(f, delimiter=";")
        for row in reader:
            lemma = (row.get("Lemma") or "").strip()
            haupt = (row.get("Haupteintrag") or "").strip()
            variantes = (row.get("Varianten") or "").strip()

            for item in [lemma, haupt]:
                if item:
                    lemmas.add(norm_for_lookup(item))

            if variantes:
                for v in re.split(r"\s*,\s*", variantes):
                    if v:
                        lemmas.add(norm_for_lookup(v))
    return lemmas


def join_hyphenated_linebreaks(text: str) -> tuple[str, list[tuple[str, str]]]:
    changes = []

    def repl(match: re.Match) -> str:
        left = match.group(1)
        right = match.group(2)
        merged = left + right
        changes.append((f"{left}-\\n{right}", merged))
        return merged

    new_text = re.sub(r"([A-Za-zÀ-ÿ]+)-\n([A-Za-zÀ-ÿ]+)", repl, text)
    return new_text, changes


def flatten_linebreaks(text: str) -> str:
    text = text.replace("\r\n", "\n").replace("\r", "\n")
    text = re.sub(r"(?<!\n)\n(?!\n)", " ", text)
    text = re.sub(r"[ \t]+", " ", text)
    text = re.sub(r" ?\n ?", "\n", text)
    return text.strip()


TOKEN_RE = re.compile(r"[A-Za-zÀ-ÿ0-9]+(?:['’][A-Za-zÀ-ÿ0-9]+)?|[^\w\s]", re.UNICODE)


def tokenize(text: str) -> list[str]:
    return TOKEN_RE.findall(text)


def is_known(token: str, lexicon: set[str]) -> bool:
    return norm_for_lookup(token) in lexicon


def conservative_split_token(token: str, lexicon: set[str]) -> tuple[str, str] | None:
    raw = re.sub(r"[^\w'’\-]", "", token, flags=re.UNICODE)
    if len(raw) < 5:
        return None
    if "'" in raw or "’" in raw:
        return None
    if is_known(raw, lexicon):
        return None

    candidates = []

    for i in range(2, len(raw) - 1):
        left = raw[:i]
        right = raw[i:]
        if is_known(left, lexicon) and is_known(right, lexicon):
            candidates.append((left, right))

    if len(candidates) == 1:
        return candidates[0]
    return None


ABBREVIATION_MAP = {
    # Exemples seulement.
    # À enrichir avec des équivalences explicites et sûres.
    # Le vrai problème est souvent le caractère lui-même: 
    # (combinaisons, graphies OCR, séquences différentes selon encodage).
    # Mais globalement le script fonctionne.
    "nr̃e": "nostre",
    "nr̃": "nostre",
    "ihũ": "ihesu",
    "xp̃": "christ",
    "ihu ̃": "ihesu",
    "ihu": "ihesu",
}


def expand_abbreviation(token: str) -> str:
    return ABBREVIATION_MAP.get(token, token)


def normalize_text(text: str, lexicon: set[str]):
    logs = []

    text, hyphen_changes = join_hyphenated_linebreaks(text)
    for src, dst in hyphen_changes:
        logs.append(("join_linebreak_hyphen", src, dst, "safe"))

    text = flatten_linebreaks(text)
    tokens = tokenize(text)

    out_tokens = []

    for tok in tokens:
        original = tok

        expanded = expand_abbreviation(tok)
        if expanded != tok:
            logs.append(("expand_abbreviation", tok, expanded, "explicit_map"))
            tok = expanded

        split_candidate = conservative_split_token(tok, lexicon)
        if split_candidate:
            left, right = split_candidate
            out_tokens.extend([left, right])
            logs.append(("split_token", original, f"{left} {right}", "unique_lexicon_match"))
            continue

        out_tokens.append(tok)

    return out_tokens, logs


def untokenize(tokens: list[str]) -> str:
    text = " ".join(tokens)
    text = re.sub(r"\s+([.,;:!?])", r"\1", text)
    text = re.sub(r"\(\s+", "(", text)
    text = re.sub(r"\s+\)", ")", text)
    return text


def main():
    lexicon = load_lemma_index(INPUT_LEMMA_CSV)
    text = INPUT_TXT.read_text(encoding="utf-8")

    tokens, logs = normalize_text(text, lexicon)

    OUTPUT_TOK.write_text("\n".join(tokens), encoding="utf-8")
    OUTPUT_TXT.write_text(untokenize(tokens), encoding="utf-8")

    with OUTPUT_LOG.open("w", encoding="utf-8", newline="") as f:
        writer = csv.writer(f, delimiter="\t")
        writer.writerow(["operation", "source", "result", "status"])
        writer.writerows(logs)

    print(f"Lexicon size: {len(lexicon)}")
    print(f"Written: {OUTPUT_TXT}")
    print(f"Written: {OUTPUT_TOK}")
    print(f"Written: {OUTPUT_LOG}")


if __name__ == "__main__":
    main()