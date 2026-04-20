# Encoder la variation textuelle. Moyen âge et première modernité.
## Le cas des textes historiographiques médiévaux.
---

## Avant-propos

### Cadre du document

Ce manuel d’encodage a été élaboré dans le cadre du projet **PENCil** (*Pour une Édition Numérique de la Chronique de Baudouin d’Avesnes*), déposé à l’**AAP 2024 FSP**.

### Référence du projet

- **Acronyme** : PENCil  
- **Titre du projet** : *Pour une Édition Numérique de la Chronique de Baudouin d’Avesnes*  
- **Responsable scientifique** : Anne Rochebouet  
- **Partenaires internes FSP** : Frédéric Duval 
- **Durée du projet** : 12 mois  

### Contexte scientifique

Le projet PENCil s’inscrit dans un environnement scientifique associant philologie médiévale, histoire du livre et humanités numériques, au sein duquel a été développée, à l’initiative de l’autrice de ce document, une réflexion méthodologique consacrée à l’encodage et à la modélisation de la variation textuelle dans la _Chronique dite de Baudouin d’Avesnes_, œuvre historiographique majeure du XIIIe siècle transmise par une tradition manuscrite particulièrement riche et complexe.

L’un des objectifs principaux du projet a consisté à élaborer un modèle d’édition critique nativement numérique permettant d’appréhender les dynamiques de variation textuelle caractéristiques de la transmission manuscrite des textes historiques médiévaux. Le travail a porté plus particulièrement sur l’articulation entre analyse philologique des états textuels, prise en compte de la matérialité des témoins manuscrits et modélisation formelle des phénomènes de variation dans un environnement d’encodage structuré.

Dans ce cadre, une chaîne de traitement des données a été mise en place afin de permettre la transformation des sources manuscrites en données textuelles réutilisables. Cette chaîne couvre les différentes étapes allant de l’acquisition des textes par reconnaissance automatique de l’écriture manuscrite (HTR, _Handwritten Text Recognition_) jusqu’à leur encodage en XML-TEI et à leur intégration dans un dispositif permettant l’exploration des relations textuelles entre les témoins.

Pour les premières étapes du traitement, le projet s’est appuyé sur des outils open source développés au sein des institutions partenaires ainsi que dans le cadre d’infrastructures de recherche consacrées à l’édition numérique. Ont notamment été mobilisés :

- _eScriptorium_ / Kraken, pour la reconnaissance automatique de l’écriture manuscrite, dans la continuité des travaux menés dans le cadre des projets CREMMA et CREMMA Lab, ainsi que du modèle CATMuS-médiéval.

Les travaux menés dans ce cadre ont permis de formaliser un ensemble de principes d’encodage visant à rendre compte de la variation textuelle à différents niveaux, en particulier des phénomènes de macro-variation propres aux écritures historiographiques médiévales. Le présent manuel rassemble ces principes afin d’assurer la cohérence des pratiques d’encodage et de documenter les choix méthodologiques retenus, dans une perspective de réutilisation sur d’autres corpus présentant des problématiques analogues.

### État de l'art

Rédigée en français médiéval entre 1278 et 1281 dans l’entourage de Baudouin d’Avesnes, la _Chronique dite de Baudouin d’Avesnes_ est une histoire universelle allant de la Création jusqu’au temps de sa rédaction. La diffusion importante de l’œuvre est attestée par les cinquante-cinq manuscrits conservés, copiés entre la fin du XIIIe siècle et la fin du XVe siècle, dont quatorze sont aujourd’hui conservés au département des Manuscrits de la Bibliothèque nationale de France et cinq à la bibliothèque de l’Arsenal. Malgré cette transmission particulièrement riche, la _Chronique_ demeure très largement inédite et sa tradition manuscrite reste encore mal connue. Les seules éditions disponibles, publiées au XIXe siècle, ne portent que sur certaines sections médiévales du texte et n’ont pas été accompagnées d’une étude approfondie de la tradition manuscrite. Le nombre élevé de témoins, comme l’ampleur des variations textuelles qui les distinguent, ont sans doute contribué à détourner l’attention de l’œuvre ; à cela s’ajoute le fait qu’une large partie du texte a longtemps paru d’un intérêt limité pour l’historiographie moderne. De ce fait, nombre de manuscrits n’ont fait l’objet que de descriptions sommaires, voire d’aucune étude détaillée.

Cet état des connaissances laisse donc largement ouverte la question des formes de circulation, de transformation et de reconfiguration du texte dans sa longue transmission manuscrite. La dissémination actuelle des témoins, conservés entre la France, le reste de l’Europe et les États-Unis, complique encore l’appréhension d’ensemble du dossier. Or la _Chronique_ de Baudouin d’Avesnes constitue un terrain particulièrement fécond pour l’étude des logiques de mobilité textuelle propres aux écritures historiques médiévales. D’une part, ces textes reposent largement sur des pratiques de compilation, qui autorisent de multiples recompositions internes et dont les effets demeurent encore insuffisamment étudiés. D’autre part, les récits historiques conduits jusqu’au temps du rédacteur appellent fréquemment continuations, mises à jour et remaniements, parfois sur de vastes portions du texte, en fonction de contextes matériels, politiques ou intellectuels nouveaux. Dans le cas de la _Chronique_, des travaux récents ont déjà montré l’existence d’interpolations empruntées à d’autres histoires universelles, notamment au _Manuel_ d’histoire de Philippe VI de Valois, ainsi que l’existence de réécritures tardives liées au contexte bourguignon du troisième quart du XVe siècle. Des dépouillements systématiques menés récemment sur l’ensemble des témoins, quoique limités à certaines zones textuelles, ont également commencé à faire apparaître des relations textuelles significatives entre les manuscrits.

Si ces premiers résultats ouvrent des perspectives décisives, ils ne permettent pas encore de saisir dans son ensemble la dynamique de variation, de modularité et de reconfiguration qui caractérise la _Chronique_ dans la durée. C’est précisément à ce manque que répond le projet, en prenant pour objet non seulement le texte, mais l’ensemble de ses incarnations manuscrites. Dans cette perspective, l’édition numérique ne peut être conçue comme la simple transposition d’un modèle d’édition critique imprimée : la complexité des états textuels en présence, la fréquence des interpolations, l’hétérogénéité des degrés de variation et le rôle structurant de la mise en texte manuscrite imposent de concevoir des modes d’encodage et de visualisation spécifiques. L’enjeu n’est donc pas seulement de rendre accessible une œuvre largement inédite, mais de produire un dispositif permettant de naviguer entre des états textuels successifs, concomitants ou concurrents, et d’articuler ces états aux contextes matériels dans lesquels ils prennent sens. Ainsi envisagée, la _Chronique_ de Baudouin d’Avesnes apparaît comme un observatoire privilégié pour l’étude des textes historiques médiévaux dans leur vie longue, dans leur variabilité, et dans leur inscription concrète dans des formes manuscrites diverses.

### Objectifs du manuel

Ce manuel vise à formaliser les principes d’encodage élaborés dans le cadre du projet et à expliciter les choix de modélisation retenus pour la représentation de la variation textuelle en XML-TEI. Il propose un cadre méthodologique cohérent pour l’annotation des témoins, destiné à assurer l’homogénéité des pratiques d’encodage et la comparabilité des données produites. Une attention particulière est accordée aux phénomènes complexes, notamment aux situations de chevauchement et aux formes de macro-variation, pour lesquels des solutions spécifiques ont été mises en place et documentées. L’ensemble constitue une documentation visant à garantir la lisibilité des choix méthodologiques effectués et à permettre la réutilisation du modèle sur d’autres corpus présentant des problématiques analogues.

### Statut du document

Ce manuel a pour vocation de servir de document de référence pour la poursuite des travaux d’édition de la _Chronique_ de Baudouin d’Avesnes, ainsi que pour toute réutilisation ou adaptation du protocole dans des contextes comparables. Il pourra, le cas échéant, être complété ou ajusté en fonction de l’évolution du projet éditorial ou de l’extension du corpus traité.

## Références du projet

Projet **PENCil** — *Pour une Édition Numérique de la Chronique de Baudouin d’Avesnes*  
AAP 2024 FSP

--- 

## Resumé

La présente section propose un protocole opérationnel pour l’encodage de la _macro-variance_, élaboré dans le prolongement d’un travail de recherche consacré à la modélisation de la variation textuelle dans les traditions manuscrites médiévales et prémodernes (séminaire _Variantes_ 2022-2025, École nationale des Chartes — PSL). La macro-variance y est définie comme un phénomène supra-phrastique affectant des segments textuels étendus et susceptible d’entraîner une modification de l’_intentio textus_ (Duval, Salvati 2026). Elle doit être envisagée en articulation avec la micro-variance, qui relève de transformations localisées.

Le protocole présenté vise à formaliser une chaîne opératoire cohérente, allant de l’encodage des phénomènes de variation dans le cadre du standard TEI jusqu’à leur exploitation critique. Il s’appuie sur une approche théorique de la variation textuelle développée dans le cadre des travaux préparatoires au projet et destinée à permettre une représentation structurée des phénomènes macrotextuels dans des traditions caractérisées par une forte mobilité du texte. 

### 1. Principes normatifs

L’encodage proposé s’inscrit dans le respect strict des recommandations de la TEI P5 et repose sur un ensemble de principes visant à garantir la cohérence, la lisibilité et la réutilisabilité des données produites.

1. **Conformité au standard TEI P5** :
Le modèle d’encodage repose exclusivement sur les éléments et attributs définis par la TEI P5. Aucun élément ni attribut ad hoc n’est introduit. Les phénomènes de variation sont représentés au moyen du balisage critique standard (`<app>`, `<lem>`, `<rdg>`), qui constituent la structure de base de la représentation des variantes textuelles.

2. **Taxonomies déclarées dans l'en-tête** :
Les catégories utilisées pour qualifier les phénomènes de variation sont déclarées dans l’en-tête du document, au sein de l’élément `<encodingDesc>`, plus précisément dans `<classDecl>` et `<taxonomy>`. Deux axes principaux de catégorisation sont mobilisés :

   - les identifiants de familles textuelles (`fam-*`), qui permettent de caractériser les regroupements de témoins ;
   - les identifiants de diagnostics (`dx-*`), qui décrivent la nature des transformations observées.

