<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xml="http://www.w3.org/XML/1998/namespace"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="tei xs">
    
    <!-- mapping témoins & familles -->
    <xsl:param name="family-Metz_B"                   select="'P12'"/>
    <xsl:param name="family-Nord_Cambrai_ancien"      select="'C B7 B1'"/>
    <xsl:param name="family-Remanie_Manuel"           select="'A2'"/>
    <xsl:param name="family-Remanie_IVe_compilation"  select="'B4'"/>
    <xsl:param name="family-Abrege"                   select="'B5'"/>
    <xsl:param name="family-Bourguignon_XVe"          select="'Ars4'"/>
    <xsl:param name="family-Tardif_non_Metz"          select="'Val3 B3'"/>
    
    <xsl:variable name="families"
        select="('Metz_B','Nord_Cambrai_ancien','Remanie_Manuel',
        'Remanie_IVe_compilation','Abrege','Bourguignon_XVe','Tardif_non_Metz')"/>
    
    <!-- identité (XSLT 2.0) -->
    <xsl:template match="@*|node()">
        <xsl:copy><xsl:apply-templates select="@*|node()"/></xsl:copy>
    </xsl:template>
    
    <!-- teiHeader -->
    <xsl:template match="tei:teiHeader">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
            <xsl:if test="not(tei:encodingDesc)">
                <encodingDesc xmlns="http://www.tei-c.org/ns/1.0"><classDecl/></encodingDesc>
            </xsl:if>
        </xsl:copy>
    </xsl:template>
    
    <!-- classDecl + taxonomies -->
    <xsl:template match="tei:classDecl">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
            <xsl:if test="not(tei:taxonomy[@xml:id='families'])">
                <taxonomy xmlns="http://www.tei-c.org/ns/1.0" xml:id="families">
                    <xsl:for-each select="$families">
                        <category xml:id="{concat('fam-',.)}">
                            <catDesc>Famille: <xsl:value-of select="."/></catDesc>
                        </category>
                    </xsl:for-each>
                </taxonomy>
            </xsl:if>
            <xsl:if test="not(tei:taxonomy[@xml:id='diagnostics'])">
                <taxonomy xmlns="http://www.tei-c.org/ns/1.0" xml:id="diagnostics">
                    <category xml:id="dx-macro_add"><catDesc>ajout</catDesc></category>
                    <category xml:id="dx-macro_om"><catDesc>omission</catDesc></category>
                    <category xml:id="dx-structure_titres"><catDesc>titres/structure</catDesc></category>
                    <category xml:id="dx-manuel"><catDesc>rameau manuel (A2)</catDesc></category>
                    <category xml:id="dx-metzB_signal"><catDesc>rédaction messine (P12)</catDesc></category>
                    <category xml:id="dx-sansWit"><catDesc>leçon sans témoins déclarés</catDesc></category>
                </taxonomy>
            </xsl:if>
        </xsl:copy>
    </xsl:template>
    
    <!-- Annotation des leçons -->
    <xsl:template match="tei:lem | tei:rdg">
        <xsl:variable name="witRaw" select="normalize-space(@wit)"/>
        <xsl:variable name="wits"
            select="for $w in tokenize($witRaw, '\s+') return replace($w, '^#', '')"/>
        
        <xsl:variable name="fams">
            <xsl:for-each select="$families">
                <xsl:variable name="fam" select="."/>
                <xsl:if test="some $w in $wits satisfies contains(
                    concat(' ', normalize-space(
                    if ($fam='Metz_B') then $family-Metz_B
                    else if ($fam='Nord_Cambrai_ancien') then $family-Nord_Cambrai_ancien
                    else if ($fam='Remanie_Manuel') then $family-Remanie_Manuel
                    else if ($fam='Remanie_IVe_compilation') then $family-Remanie_IVe_compilation
                    else if ($fam='Abrege') then $family-Abrege
                    else if ($fam='Bourguignon_XVe') then $family-Bourguignon_XVe
                    else if ($fam='Tardif_non_Metz') then $family-Tardif_non_Metz
                    else '' )
                    ), concat(' ', $w, ' '))">
                    <xsl:value-of select="concat($fam, '|')"/>
                </xsl:if>
            </xsl:for-each>
        </xsl:variable>
        <xsl:variable name="fams-list" select="distinct-values(tokenize(normalize-space($fams), '\|'))"/>
        
        <xsl:variable name="dx">
            <xsl:if test="contains(../@type, 'macrostruct:add')">dx-macro_add|</xsl:if>
            <xsl:if test="contains(../@type, 'macrostruct:om')">dx-macro_om|</xsl:if>
            <xsl:if test="count($wits)=1 and $wits[1]='A2'">dx-manuel|</xsl:if>
            <xsl:if test="count($wits)=1 and $wits[1]='P12'">dx-metzB_signal|</xsl:if>
            <xsl:if test="count($wits)=1 and $wits[1]='B4' and (boolean(ancestor::tei:fw) or starts-with(normalize-space(string(.)), 'Comment'))">
                dx-structure_titres|
            </xsl:if>
            <xsl:if test="empty($wits)">dx-sansWit|</xsl:if>
        </xsl:variable>
        <xsl:variable name="dx-list" select="distinct-values(tokenize(normalize-space($dx), '\|'))"/>
        
        <xsl:variable name="ana-existing" select="normalize-space(@ana)"/>
        <xsl:variable name="ana-tokens-new">
            <xsl:for-each select="$fams-list"><xsl:value-of select="concat('#fam-', .,' ')"/></xsl:for-each>
            <xsl:if test="count($fams-list) &gt; 1">#fam-Mixte </xsl:if>
            <xsl:if test="count($fams-list) = 1">#fam-Unique </xsl:if>
            <xsl:for-each select="$dx-list"><xsl:value-of select="concat('#', .,' ')"/></xsl:for-each>
        </xsl:variable>
        <xsl:variable name="ana-merged"
            select="string-join(distinct-values(tokenize(concat($ana-existing,' ',$ana-tokens-new), '\s+')), ' ')"/>
        
        <xsl:copy>
            <xsl:apply-templates select="@* except @ana"/>
            <xsl:if test="normalize-space($ana-merged) != ''">
                <xsl:attribute name="ana" select="$ana-merged"/>
            </xsl:if>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
</xsl:stylesheet>
