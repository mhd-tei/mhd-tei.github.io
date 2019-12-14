<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei"
    version="2.0">
    
    <xsl:output method="xml" omit-xml-declaration="yes" encoding="UTF-8" indent="no" />
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" />
        </xsl:copy>
    </xsl:template>
    
<!--    Liste der Elemente, deren Textinhalt zu bewahren ist -->
    <xsl:template match=" tei:l | tei:am | tei:text | tei:hi | tei:lg | tei:body | tei:choice | tei:reg | tei:rhyme | tei:ex | tei:pc | tei:corr | tei:div | tei:TEI | tei:p | tei:persName | tei:abbr  ">
        <xsl:apply-templates/>
    </xsl:template>
    
    <!--    Liste der Elemente, die gelöscht werden soll -->
    <xsl:template match="tei:lb | tei:teiHeader | tei:orig | tei:sic | tei:pb | tei:cb |  tei:expan">
    </xsl:template>
    
    <xsl:template match="tei:w ">
        <xsl:text> </xsl:text><xsl:apply-templates/>
    </xsl:template>
    

    
    
    
    
    
</xsl:stylesheet>