3. **Imbrication macro / micro** :
Le modèle repose sur une distinction fonctionnelle entre différents niveaux de variation. Un élément `<app>` peut être qualifié au moyen de l’attribut `@type` afin d’indiquer la nature de l’opération relevant de la macro-variation. Les leçons (`<lem>`, `<rdg>`) associées à cet élément peuvent recevoir des annotations supplémentaires au moyen de l’attribut `@ana`, qui permet de spécifier les diagnostics retenus. Lorsque cela est nécessaire, des éléments `<app>` de granularité plus fine peuvent être imbriqués afin de rendre compte de phénomènes de micro-variation ou d’autres transformations localisées.

---

## 1. Positionnement théorique et principes d'encodage

### Distinction conceptuelle
Le modèle d’encodage proposé repose sur une distinction entre deux niveaux de variation textuelle, définis selon leur portée structurelle et leur impact sur l’organisation du texte.

* **Macro-variance**
On désigne ici par macro-variance les transformations affectant des segments textuels étendus et susceptibles de modifier de manière perceptible l’intentio textus, c’est-à-dire l’orientation générale ou la configuration discursive du texte. Ces phénomènes peuvent se manifester sous différentes formes, parmi lesquelles :

  - la **réorientation** du discours,  
  - l’**interpolation** de séquences textuelles de longueur variable,    
  - l’**amplification** ou le développement d’un passage,
  - l’**abrègement** ou la condensation d'un segment textuel,
  - la **transposition** d’unités textuelles étendues.
 
La macro-variance implique ainsi des opérations qui excèdent le niveau strictement local et qui affectent la structure ou la cohérence globale du texte.

* **Micro-variance**
La micro-variance correspond à des transformations localisées affectant des unités textuelles de granularité plus fine (plus petites). Elle regroupe notamment :

  - les variantes **graphiques** (orthographe, ponctuation),  
  - les variantes **morphologiques** (flexions, marques de genre ou de nombre),  
  - les variantes **morphosyntaxiques** (ordre des mots, emploi de particules fonctionnelles),  
  - variantes **lexicales**,
  - variantes **sémantiques**.

Ces phénomènes relèvent d’altérations ponctuelles qui n’impliquent pas nécessairement une reconfiguration de l’organisation du texte, mais contribuent néanmoins à la diversité des états textuels attestés dans la tradition manuscrite.

#### Principe d’encodage
Le modèle d’encodage repose sur une distinction fonctionnelle entre le lieu d’apparition de la variation et ses réalisations textuelles dans les témoins. Cette distinction permet de dissocier la structuration du phénomène de variation de son interprétation critique.

1. **Le locus de variation** (`<app>`) :  
L’élément `<app>`constitue l’unité structurante de l’apparat critique : il définit le lieu textuel où se manifeste une divergence entre témoins. Il correspond ainsi au contexte structurel au sein duquel les différentes réalisations textuelles peuvent être décrites et comparées.
L’attribut `@type` permet de qualifier la _nature_ de l’opération observée et d’indiquer le _niveau de variation_ concerné (par exemple macro- ou micro-variation), en renvoyant à une typologie opératoire explicitée dans les taxonomies du projet. 

2. **Les réalisation textuelles** (`<lem>`, `<rdg>`) :
Les éléments `<lem>` et `<rdg>` correspondent aux différentes leçons attestées dans les témoins. Ils représentent les formes textuelles effectivement transmises par la tradition manuscrite.
L’attribut `@ana` permet d’associer ces leçons à des catégories interprétatives définies dans les taxonomies déclarées dans l’en-tête du document. Il peut notamment indiquer :
   - l’appartenance à une famille textuelle (`#fam-*`) ;
   - un diagnostic relatif à la nature de la transformation observée (`#dx-*`).
   
   Exemple :  
     ```xml
     <rdg wit="#P12" ana="#fam-Metz_B #dx-macro_add">[texte]</rdg>
     ```

#### Neutralité éditoriale

Dans le présent protocole, l’élément `<lem>` est employé comme point de référence local au sein de l’apparat critique, sans qu’il implique par lui-même de hiérarchie interprétative entre les leçons attestées. Il constitue un repère structurel permettant d’organiser la représentation des variantes, mais ne correspond pas nécessairement à une reconstruction du texte ni à une forme considérée comme préférable sur le plan philologique.

En conséquence, le `<lem>` est annoté selon les mêmes principes que les éléments `<rdg>`, notamment par l’usage de l’attribut `@ana`, qui permet d’indiquer l’appartenance familiale et les diagnostics associés. La distinction entre `<lem>` et `<rdg>` relève ainsi d’une convention structurante propre au balisage TEI et ne préjuge pas du statut critique des formes représentées.

Ce choix vise à maintenir une séparation claire entre la structuration de l’apparat de variantes et l’interprétation philologique des phénomènes observés.

#### Portée critique
La distinction opérée entre le locus de variation et les réalisations textuelles permet d’articuler de manière explicite les différents niveaux de variation, en particulier la macro- et la micro-variance, en leur assignant des fonctions distinctes dans le processus d’encodage. Elle contribue également à dissocier la structuration formelle de l’appareil critique de l’interprétation philologique des phénomènes observés.

Dans ce cadre, l’attribut `@type`, appliqué à l’élément `<app>`, permet d’indiquer la nature de l’opération textuelle décrite, tandis que l’attribut `@ana`, appliqué aux leçons (`<lem>`, `<rdg>`), rend compte des catégories interprétatives mobilisées pour qualifier les transformations attestées dans la tradition manuscrite.

Cette organisation vise à garantir la lisibilité du modèle d’encodage en permettant une description fine des phénomènes de variation.

---

## 2. Contraintes de modélisation TEI
Le modèle d’encodage repose sur un usage strict des recommandations de la TEI P5 et sur un ensemble de contraintes visant à garantir la cohérence, l’interopérabilité et la pérennité des données produites.

   1. **Absence de création d’attributs ad hoc** : L’encodage s’appuie exclusivement sur les éléments et attributs définis par la TEI. Sont notamment mobilisés les attributs `@ana`, @`resp`, `@source`, `@wit`, `@xml:id` et `@corresp`. Aucun attribut supplémentaire n’est introduit en dehors du cadre défini par le standard.
   2. **Déclaration explicite des catégories** : L’ensemble des catégories utilisées pour décrire les phénomènes de variation est déclaré dans l’en-tête du document, au sein de `<encodingDesc>`, plus précisément dans `<classDecl>` et `<taxonomy>`. Cette structuration garantit la stabilité des catégories interprétatives et permet leur documentation.
   3. **Référencement normalisé des catégories** : Les catégories définies dans les taxonomies sont mobilisées dans l’encodage par l’intermédiaire d’identifiants TEI (par exemple `#fam-*`, `#dx-*`, `#mot-*`, `#lvl-*`), principalement au moyen de l’attribut `@ana`. Ce système de référencement permet d’assurer la cohérence du balisage et de maintenir une séparation explicite entre la structuration du texte et les catégories analytiques utilisées pour décrire les phénomènes observés.

---

## 3. En-tête TEI : taxonomies et structuration des témoins

### 3.1. Taxonomies
Le modèle d’encodage repose sur un ensemble de taxonomies déclarées dans l’en-tête TEI, destinées à formaliser les différentes dimensions de la variation textuelle. Ces taxonomies permettent de définir un vocabulaire contrôlé pour la description des phénomènes observés et d’assurer la stabilité des catégories mobilisées dans l’encodage.

Cinq ensembles principaux sont distingués :

   - les **niveaux** de variation, qui permettent d’indiquer la portée structurelle des phénomènes décrits ;
   - les **opérations** textuelles, qui rendent compte des transformations observées dans la tradition manuscrite ;
   - les **motivations**, qui permettent de qualifier, lorsque cela est pertinent, l’interprétation fonctionnelle de certaines modifications ;
   - les **diagnostics**, qui correspondent à des catégories descriptives permettant de caractériser plus précisément les transformations attestées ;
   - la **cartographie des familles** textuelles, qui permet d’indiquer les regroupements de témoins sur la base de leurs relations textuelles.


```xml
<encodingDesc>
  <classDecl>
    <!-- Niveaux -->
    <taxonomy xml:id="lvl">
      <category xml:id="lvl-micro"><catDesc>micro-variantes</catDesc></category>
      <category xml:id="lvl-macro"><catDesc>macro-variantes</catDesc></category>
    </taxonomie>

    <!-- Opérations -->
    <taxonomy xml:id="ops">
      <category xml:id="op-macro_add"><catDesc>ajout</catDesc></category>
      <category xml:id="op-macro_om"><catDesc>omission</catDesc></category>
      <category xml:id="op-macro_transpo"><catDesc>transposition</catDesc></category>
      <category xml:id="op-macro_reorientation"><catDesc>réorientation thématique</catDesc></category>
      <category xml:id="op-macro_amplification"><catDesc>amplification</catDesc></category>
      <category xml:id="op-macro_abreviation"><catDesc>abréviation</catDesc></category>
      <!-- Micro si besoin -->
      <category xml:id="op-graph"/><category xml:id="op-morph"/>
      <category xml:id="op-ms"/><category xml:id="op-semlex"/>
    </taxonomie>

    <!-- Motivations (optionnelles) -->
    <taxonomy xml:id="mot">
      <category xml:id="mot-encyclopedic"><catDesc>Enrichissement encyclopédique</catDesc></category>
      <category xml:id="mot-hermeneutic"><catDesc>Clarification herméneutique</catDesc></category>
      <category xml:id="mot-aesthetic"><catDesc>Inflexion esthétique/genre</catDesc></category>
      <category xml:id="mot-linguistic"><catDesc>Adaptation linguistique</catDesc></category>
    </taxonomie>

    <!-- Diagnostic transversal -->
    <taxonomy xml:id="dx">
      <category xml:id="dx-manuel"><catDesc> </catDesc></category>
      <category xml:id="dx-metzB_signal"><catDesc> </catDesc></category>
      <category xml:id="dx-structure_titres"><catDesc> </catDesc></category>
      <category xml:id="dx-sansWit"><catDesc> </catDesc></category>
    </taxonomie>

    <!-- Familles -->
    <taxonomy xml:id="familles">
      <category xml:id="fam-Metz_B"><catDesc>Rédaction messine</catDesc></category>
      <category xml:id="fam-Nord_Cambrai_ancien"><catDesc>Groupe ancien (Nord/Cambrai)</catDesc></category>
      <category xml:id="fam-Remanie_Manuel"><catDesc>Branche « Manuel »</catDesc></category>
      <category xml:id="fam-Remanie_IVe_compilation"><catDesc>Branche IVe s. /autre compilation</catDesc></category>
      <category xml:id="fam-Abrege"><catDesc>Abrégé</catDesc></category>
      <category xml:id="fam-Bourguignon_XVe"><catDesc>Bourguignon tardif (XVe)</catDesc></category>
      <category xml:id="fam-Tardif_non_Metz"><catDesc>Tardif non messin</catDesc></category>
      <category xml:id="fam-Unique"/><category xml:id="fam-Mixte"/>
    </taxonomie>
  </classDecl>

  <!-- Responsabilités possibles -->
  <projectDesc>
    <respStmt xml:id="r-author"><resp>auteur</resp><name>inconnu</name></respStmt>
    <respStmt xml:id="r-remanieur"><resp>remanieur</resp><name>inconnu</name></respStmt>
    <respStmt xml:id="r-copiste"><resp>copiste</resp><name>inconnu</name></respStmt>
  </projectDesc>
</encodingDesc>
```

