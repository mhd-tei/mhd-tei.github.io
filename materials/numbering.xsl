﻿<?xml version="1.0" encoding="UTF-8"?>
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
    
<xsl:template match="tei:l">
    <l><xsl:attribute name="n"><xsl:number count="tei:l" from="tei:lg"/></xsl:attribute><xsl:apply-templates select="node()"/></l>
</xsl:template>
    
    
</xsl:stylesheet>