### 3.2. Liste des témoins et structuration des familles textuelles
Chaque témoin est identifié par un sigle associé à un identifiant unique (`@xml:id`) et relié à une famille textuelle au moyen de l’attribut `@ana`. Ce dispositif permet d’intégrer explicitement l’information dans l’en-tête TEI et de faciliter l’exploitation des données, notamment dans le cadre de requêtes ou d’analyses comparatives.

L’association entre témoins et familles textuelles est ainsi formalisée dans l’élément `<listWit>`, tandis que les sources externes susceptibles d’intervenir dans les phénomènes de variation (par exemple les textes servant de modèle à certaines interpolations) sont déclarées dans `<listBibl>`. Cela permet d’articuler l’identification des témoins, leur position dans la tradition et les relations intertextuelles pertinentes pour l’analyse de la variation.

```xml
<sourceDesc>
<!-- recensement des témoins -->
  <listWit>
    <witness xml:id="P12" ana="#fam-Metz_B">Paris, BnF, NAF 5218</witness>
    <témoin xml:id="C" ana="#fam-Nord_Cambrai_ancien">Cambrai 683</témoin>
    <witness xml:id="B7" ana="#fam-Nord_Cambrai_ancien">Bruxelles, II 9882</witness>
    <witness xml:id="B1" ana="#fam-Nord_Cambrai_ancien">Bruxelles, 9003</witness>
    <witness xml:id="A2" ana="#fam-Remanie_Manuel">Arras, 995</witness>
    <witness xml:id="B4" ana="#fam-Remanie_IVe_compilation">Bruxelles, 9277</witness>
    <witness xml:id="B5" ana="#fam-Abrege">Bruxelles, 10201</witness>
    <witness xml:id="Ars4" ana="#fam-Bourguignon_XVe">Arsenal, 5089–90</witness>
    <témoin xml:id="Val3" ana="#fam-Tardif_non_Metz">Valenciennes 540</témoin>
    <witness xml:id="B3" ana="#fam-Tardif_non_Metz">Bruxelles, 9271</witness>
  </listWit>
<!-- sources externes -->
  <listBibl>
    <bibl xml:id="src-ManuelPhilippeVI">Manuel d'histoire de Philippe VI</bibl>
    <bibl xml:id="src-Eusebe">Eusèbe de Césarée</bibl>
  </listBibl>
</sourceDesc>
```

---

## 4. Règles d'annotation

### 4.1. Identification du lieu de variation
Chaque élément `<app>` correspond à un locus de variation et se voit attribuer une opération dominante au moyen de l’attribut `@type`. Cette opération indique la nature principale de la transformation observée et permet de situer le phénomène dans la typologie adoptée par le modèle.

Les opérations de macro-variation comprennent notamment :

   - `op-macro_add` (ajout de segment textuel) ;
   - `op-macro_om` (omission de segment textuel) ;
   - `op-macro_transpo` (transposition de segment) ;
   - `op-macro_reorientation` (modification de l’orientation du discours) ;
   - `op-macro_amplification` (développement d’un passage) ;
   - `op-macro_abreviation` (condensation d’un segment textuel).

Lorsque cela est nécessaire, des opérations de micro-variation peuvent être décrites à un niveau d’imbrication inférieur, notamment :

   - `op-graphemic` (variation graphique) ;
   - `op-morphologic` (variation de morphologie flexionnelle) ;
   - `op-morphosyntactic` (variation morphosyntaxique) ;
   - `op-lexsem` (variation lexico-sémantique).

L’attribution d’une opération dominante vise à assurer la lisibilité de l’encodage en permettant la coexistence de phénomènes de variation à des échelles différentes.

### 4.2. Annotation des leçons (`<lem>`, `<rdg>`)
Chaque leçon est caractérisée au moyen de l’attribut `@ana`, qui permet d’associer la réalisation textuelle à un ensemble de catégories interprétatives définies dans les taxonomies.

Sont notamment indiqués :

   - le niveau de variation, à l’aide des identifiants `#lvl-macro` ou `#lvl-micro`, déterminés en fonction du locus de variation ;
   - l’appartenance familiale, déduite de l’attribut `@wit`, sous la forme d’identifiants `#fam-*`, éventuellement complétés par `#fam-Unique` ou `#fam-Mixte` lorsque la configuration des témoins le justifie ;
   - le cas échéant, des diagnostics (`#dx-*`) et des motivations (`#mot-*`), permettant de préciser l’interprétation du phénomène observé ;
   - éventuellement les attributs `@resp`, qui indiquent l’agent de l’annotation, et `@source`, qui permet de documenter l’origine d’une interpolation ou d’une transformation identifiée.

Toute leçon identifiée comme relevant de la macro-variation (`#lvl-macro`) est contenue dans un élément `<app>` signalant la présence d’un phénomène macrotextuel dans la portion de texte concernée. Cette structuration n’exclut pas la coexistence de phénomènes de micro-variation à l’intérieur du même segment : elle vise au contraire à permettre la représentation simultanée de transformations de portée différente au sein d’une même architecture.

### 4.3. Imbrication macro/micro
Le protocole repose sur une hiérarchisation explicite des phénomènes de variation. Les segments relevant de la macro-variation sont identifiés en premier lieu et font l’objet d’un balisage spécifique au moyen d’un élément `<app>` caractérisé par un niveau `#lvl-macro`. Lorsque cela est nécessaire, des éléments `<app>` de granularité plus fine (niveau inférieur) peuvent être imbriqués à l’intérieur de ce segment afin de rendre compte de phénomènes de micro-variation.

D’un point de vue méthodologique, après l’acquisition et l’alignement des textes, la première étape de l’annotation consiste à identifier et à délimiter les segments affectés par des transformations de portée étendue. Les phénomènes de variation localisée sont ensuite décrits, le cas échéant, à l’intérieur de ces unités.

La priorité est ainsi accordée au phénomène affectant le segment textuel le plus étendu, c’est-à-dire à la macro-variante, qui détermine l’attribution du niveau macro (`#lvl-macro`) à l’élément `<app>`. Ce cadre permet d’intégrer, au sein d’un même segment, des variantes de nature graphique, morphologique, lexicale ou morphosyntaxique, tout en maintenant une hiérarchie explicite des phénomènes de variation.

---

## 5. Modèle d'encodage

### 5.1. Ajout (interpolation attestée dans la branche A2)

L’exemple suivant illustre l’encodage d’un phénomène de macro-variation correspondant à l’ajout d’un segment textuel attesté dans un témoin particulier. L’élément `<app>` délimite le locus de variation et reçoit un identifiant (`@xml:id`) ainsi qu’une qualification typologique (`@type="op-macro_add"`), indiquant qu’il s’agit d’une interpolation de portée macrotextuelle.

La leçon de référence (`<lem>`) correspond ici à la configuration textuelle partagée par plusieurs témoins, tandis que la leçon divergente (`<rdg>`) rend compte d’un segment interpolé attesté dans le témoin A2. L’attribut `@ana` permet de spécifier le niveau de variation (`#lvl-macro`), l’appartenance familiale (`#fam-*`), ainsi que les diagnostics et motivations associés à la transformation observée. Les attributs `@resp` et `@source` permettent respectivement d’indiquer l’agent de la transformation et la source textuelle de l’interpolation.

```xml
<app xml:id="mv001" type="op-macro_add">
  <lem wit="#C #B1 #B7">ici cadre conservateur</lem>

  <rdg wit="#A2"
       ana="#lvl-macro #fam-Remanie_Manuel #fam-Unique #dx-manuel #dx-macro_add #mot-encyclopédique"
       resp="#r-remanieur"
       source="#src-ManuelPhilippeVI">
    Dans la cité de Jherusalem s'esleverent trois tirans
  </rdg>
</app>
```

### 5.2. Omission macro (abrégé B5)

Cet exemple illustre un phénomène de macro-variation correspondant à l’omission d’un segment textuel dans un témoin abrégé. L’élément `<app>` délimite le locus de variation et reçoit une qualification typologique (`@type="op-macro_om"`), indiquant qu’il s’agit d’une suppression affectant un segment de portée macrotextuelle.

La leçon de référence (`<lem>`) correspond ici à la configuration textuelle attestée dans plusieurs témoins conservateurs de la tradition, tandis que la leçon divergente (`<rdg>`) signale l’absence du segment dans le témoin B5. L’attribut `@ana` permet d’indiquer le niveau de variation (`#lvl-macro`), l’appartenance familiale (`#fam-Abrege`) ainsi que le diagnostic correspondant à l’opération d’omission (`#dx-macro_om`).

```xml
<app xml:id="mv002" type="op-macro_om">
  <lem wit="#C #B7 #B1 #P12">cadre conservateur</lem>
  <rdg wit="#B5"
       ana="#lvl-macro #fam-Abrege #fam-Unique #dx-macro_om"/>
</app>
```

### 5.3. Transposition macro (A vs B)

Le phénomène de transposition correspond au déplacement d’un segment textuel d’une position à une autre dans le corpus. Dans le modèle adopté, ce type d’opération est encodé au moyen d’éléments `<app>` distincts permettant d’identifier les segments concernés et de rendre explicites leurs relations de correspondance.

Dans l’exemple suivant, deux blocs textuels apparaissent dans un ordre différent selon les témoins. Les attributs `@xml:id` et `@corresp` permettent d’indiquer explicitement la relation entre les segments déplacés, tout en maintenant la cohérence de la structure de l’apparat critique. L’attribut `@ana` précise le niveau de variation (`#lvl-macro`) ainsi que l’appartenance familiale des leçons concernées.

```xml
<p>
  <app xml:id="mv003" type="op-macro_transpo">
    <rdg wit="#B1 #B7" xml:id="blocA" ana="#lvl-macro #fam-Nord_Cambrai_ancien #fam-Mixte">premier bloc</rdg>
    <rdg wit="#A2" corresp="#blocB" ana="#lvl-macro #fam-Remanie_Manuel #fam-Unique">deuxième bloc</rdg>
  </app>
  <!-- -->
  <app xml:id="mv004" type="op-macro_transpo">
    <rdg wit="#B1 #B7" xml:id="blocB" ana="#lvl-macro #fam-Nord_Cambrai_ancien #fam-Mixte">deuxième bloc</rdg>
    <rdg wit="#A2" corresp="#blocA" ana="#lvl-macro #fam-Remanie_Manuel #fam-Unique">premier bloc</rdg>
  </app>
</p>
```

Dans certains cas, la transposition s’accompagne de transformations supplémentaires, telles que des reformulations ou des opérations de réorganisation. Les diagnostics associés aux leçons (`#dx-*`) permettent alors de préciser la nature du phénomène observé et d’identifier les interactions entre plusieurs types d’opérations (par exemple transposition et réorientation). L’exemple ci-dessous illustre un cas de transposition impliquant également une reconfiguration du passage concerné.

```xml
<!-- début transposition --><app type="#op-macro-transpo">
               <lem wit="#C #B1 #B7 B4 #Ars4 #B5 #P12 #Val3 #B3"
                  ana="#lvl-macro #fam-Abrege #fam-Bourguignon_XVe #fam-Metz_B #fam-Nord_Cambrai_ancien #fam-Remanie_IVe_compilation #fam-Tardif_non_Metz #fam-Mixte"/>
               <rdg corresp="#mv01" wit="#A2" ana="#lvl-macro #fam-Remanie_Manuel #fam-Unique #dx-manuel #dx-macro-montage-compilation"> Il estoit anchien et
                  ne regna que ung an et .iiii. mois. Il fut le .xe. aprés Auguste Cesar. </rdg>
            </app>Cil empereres Nerva eslut à successeur de son empire Traciien. <app type="#op-macro-reorientation">
               <lem wit="#C #B1 #B7 B4 #Ars4 #B5 #P12 #Val3 #B3"
                  ana="#lvl-macro #fam-Abrege #fam-Bourguignon_XVe #fam-Metz_B #fam-Nord_Cambrai_ancien #fam-Remanie_IVe_compilation #fam-Tardif_non_Metz #fam-Mixte"
                  >Il relaissa quanques si ancisseur avoient ajousté as treus et as coustumes. Il
                  releva moult de cites malmises. Et quant li enfant des povres gens estoient ne par
                  mi Ytaile il les commandoit à nourrir au frait du commun. Il fist par ban rapieler
                  tous chiaus ke Domiciiens avoit envoiie en escil. Et pour chou sains Jehans
                  repaira à Efese de l’isle de Palmos là où Domiciiens l’avoit enuoiie en escil si
                  com nous avons dit desus.</lem>
               <rdg wit="#A2" ana="#lvl-macro #fam-Remanie_Manuel #fam-Unique #dx-manuel #dx-macro-ampl-editorial">Ce Nerva fut
                  debonnaire. Il fist ung commandement qu'il rapella tous ceuly que Dommicien avoit
                  envoiet en exil et rapeééa tout ses fais et condempna dont Saint Jehan
                  Vennangeliste de ceste grenerale sentence fuz ramenes en la cité d'Epheson. Cel
                  empereur ama moult le chose publicque, pour lequelle chose, aprés sa mort, par
                  l'ordonnance des senateurs, il fut translates avec les dieux.</rdg>
            </app>
            <app type="#op-macro-transpo">
               <lem xml:id="mv01" wit="#C #B1 #B7 B4 #Ars4 #B5 #P12 #Val3 #B3"
                  ana="#lvl-macro #fam-Abrege #fam-Bourguignon_XVe #fam-Metz_B #fam-Nord_Cambrai_ancien #fam-Remanie_IVe_compilation #fam-Tardif_non_Metz #fam-Mixte"
                  >Quant Nerva ot regné .i. an .iiii. moys et .vii. jours il morut par fievre par
                  grant d’estempranche de ireur ki le prist le .lxxi. an de son eage l’an de
                  l’incarnation nostre signeur .c.</lem>
               <rdg wit="#A2" ana="#lvl-macro #fam-Remanie_Manuel #fam-Unique #dx-manuel"/>
            </app> Ses cors fu ensevelis ou sepulchre Cesar Auguste. </p>
```


### 5.4. Réorientation thématique (portée équivalente, intention textuelle différente)

La réorientation thématique correspond à une transformation affectant l’orientation discursive d’un segment textuel sans modification nécessaire de son étendue. Les témoins conservent ici un locus de variation de portée comparable, mais proposent des développements qui traduisent des inflexions interprétatives distinctes de l’_intentio textus_.

Dans l’exemple suivant, les deux leçons occupent une position textuelle équivalente, mais témoignent d’une divergence dans la construction du discours : l’une relève d’une reorientation idéologique, tandis que l’autre s’inscrit dans une logique de réorganisation encyclopédique du matériau historiographique. Les attributs `@ana` permettent de rendre explicites à la fois le niveau de variation (`#lvl-macro`), l’appartenance familiale et les motivations interprétatives associées à chaque leçon.

```xml
<app xml:id="mv005" type="op-macro_reorientation">
  <rdg wit="#B1 #B7"
       ana="#lvl-macro #fam-Nord_Cambrai_ancien #fam-Unique #mot-herméneutique">
    (Eusèbe sur le châtiment divin)
  </rdg>
  <rdg wit="#A2"
       ana="#lvl-macro #fam-Remanie_Manuel #fam-Unique #mot-encyclopédique #dx-manuel">
    (Trois tirans intra muros)
  </rdg>
</app>
```

### 5.5. Ajout de titres ou de rubriques

Certains témoins présentent des interventions de nature paratextuelle, notamment sous la forme de titres ou de rubriques destinés à structurer la lecture ou à expliciter l’organisation du contenu. Ces éléments relèvent d’une macro-variation dans la mesure où ils introduisent une segmentation interprétative du texte qui n’est pas attestée dans l’ensemble de la tradition.

Dans l’exemple ci-dessous, le témoin B4 présente un titre structurant absent des autres témoins. Le locus de variation est encodé au moyen d’un élément `<app>` inclus dans `<fw>`, conformément aux recommandations de la TEI pour le traitement des éléments de paratexte. La leçon attestée dans B4 est qualifiée par l’attribut `@ana`, qui précise le niveau macro (`#lvl-macro`), l’appartenance familiale (`#fam-Remanie_IVe_compilation`) ainsi que le diagnostic indiquant une structuration par titres (`#dx-structure_titres`).

```xml
<fw>
  <app type="op-macro_add">
    <lem wit="#C #B1 #B7 #P12"/>
    <rdg wit="#B4"
         ana="#lvl-macro #fam-Remanie_IVe_compilation #fam-Unique #dx-structure_titres">
      Comment l'empereur Vaspasien fut guerit
    </rdg>
  </app>
</fw>
```

### 5.6. Variante imbriquée dans un macro-bloc

Certains phénomènes de macro-variation peuvent contenir, à un niveau de granularité plus fin, des variations localisées affectant la forme linguistique du texte. L’encodage prévoit explicitement cette possibilité en autorisant l’imbrication d’éléments `<app>` de niveau micro (`#lvl-micro`) à l’intérieur d’un locus de macro-variation (`#lvl-macro`).

Dans l’exemple ci-dessous, le segment correspondant à une réorientation macrotextuelle contient plusieurs phénomènes de micro-variation affectant des unités lexicales ou morphosyntaxiques précises. Ces variations locales sont encodées au moyen d’éléments `<app>` imbriqués, caractérisés par des opérations de type `op-om` (omission ponctuelle) et `op-lexsem` (variation lexico-sémantique). L’architecture de l’encodage permet ainsi de maintenir une hiérarchie explicite entre les phénomènes de variation, en distinguant la transformation affectant la structure du segment textuel et les modifications intervenant au niveau local.

```xml
<app xml:id="mv006" type="op-macro_reorientation">
  <rdg wit="#B1 #B7" ana="#lvl-macro #fam-Nord_Cambrai_ancien #fam-Unique">
    Mais tant vous di que toutes manières de tourmens etc.
    <app type="op-om">
      <rdg wit="#B7" ana="#lvl-micro #op-om"/>
      <rdg wit="#B1" ana="#lvl-micro #op-om">ne </rdg>
    </app>
    nulle chose n'estoit remese…
    <app type="op-semlex">
      <rdg wit="#B7" ana="#lvl-micro #op-semlex">acheteurs</rdg>
      <rdg wit="#B1" ana="#lvl-micro #op-semlex">marcéens</rdg>
    </app>
  </rdg>
  <rdg wit="#A2" ana="#lvl-macro #fam-Remanie_Manuel #fam-Unique #dx-manuel"/>
</app>
```

---

## 6. Chevauchements structurels non hiérarchisables

Dans certains cas, les phénomènes de variation présentent des portées qui ne peuvent être représentées au moyen d’une simple imbrication d’éléments `<app>`. Lorsque les segments concernés se recoupent de manière partielle ou que leur articulation ne peut être décrite selon une structure strictement arborescente, l’encodage _inline_ devient insuffisant.

Dans ce type de configuration, le protocole prévoit le recours à un balisage _stand-off_, permettant de décrire la portée d’un phénomène de variation indépendamment de la structure linéaire du texte. Des points d’ancrage (`<anchor>`) sont placés dans le flux textuel afin de délimiter les bornes du segment concerné, tandis que l’élément `<span>` (regroupé au sein d’un `<spanGrp>`) permet de qualifier la nature de la variation au moyen des attributs analytiques habituels (`@ana`, `@resp`, `@source`).

```xml
<anchor xml:id="s1"/><!-- texte --><anchor xml:id="s2"/>
<spanGrp type="macro-variance">
  <span xml:id="mv007" de="#s1" à="#s2"
        ana="#lvl-macro #op-macro_add #fam-Remanie_Manuel #dx-manuel"
        resp="#r-remanieur" source="#src-ManuelPhilippeVI"/>
</spanGrp>
```

---

## 7. Intégration de nouveaux témoins

L’intégration d’un nouveau témoin dans le corpus implique une mise à jour conjointe de l’en-tête TEI et de l’apparat critique.

La procédure à suivre est la suivante :

   - Déclaration du sigle dans l’élément `<listWit>` de l’en-tête TEI, en indiquant l’identifiant du témoin (`@xml:id`) ainsi que sa localisation matérielle ;
    - Attribution à une famille textuelle, au moyen de l’attribut `@ana` (`#fam-*`). Si le témoin ne peut être rattaché à aucune famille existante, une nouvelle catégorie est déclarée dans la taxonomie correspondante (`<encodingDesc>`/`<classDecl>`/`<taxonomy>`), de manière à maintenir la cohérence de la structuration stemmatique ;
   - Mise à jour de l’apparat critique, par l’ajout du témoin dans l’attribut `@wit` des leçons concernées, ainsi que par l’actualisation des valeurs de `@ana` afin d’intégrer l’identifiant familial approprié.

Lorsque l’analyse met en évidence un phénomène de remaniement présentant des caractéristiques spécifiques, une nouvelle catégorie de diagnostic (`dx-*`) peut être définie. De même, si la variation semble répondre à une logique identifiable (par exemple compilatoire), une catégorie de motivation (`mot-*`) peut être ajoutée à la taxonomie afin de rendre explicite l’interprétation critique proposée.

## 8. Bonnes pratiques d'édition
Les principes suivants visent à garantir la cohérence de l’encodage, la lisibilité de l’apparat critique et la réutilisabilité des données produites.

- **Délimitation systématique des unités macrotextuelles**
   - Les bornes correspondant aux phénomènes de macro-variation doivent être explicitement identifiées, même lorsque l’analyse détaillée de la micro-variation interne n’est pas encore réalisée. L’encodage des unités de covariance constitue en effet une condition préalable à toute analyse structurée de la variation.
- **Principe d’économie dans l’annotation microtextuelle**
   - L’imbrication d’éléments `<app>` de niveau micro- ne doit être mise en œuvre que lorsque les phénomènes observés présentent un intérêt analytique réel, par exemple lorsqu’ils permettent d’identifie des indices pertinents pour l’étude de la tradition textuelle.
- **Explicitation de la responsabilité critique**
   - Les attributs `@resp` et `@source` sont utilisés lorsque l’encodage implique une interprétation portant sur l’origine ou la motivation d’une transformation textuelle. Ce principe vise à rendre explicite la part d’analyse critique engagée dans la modélisation des variantes.
- **Usage contrôlé des diagnostics (dx-*)**
   - Les diagnostics sont identifiés par le préfixe `dx-`, correspondant à des catégories déclarées dans la taxonomie du document TEI. Ce dispositif permet d’effectuer des requêtes ciblées sur des phénomènes spécifiques (par exemple la structuration par titres dans certains témoins ou la présence de traits associés à une tradition donnée).
- **Statut du texte pivot**
   - Le texte de base utilisé pour l’alignement ne possède pas de statut éditorial privilégié. Il constitue uniquement un point d’ancrage technique permettant de stabiliser la segmentation et de faciliter la comparaison entre témoins. L’encodage ne présuppose donc aucune hiérarchie entre les états textuels transmis par la tradition manuscrite.

## 9. Conclusion

Le protocole proposé vise à rendre les phénomènes de macro-variation formalisables et exploitables analytiquement, sans renoncer à la précision requise pour la description de variation localisée. Il repose sur une articulation entre modélisation philologique et structuration des données, permettant à la fois la lisibilité critique de l’encodage et son exploitation dans des environnements numériques.

L’architecture du modèle s’organise autour de trois principes fondamentaux :

1. **Déclaration explicite des catégories analytiques**
Les différents niveaux d’analyse (niveaux de variation, opérations textuelles, diagnostics, motivations, familles de témoins) sont définis dans des taxonomies formalisées dans l’en-tête TEI, garantissant la cohérence conceptuelle et la stabilité des catégories utilisées.
2. **Annotation homogène des leçons**
Les propriétés analytiques sont portées par l’attribut `@ana`, conformément aux recommandations de la TEI. Ce choix favorise l’interopérabilité des données.
3. **Formalisation de schémas d’encodage récurrents**
Les principaux types d’opérations macrotextuelles (ajout, omission, transposition, réorientation) sont décrits au moyen de patrons d’encodage cohérents, permettant l’articulation entre macro-variation et micro-variation grâce à un principe d’imbrication contrôlée.

Ce cadre méthodologique a vocation à être affiné et étendu au fur et à mesure de l’étude de la tradition manuscrite. Il constitue une proposition de formalisation susceptible d’être adaptée à d’autres corpus présentant des phénomènes similaires de variation textuelle.

---

# Résolution des chevauchements d’annotation en TEI P5

L’encodage de traditions textuelles caractérisées par une forte densité de variation pose souvent un problème formel : certains phénomènes ne peuvent être représentés au moyen d’une structure hiérarchique strictement arborescente, telle qu’imposée par le modèle XML. Ce problème se présente lorsque plusieurs phénomènes affectent des segments dont les portées se recoupent partiellement sans être mutuellement incluses.

Du point de vue numérique, ces situations correspondent à des structures non strictement hiérarchiques, incompatibles avec le modèle OHCO qui sous-tend la plupart des schémas XML. Dans un contexte d’édition critique, ces configurations surviennent notamment lorsqu’un segment interpolé déborde les limites d’un locus de micro-variation, lorsqu’une transposition affecte un bloc déjà abrégé, ou lorsqu’un remaniement franchit les frontières d’unités structurelles telles que `<p>` ou `<fw>`. Les phénomènes textuels définissent alors des portées concurrentes, dont la représentation nécessite un dispositif distinct de l’imbrication _inline_.

L’objectif de cette section est de formaliser une procédure opératoire permettant de traiter ces configurations tout en conservant la validité formelle du document TEI et la lisibilité analytique de l’encodage. La solution retenue repose sur une dissociation entre structure textuelle et structure analytique, obtenue au moyen d’un balisage _stand-off_. Celui-ci mobilise principalement :

   - des points d’ancrage (`<anchor>`), qui définissent des positions dans le flux textuel ;
   - des structures d’extension (`<spanGrp>`/`<span>`), qui permettent d’associer des propriétés analytiques à des segments définis indépendamment de la hiérarchie XML ;
   - des relations explicites (`<linkGrp>`/`<link>`), utilisées lorsque plusieurs segments doivent être mis en correspondance ;
   - des mécanismes de jonction (`<joinGrp>`/`<join>`), permettant de reconstituer des unités analytiques discontinues.

Ce encodage permet de représenter des structures concurrentes sans altérer la cohérence du modèle de données. La décision de recourir à une représentation mixte relève d’un arbitrage méthodologique fondé sur les contraintes du modèle XML.

## 1. Origine des chevauchements

Le modèle hiérarchique du XML impose une structuration strictement arborescente des éléments : les unités d’annotation doivent être entièrement imbriquées les unes dans les autres, sans croisement de bornes. Autrement dit, un élément ne peut pas s’ouvrir à l’intérieur d’un autre élément puis se refermer à l’extérieur de celui-ci. Cette contrainte formelle correspond au modèle _Ordered Hierarchy of Content Objects_ (OHCO), sur lequel repose la TEI.

Or, l’observation des traditions manuscrites médiévales met en évidence des configurations dans lesquelles les phénomènes de variation définissent des portées qui ne correspondent pas nécessairement à une hiérarchie strictement emboîtable. Par exemple, une transposition peut recouvrir partiellement un segment correspondant par ailleurs à un ajout ou à un abrègement ; certains phénomènes peuvent présenter une structure discontinue, ou affecter des segments qui traversent les unités textuelles définies par l’encodage structurel.

Dans de telles configurations, les portées analytiques définies par les phénomènes textuels ne coïncident pas nécessairement avec les contraintes de structuration du XML. Il en résulte des situations de chevauchement de portées, qui nécessitent l’adoption de stratégies d’encodage adaptées afin de préserver à la fois la validité formelle du document et l’explicitation critique des phénomènes observés.

## 2. Principe de résolution

Dans un premier temps, la résolution des phénomènes de variation repose sur le principe d’imbrication hiérarchique, conforme au modèle XML. Lorsque les portées des phénomènes sont compatibles entre elles, l’encodage inline demeure la solution privilégiée, car il conserve une relation directe entre structure textuelle et structure analytique.

Dans les cas les plus simples, les loci de variation peuvent être représentés par des éléments `<app>` imbriqués. La distinction entre macro- et micro-variation peut ainsi être modélisée par une hiérarchisation explicite des éléments d'apparat, les phénomènes de niveau inférieur étant encodés à l’intérieur d’un locus de portée plus large.

En particulier, lorsqu’une variation locale n’affecte qu’une seule branche issue d’un locus de macro-variation, elle est encodée à l’intérieur de la leçon concernée (`<lem>` ou `<rdg>`). Cette structuration permet de maintenir une correspondance étroite entre l’organisation de l’appareil critique et la distribution effective des variantes dans la tradition : 

```xml
<app type="#op-macro">
  <lem wit="#A #B">
    <app type="op-semlex">
      <lem wit="#A"><!-- texte --></lem>
      <rdg wit="#B"><!-- texte --></rdg>
    </app>
  </lem>
  <rdg wit="#C"><!-- texte --></rdg>
   <!-- -->
</app>
```
Dans ce contexte, l’usage de `<rdgGrp>` peut permettre de factoriser certaines propriétés communes à plusieurs leçons, mais il ne permet pas de représenter des relations hiérarchiques fines entre phénomènes de variation. L’imbrication contrôlée des éléments <app> constitue donc la solution la plus précise lorsque la structure de la tradition permet une représentation arborescente. Ce n’est que lorsque les portées définies par les phénomènes de variation ne peuvent être représentées par une imbrication valide que le protocole recourt à une dissociation entre structure textuelle et structure analytique.

Dans les autres cas, le protocole consiste à dissocier la représentation du phénomène de son inscription dans le flux textuel. La solution recommandée par la TEI P5 repose sur un encodage stand-off, qui permet de décrire l’étendue d’un phénomène indépendamment de la structure inline du texte. La procédure se déroule en deux étapes :

1. **Délimitation des bornes du segment** Des points d’ancrage sont placés dans le flux textuel au moyen d’éléments `<anchor xml:id=""/>`, correspondant aux positions de début et de fin du phénomène observé.
2. **Déclaration du phénomène dans une structure autonome** Le phénomène est ensuite décrit dans un élément `<spanGrp>` contenant un ou plusieurs éléments `<span>`, dont les attributs @from et @to renvoient aux ancres correspondantes.

Les éléments `<span>` définissent ainsi des portées analytiques indépendantes de la hiérarchie inline. Plusieurs phénomènes peuvent être superposés, y compris lorsque leurs étendues se recouvrent partiellement.

## 3. Procédure opératoire

### 3.1. Cas hiérarchique

Lorsque les phénomènes de variation présentent des portées compatibles avec une structuration hiérarchique, l'imbrication demeure la solution privilégiée. Un locus de micro-variation entièrement inclus dans un segment affecté par une macro-variation est encodé par imbrication d’un élément `<app>` de niveau inférieur à l’intérieur de la leçon concernée (`<lem>` ou `<rdg>`) :

```xml
<app type="macro:reorientation" ana="#lvl-macro #op-macro_reorientation">
  <rdg wit="#B7 #B1">
    Mais tant vous di
    <app type="semlex" ana="#lvl-micro #op-semlex">
      <rdg wit="#B7">achateurs</rdg>
      <rdg wit="#B1">marceans</rdg>
    </app>
    …
  </rdg>
  <rdg wit="#A2"> <!-- --> </rdg>
</app>
```

### 3.2. Cas de portées concurrentes

Lorsque deux phénomènes définissent des portées partiellement superposées sans relation d’inclusion, leur représentation par imbrication devient impossible sans produire une structure XML invalide. Dans ce cas, le protocole prévoit de dissocier la portée analytique du phénomène de sa position dans le flux textuel.

**Insertion des bornes dans le flux textuel :**

```xml
Nule chose n’estoit remese
<anchor xml:id="a2_add_deb"/>
 (long passage ajouté par A2)
<anchor xml:id="a2_add_fin"/>
 Et dist Eusebes que
```

**Déclaration du phénomène hors flux :**

```xml
<spanGrp type="macro-variance">
  <span xml:id="mv_add_A2"
        from="#a2_add_deb"
        to="#a2_add_fin"
        ana="#lvl-macro #op-macro_add #fam-Remanie_Manuel #dx-manuel"
        resp="#r-remanieur"
        source="#src-ManuelPhilippeVI"/>
</spanGrp>
```

Ce dispositif permet de superposer plusieurs couches d’annotation sans modifier l’organisation hiérarchique du texte.

## 4. Configurations récurrentes et modalités d’implémentation

Les cas de chevauchement les plus fréquents correspondent à des configurations dans lesquelles plusieurs phénomènes définissent des portées concurrentes, discontinues ou transversales par rapport à la structure du texte. Les exemples suivants illustrent des situations typiques et les solutions d’encodage correspondantes.

### 4.1. Recouvrement partiel de deux macro-phénomènes

Deux phénomènes de macro-variation peuvent définir des portées partiellement superposées sans relation d’inclusion stricte. Dans l’exemple suivant, le témoin A2 présente un ajout couvrant un segment s1–s5, tandis que B4 propose une transposition affectant un segment s3–s7. La zone s3–s5 correspond ainsi à une portion commune aux deux phénomènes.

Les bornes des segments sont matérialisées par des ancres positionnées dans les zones textuelles stables. Les phénomènes sont ensuite décrits indépendamment dans un `<spanGrp>` :

```xml
<!-- ancres posées où le texte est stable -->
<anchor xml:id="s1"/><anchor xml:id="s3"/><anchor xml:id="s5"/><anchor xml:id="s7"/>

<spanGrp type="macro-variance">
  <span xml:id="mv_add_A2"
        from="#s1" to="#s5"
        ana="#lvl-macro #op-macro_add #fam-Remanie_Manuel #dx-manuel"/>
  <span xml:id="mv_transpo_B4"
        from="#s3" to="#s7"
        ana="#lvl-macro #op-macro_transpo #fam-Remanie_IVe_compilation #dx-structure_titres"/>
</spanGrp>
```

Les deux éléments `<span>` se recouvrent partiellement (s3–s5) sans compromettre la validité du document. La relation entre les segments transposés peut être explicitée au moyen d’un élément `<linkGrp>` :


```xml
<linkGrp type="transposition">
  <link targets="#mv_transpo_B4" ana="#op-macro_transpo"/>
</linkGrp>
```

Lorsque la transposition implique plusieurs segments distincts, ceux-ci peuvent être représentés par des éléments `<span>` séparés, liés entre eux par un même `<link>` au moyen de l’attribut `@targets`.

---

### 4.2. Phénomène **discontinu**

Certains réagencements se manifestent en plusieurs points distincts du texte, sans constituer un segment continu. C’est notamment le cas de certaines abréviations ou condensations qui interviennent à différents endroits d’un même épisode.

Chaque occurrence est encodée au moyen d’un élément `<span>` distinct, correspondant à une paire d’ancres. L’appartenance à un même phénomène peut être explicitée par un regroupement logique au moyen d’un `<joinGrp>`.

```xml
<anchor xml:id="d1"/><anchor xml:id="d2"/>
<anchor xml:id="e3"/><anchor xml:id="e4"/>

<spanGrp type="macro-variance">
  <span xml:id="abr1" from="#d1" to="#d2"
        ana="#lvl-macro #op-macro_abreviation #fam-Abrege"/>
  <span xml:id="abr2" from="#e3" to="#e4"
        ana="#lvl-macro #op-macro_abreviation #fam-Abrege"/>
</spanGrp>

<!-- logique de regroupement -->
<joinGrp type="macro-episode">
  <join result="#abr_final" targets="#abr1 #abr2"/>
</joinGrp>
```

---

### 4.3. Portée traversant la structure textuelle

Certains phénomènes peuvent franchir les limites d’unités structurales telles que `<fw>`, `<p>` ou `<div>`. Dans ce cas, les ancres sont positionnées aux points de transition entre les unités structurelles, tandis que la portée du phénomène est définie dans un élément `<span>`.

```xml
<fw>Comment Tytus <!-- --> </fw><anchor xml:id="mv_deb"/>
<p><anchor xml:id="mv_fin"/>Tytus, qui demourés estoit <!-- --> </p>

<spanGrp type="macro-variance">
  <span from="#mv_deb" to="#mv_fin"
        ana="#lvl-macro #op-macro_reorientation #fam-Nord_Cambrai_ancien"/>
</spanGrp>
```

---

## 5. Articulation entre structures de variation et leçons

Le protocole distingue deux niveaux complémentaires de représentation : d’une part, l’encodage parallèle des leçons individuelles, et d’autre part, la représentation discontinue des phénomènes dont la portée excède les possibilités de représentation hiérarchique.

Les leçons (`<lem>`, `<rdg>`) constituent les unités textuelles minimales de l’appareil critique. Lorsqu’un phénomène de variation peut être représenté par une structure hiérarchique valide, les propriétés analytiques correspondantes sont portées directement par les éléments inline au moyen de l’attribut `@ana`. Ce principe s’applique aussi bien aux phénomènes de micro-variation qu’aux macro-variantes.

Lorsque l’étendue d’un phénomène ne peut être représentée par une structure inline sans produire de chevauchement de balises, la portée analytique est décrite au moyen d’un élément `<span>` associé à des ancres. Le phénomène est alors modélisé indépendamment de la hiérarchie du texte, tout en restant référencé par des identifiants stables. Un même segment textuel peut ainsi appartenir simultanément à plusieurs structures analytiques : il peut être inclus dans plusieurs éléments `<app>` correspondant à des loci de variation distincts, tout en étant également couvert par une ou plusieurs portées définies.

---

## 6. Exemples

### 6.1. Déclaration dans l'en-tête TEI

```xml
<encodingDesc>
  <classDecl>
    <taxonomy xml:id="niveaux">
      <category xml:id="lvl-macro"><catDesc>macro-variance</catDesc></category>
      <category xml:id="lvl-micro"><catDesc>micro-variance</catDesc></category>
    </taxonomy>
    <taxonomy xml:id="opérations">
      <category xml:id="op-macro_add"><catDesc>addition macro</catDesc></category>
      <category xml:id="op-macro_om"><catDesc>omission macro</catDesc></category>
      <category xml:id="op-macro_transpo"><catDesc>transposition macro</catDesc></category>
      <category xml:id="op-semlex"><catDesc>variantes sémantique lexicale</catDesc></category>
      <!-- etc. -->
    </taxonomy>
    <taxonomy xml:id="familles">
      <category xml:id="fam-Remanie_Manuel"><catDesc>Remanié Manuel</catDesc></category>
      <category xml:id="fam-Remanie_IVe_compilation"><catDesc>Remanié, IVe s.</catDesc></category>
      <category xml:id="fam-Metz_B"><catDesc>Metz, rédaction B</catDesc></category>
      <category xml:id="fam-Nord_Cambrai_ancien"><catDesc>Nord Cambrai ancien</catDesc></category>
      <category xml:id="fam-Abrege"><catDesc>Abrégé</catDesc></category>
      <!-- etc. -->
    </taxonomy>
    <taxonomy xml:id="diagnostique">
      <category xml:id="dx-manuel"><catDesc><!-- --></catDesc></category>
      <category xml:id="dx-structure_titres"><catDesc><!-- --></catDesc></category>
      <!-- etc. -->
    </taxonomy>
  </classDecl>
</encodingDesc>
```

### 6.2. Encodage discontinu

```xml
<spanGrp type="macro-variance" xml:id="mv">
  <!-- spans déclarés ici -->
</spanGrp>

<linkGrp type="transposition" xml:id="links"/>
<joinGrp type="macro-episode" xml:id="joins"/>
```

---

## 7. Bilan méthodologique

L’approche présentée ici constitue une proposition de modélisation visant à concilier les contraintes formelles de la TEI P5 avec la complexité des phénomènes de variation observés dans les traditions manuscrites à forte instabilité textuelle.

1. **Compatibilité avec le cadre TEI** 
   - L’encodage demeure conforme aux contraintes du XML et aux recommandations de la TEI P5, en évitant le recours à des structures non hiérarchiques non déclarées ou à des extensions ad hoc.
2. **Adéquation descriptive**
   - Le modèle permet de rendre compte de phénomènes de variation de portée différente en articulant plusieurs dimensions analytiques.
3. **Clarté structurelle**
   - Lorsque l’organisation des phénomènes le permet, l’encodage maintient une correspondance directe entre structure textuelle et structure analytique ; lorsque les portées entrent en concurrence, le recours à des structures discontinues spécifiques permet de préserver la lisibilité de l’ensemble.
4. **Exploitabilité**
   - Les éléments `<span>` définissent des unités analytiques stables susceptibles d’être mobilisées pour l’exploration des configurations de variation, la mise en série des témoins ou l’analyse des relations au sein de la tradition.
5. **Possibilités d’extension**
   - Cette approche peut être adaptée à des phénomènes de portée discontinue, à des configurations impliquant plusieurs segments ou à des structures traversant les unités textuelles conventionnelles.

---

# Tableau de référence TEI (macro-variance & variantes locales)

--- 

Cette section propose un récapitulatif des éléments TEI mobilisés pour l’encodage des phénomènes de variation textuelle, en distinguant trois niveaux d’analyse :

1. les phénomènes de macro-variation, correspondant à des transformations affectant des segments étendus du texte ;
2. les phénomènes de micro-variation, relevant d’altérations localisées ;
3. les structures d’encodage discontinues, utilisées pour représenter des portées analytiques concurrentes ou superposées.

La section recense également les principaux attributs utilisés dans ce cadre, ainsi que les valeurs contrôlées qui leur sont associées, telles qu’elles sont déclarées dans le `<teiHeader>`.

---

## 1. Niveaux, familles, diagnostics, motifs

| Type d’information | Élément/attribut | Valeurs possibles |
|--------------------|------------------|-------------------|
| Niveau d’annotation | `@ana` sur `<lem>`, `<rdg>`, `<span>` | `#lvl-micro` ou `#lvl-macro` (un seul à la fois) |
| Familles de témoins | `@ana` sur `<lem>`, `<rdg>` | `#fam-Metz_B`, `#fam-Nord_Cambrai_ancien`, `#fam-Remanie_Manuel`, `#fam-Remanie_IVe_compilation`, `#fam-Abrege`, `#fam-Bourguignon_XVe`, `#fam-Tardif_non_Metz`, et les catégories transversales `#fam-Unique`, `#fam-Mixte` |
| Diagnostics utiles | `@ana` sur `<lem>`, `<rdg>`, `<span>` | `#dx-manuel`, `#dx-structure_titres`, `#dx-sansWit` |
| Motifs | `@ana` sur `<lem>`, `<rdg>`, `<span>` | `#mot-encyclopedic`, `#mot-hermeneutic`, `#mot-aesthetic`, `#mot-linguistic` |
| Agent / responsabilité | `@resp` sur `<lem>`, `<rdg>`, `<span>` | identifiants définis dans `<projectDesc>` : `#r-*`, `#r-remanieur`, `#r-copiste` (etc.) |
| Source externe | `@source` sur `<rdg>`, `<span>` | ex. `#src-ManuelPhilippeVI`, `#src-*` |

---

## 2. Phénomènes de macro-variation

### 2.1 Locus

| Élément | Usage | Attribut | Valeurs |
|---------|-------|----------|---------|
| `<app>` | délimitation d’un phénomène supraphrastique | `@type` | `op-macro-add`, `op-macro-om`, `op-macro-transpo`, `op-macro-reorientation`, `op-macro-amplification`, `op-macro-abreviation` |
| `<app>` | identification interne | `@xml:id` | ex. `mv001`, `mv005` |
| `<fw>` + `<app>` | titres/rubriques propres à un témoin (ex. B4) | `@type` (sur `<app>`) | en général `op-macro-add` (titre ajouté) |

### 2.2 Leçons

| Élément | Usage | Attribut | Valeurs & remarques |
|---------|-------|----------|----------------------|
| `<lem>` | lecture de référence dans un app macro | `@wit` | témoins conservateurs, pivot d'alignement |
| `<lem>` | annotation | `@ana` | doit contenir `#lvl-macro` + une ou plusieurs familles ; possibilité d’ajouter `#fam-Unique` / `#fam-Mixte` et un motif |
| `<lem>` | responsabilité | `@resp` (optionnel) | ex. `#r-encoder` |
| `<rdg>` | lecture divergente (macro-ajout, macro-omission, macro-réorientation, transposition) | `@wit` | témoins porteurs de la leçon |
| `<rdg>` | annotation | `@ana` | doit contenir `#lvl-macro` + famille(s) + `#fam-Unique`/`#fam-Mixte` + éventuellement un diagnostic (`#dx-manuel`, `#dx-structure_titres`, `#dx-sansWit`) + éventuellement un motif |
| `<rdg>` | source de l’ajout | `@source` | ex. `#src-ManuelPhilippeVI` |
| `<rdg>` | attribution de l’intervention | `@resp` | ex. `#r-*` |
| `<rdg>` | transposition macro (2 blocs) | `@corresp` | ex. `corresp="#blocB"` pour relier les deux morceaux |

---

## 3. Phénomènes de variation localisée (micro-variation)

On distingue :

1. une **sous-grille de séquence** (présence/absence, permutation) en version **non orientée** et **orientée** ;
2. une **sous-grille de nature linguistique** (graphique, flexionnelle, morphosyntaxique, sémantico-lexicale, faible/forte/nonsense) à l’échelle du mot ou du syntagme.

La présente normalisation fait porter sur `<app>` un `@type` de la forme `op-micro-…`, qui correspond ligne à ligne aux types décrits dans le document.

### 3.1 Séquence – perspective non orientée

| Élément | Attribut | Valeurs normalisées (entête) | Valeurs | Remarques |
|---------|----------|------------------------------|-------------------------------|-----------|
| `<app>` | `@type` | `op-micro-seq-presence` | (pas de préfixe, simple `<app>` avec `<rdg/>` vide) | cas de présence/absence sans interprétation génétique |
| `<rdg>` | `@wit` | liste de témoins | idem | un `<rdg/>` vide signifie segment absent |
| `<rdg>` | `@ana` | `#lvl-micro` + familles | — | permet d’indiquer qu’il s’agit d’une variante locale |

### 3.2 Séquence – perspective orientée

| Élément | Attribut | Valeurs normalisées | Valeurs | Remarques |
|---------|----------|---------------------|-------------------|-----------|
| `<app>` | `@type` | `op-micro-add` | `type="add"` | ajout local, à partir d’un lemme éventuellement vide |
| `<app>` | `@type` | `op-micro-om` | `type="om"` | omission locale |
| `<app>` | `@type` | `op-micro-transpo` | `type="transpo"` | transposition locale |
| `<lem>`/`<rdg>` | `@wit` | témoins | idem |  |
| `<lem>`/`<rdg>` | `@ana` | toujours `#lvl-micro` + familles | — |  |

### 3.3 Séquence – changement d’ordre

| Élément | Attribut | Valeurs | Remarques |
|---------|----------|---------|-----------|
| `<app>` | `@type` | `op-micro-seq-order` | cas cortois / sages |
| `<rdg>` | `@xml:id` | identifiant du premier élément à faire correspondre | ex. `xml:id="1"` |
| `<rdg>` | `@corresp` | référence à l’identifiant de la leçon jumelle | ex. `corresp="#1"` |

---

### 3.4 Nature linguistique – échelle du _token_-mot

| Élément | Attribut | Valeurs normalisées | Valeurs d’origine | Remarques |
|---------|----------|---------------------|-------------------------------|-----------|
| `<app>` | `@type` | `op-micro-graph` | `type="graph"` | variation graphique pure |
| `<app>` | `@type` | `op-micro-flex` | `type="flex"` | variation flexionnelle (désinence, nombre, personne) |
| `<app>` | `@type` | `op-micro-morsynt` | `type="morsynt"` | variation morphosyntaxique (changement de catégorie, temps, personne) |
| `<app>` | `@type` | `op-micro-semlex-minor` | `type="semlex:minor"` | variation sémantico-lexicale **faible** |
| `<app>` | `@type` | `op-micro-semlex-major` | `type="semlex:major"` | variation sémantico-lexicale **forte** |
| `<app>` | `@type` | `op-micro-semlex-nonsens` | `type="semlex:nonsens"` | lecture dépourvue de sens |

#### Sous-typage de la variation sémantico-lexicale

| Élément | Attribut | Valeurs | Signification |
|---------|----------|---------|---------------|
| `<app>` (quand `@type` est de la famille semlex) | `@subtype` | `gramm` | variation sur un grammème (déterminant, pronom, préposition, coordonnant, adverbe grammatical) |
| `<app>` | `@subtype` | `morphconstr` | variation de morphologie constructionnelle (préfixe, suffixe, dérivation, alternance nom/verbe de même base) |
| `<app>` | `@subtype` | `syn` | synonymie ou équivalent référentiel |
| `<app>` | `@subtype` | `rcapcs` | relations cognitives-associatives de proximité / continuité sémantique (hyperonymie, hyponymie, similarité taxinomique, métonymie, etc.) |
| `<rdg>` (cas de nonsense) | `@type` (local, sur la leçon) | `nonsens` | permet de marquer la seule leçon aberrante à l’intérieur d’un app sémantique |

---

### 3.5 Nature linguistique – niveaux supérieurs au token (pluri-mots)

| Élément | Attribut | Valeurs normalisées | Valeurs d’origine (document) | Remarques |
|---------|----------|---------------------|-------------------------------|-----------|
| `<app>` | `@type` | `op-micro-plur-semlex-minor` | `type="plur-semlex:minor"` | variation sémantico-lexicale faible portant sur un syntagme ou une locution |
| `<app>` | `@type` | `op-micro-plur-semlex-major` | `type="plur-semlex:major"` | variation sémantico-lexicale forte portant sur plusieurs mots |
| `<app>` | `@type` | `op-micro-plur-semlex-nonsens` | `type="plur-semlex:nosens"` (typo. dans exemple) | séquence aberrante sur plusieurs mots |
| `<app>` | `@subtype` | mêmes sous-types que ci-dessus (`gramm`, `morphconstr`, `syn`, `rcapcs`) | permet de préciser la nature de la variation sur syntagme |

---

### 3.6 Cas particuliers

| Cas | Élément | Attributs à utiliser |
|-----|---------|----------------------|
| Présence/absence avec lemme vide | `<app>` + `<lem/>` ou `<rdg/>` | `@type="op-micro-add"` ou `op-micro-om` + `@ana="#lvl-micro …"` |
| Variation de noms propres | `<app type="op-micro-semlex-minor">` ou `<app type="op-micro-semlex-major">` | `@subtype="syn"` (si même référent) ou pas (si changement de référent) |
| Dates et nombres | même schéma que semlex (minor/major) | la décision de faible/fort est éditoriale |
| Substitution macro (dans la partie 1.2.4 ?) | se fait en réalité avec le jeu **macro** ci-dessus | donc `@type="op-macro-…"`, pas besoin d’un type micro |

---

## 4. Chevauchements

| Élément | Usage | Attribut | Valeurs |
|---------|-------|----------|---------|
| `<anchor>` | marquer un point stable dans le flux | `@xml:id` | ex. `s1`, `s2`, `mv_deb`, `mv_fin` |
| `<spanGrp>` | regrouper des portées hors flux | `@type` (optionnel) | ex. `macro-variance` |
| `<span>` | définir une portée qui peut se superposer à d’autres | `@xml:id` | identifiant de la portée |
| `<span>` | définir début et fin | `@from`, `@to` | références à des `@xml:id` d’`<anchor>` : `from="#s1" to="#s2"` |
| `<span>` | annotation de la portée | `@ana` | mêmes valeurs que sur un `<rdg>` : `#lvl-macro` + `#op-macro-add` (ou autre) + familles + diagnostics + motifs + agents + src|
| `<span>` | attribution / source | `@resp`, `@source` | ex. `@resp="#r-remanieur"`, `@source="#src-ManuelPhilippeVI"` |
| `<linkGrp>` (document précédent) | lier plusieurs spans dans une même opération (ex. transposition) | `@type` | ex. `type="transposition"` |
| `<link>` | lien entre deux portées transposées | `@targets` | ex. `targets="#mvA #mvB"` |
| `<joinGrp>` | regrouper plusieurs spans discontinus en un épisode | `@type` | ex. `type="macro-episode"` |
| `<join>` | résultat de la jointure | `@targets`, `@result` | ex. `targets="#abr1 #abr2" result="#abr_total"` |

---

## 5. Récapitulatif par perspective

### 5.1 Perspective non orientée

| Niveau | Élément | Attributs obligatoires | Attributs optionnels |
|--------|---------|------------------------|-----------------------|
| Séquence (présence/absence) | `<app type="op-micro-seq-presence">` | `<rdg wit="…">…</rdg>` et `<rdg wit="…"/>` | `@ana="#lvl-micro …"` |
| Séquence (ordre) | `<app type="op-micro-seq-order">` | sur les `<rdg>` : `@xml:id` / `@corresp` | `@ana="#lvl-micro …"` |
| Substitution graphique | `<app type="op-micro-graph">` | `<rdg wit="…">` | `@ana="#lvl-micro …"` |

### 5.2 Perspective orientée

| Niveau | Élément | Attributs obligatoires | Attributs optionnels |
|--------|---------|------------------------|-----------------------|
| Omission | `<app type="op-micro-om">` | `<lem wit="…">…</lem>`, `<rdg wit="…"/>` | `@ana="#lvl-micro …"` |
| Ajout | `<app type="op-micro-add">` | `<lem/>` ou `<lem wit="…"/>`, `<rdg wit="…">…</rdg>` | `@ana="#lvl-micro …"` |
| Transposition | `<app type="op-micro-transpo">` | `@xml:id` / `@corresp` sur les leçons | `@ana="#lvl-micro …"` |

---

## 6. Principes de combinaison des catégories analytiques

L’articulation des différentes dimensions de l’annotation repose sur une répartition cohérente des catégories entre locus de variation, leçons individuelles et structures discontinues :

1. **Niveau de variation** :
   - Le niveau d'analyse est indiqué au moyen des catégories `#lvl-micro` ou `#lvl-macro`. Cette information est portée par les leçons (`<lem>`, `<rdg>`) ainsi que, le cas échéant, par les éléments `<span>`.
2. **Définition du locus de variation** :
   - La nature opératoire du phénomène est spécifiée au niveau du locus (`<app>`) par l’attribut `@type`, dont les valeurs relèvent des séries `op-macro-*` ou `op-micro-*`. Ce niveau correspond à la qualification structurale du phénomène observé.
6. **Nature linguistique des micro-variantes** :
   - Les phénomènes de micro-variation sont décrits par des valeurs contrôlées de `@type` appartenant à la série `op-micro-*`, permettant de distinguer notamment les variations graphiques, flexionnelles, morphosyntaxiques ou lexico-sémantiques, ces dernières pouvant être précisées selon leur degré d’écart interprétatif (`weak`, `strong`, `nonsens`).
7. **Spécification des sous-types** :
   - Des catégories complémentaires peuvent être utilisées pour préciser certains phénomènes relevant de la variation lexico-sémantique, notamment lorsque des distinctions plus fines apparaissent pertinentes pour l’analyse (par ex., `grammeme`, `morpholex`, `rcapcs`, etc.).
8. **Attribution des familles textuelles** :
   - L’appartenance familiale (`#fam-*`) est toujours indiquée au niveau des leçons (`<lem>`, `<rdg>`), et non au niveau du locus (`<app>`).
9. **Usage des diagnostics** :
   - Les diagnostics complètent l’information portée par `@type` sans la redoubler. Ils permettent notamment d’identifier des comportements collectifs propres à certains groupes de témoins (par exemple `#dx-manuel`, `#dx-structure_titres`) ou de signaler des configurations éditoriales particulières.

---

| Catégorie                                     | Diagnostic (`@ana`)                     | Description (`<catDesc>`)                                                                                      | `@type` d’`<app>` le plus pertinent                                                         |
| --------------------------------------------- | --------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| 1. Portée ou position                          | `#dx-macro-continuation-aval`           | continuation ou ajout d’années ou d’épisodes postérieurs au pivot, fin de chronique prolongée                                          | `op-macro-add`                                                                              |
| 1. Portée ou position                          | `#dx-macro-continuation-amont`          | préambule, prologue, historique préalable ajouté en tête                                                                              | `op-macro-add`                                                                              |
| 1. Portée ou position                          | `#dx-macro-interpolation-source`        | segment ajouté depuis une source externe identifiée (Manuel de Philippe VI, Primat…), rend visible l’intertextualité                  | `op-macro-add` (parfois `op-macro-reorientation` si la source modifie l’angle)              |
| 1. Portée ou position                          | `#dx-macro-montage-compilation`         | cas de compilation, phagocytation au sens Varvaro : un texte en aval en englobe un autre pour faire un _continuum_                     | `op-macro-add`, `op-macro-amplification`                                                    |
| 1. Portée ou position                          | `#dx-macro-segment-internal`            | macro-variance située au cœur de la séquence chronologique, utile pour les unités de covariance centrales                           | `op-macro-add`, `op-macro-om`, `op-macro-reorientation`                                     |
| 2. Réorientation de l’_intentio_                | `#dx-macro-reorient-historiographique`  | même segment historique mais relecture historiographique différente (ex. siège de Jérusalem (DDT) : lecture apologétique vs événementielle) | `op-macro-reorientation`, parfois `op-macro-add`                                            |
| 2. Réorientation de l’_intentio_                | `#dx-macro-reorient-ideologique`        | adaptation au cadre politique, identitaire d’un commanditaire, gommage ou amplification d’épisodes sensibles                         | `op-macro-reorientation`, `op-macro-om`, parfois `op-macro-add`                             |
| 2. Réorientation de l’_intentio_                | `#dx-macro-actu-chronologique`          | mise à jour, on ajoute ce qu’on vient d’apprendre                      | `op-macro-add`                                                                              |
| 2. Réorientation de l’_intentio_                | `#dx-macro-adaptation-usage`            | réécriture pour changer la fonction (guide, mémoire, outil pédagogique, version abrégée “pour l’usage”)                               | `op-macro-abreviation`, `op-macro-amplification`, parfois `op-macro-reorientation`          |
| 2. Réorientation de l’_intentio_                | `#dx-macro-clarification-hermeneutique` | réécriture pour rendre plus clair ou plus accessible à un nouveau public (motivation herméneutique)                                    | `op-macro-reorientation`, `op-macro-amplification`                                          |
| 3. Genèse ou motivation (intent)                | `#dx-macro-mise-a-niveau-encycl`        | enrichissement encyclopédique pour densifier le savoir sans nécessairement changer la ligne idéologique                            | `op-macro-add`, `op-macro-amplification`                                                    |
| 3. Genèse ou motivation (intent)                | `#dx-macro-norm-ling`                   | macro-réécriture motivée par une normalisation linguistique (diatopique)                                                              | `op-macro-reorientation`, parfois `op-macro-amplification`                                  |
| 3. Genèse ou motivation (intent)                | `#dx-macro-styl-esthetique`             | remaniement pour convenance stylistique, goût, conformité de genre, etc.                                                                    | `op-macro-reorientation`, `op-macro-amplification`                                          |
| 3. Genèse ou motivation (intent)                | `#dx-macro-cadre-inst`                  | macro-changement dû à un autre cadre de production (monastique vs extra-monastique, dionysien vs laïc, etc.)                                | `op-macro-reorientation`, parfois `op-macro-add`                                            |
| 3. Genèse ou motivation (intent)                | `#dx-macro-tard`                        | intervention tardive identifiée dans la chaîne de transmission, mais de portée macro                                                  | n’importe lequel selon le cas (`op-macro-add` / `om` / `reorientation`)                     |
| 4. Transmission, matérialité, structuration | `#dx-macro-domm-modele`                 | macro-variance “subie” (contrainte ou forcée ?) parce que le modèle était endommagé ou lacunaire                                                                | `op-macro-om` (souvent), parfois `op-macro-reorientation` pour réécrire le passage manquant |
| 4. Transmission, matérialité, structuration | `#dx-macro-abrg-editorial`              | abréviation, condensation éditoriale consciente, pas simple perte matérielle                                                         | `op-macro-abreviation`                                                                      |
| 4. Transmission, matérialité, structuration | `#dx-macro-ampl-editorial`              | développement éditorial volontaire pour contextualiser, harmoniser, lisser                                                          | `op-macro-amplification`                                                                    |
| 4. Transmission, matérialité, structuration | `#dx-macro-struct-align`                | réordonnancement de blocs pour aligner la structure avec une autre tradition                                      | `op-macro-transpo`, parfois `op-macro-reorientation`                                        |
| 4. Transmission, matérialité,structuration | `#dx-macro-front-txt`                   | variance qui signale une frontière textuelle mouvante (enchaînement de chroniques, versions hybrides, texte phagocyté)                | `op-macro-add`, `op-macro-transpo`, parfois `op-macro-reorientation`                        |
| (générique)                           | `#dx-manuel`                            | cas signalé comme lié à un remaniement d'après source connue  | à combiner avec le `op-macro-*` en cause                                                    |
| (générique)                           | `#dx-structure_titres`                  | titres / rubriques / fw propres à un rameau                                                                                           | surtout `op-macro-add` (titres ajoutés)                                                     |
| (générique)                           | `#dx-sansWit`                           | cas éditorial sans témoin clair, leçon suspendue                                                                                      | à combiner avec le `op-macro-*` en cause                                                    |
| (générique)                           | `#dx-macro-add`                           | ajout                                                                                      | à combiner avec le `op-macro-add`, `op-macro-reorientation`, `op-macro-amplification`                                                     |
| (générique)                           | `#dx-macro-om`                           | ajout                                                                                      | à combiner avec le `op-macro-om`, `op-macro-reorientation`, `op-macro-abreviation`                                                     |

