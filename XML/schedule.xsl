<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <schedule>
        <xsl:apply-templates/>
    </schedule>
</xsl:template>
    
<xsl:template match="artist">
    <band>
        <xsl:value-of select="name"/>
        <xsl:apply-templates select="gig"/>
    </band>
</xsl:template>
    
<xsl:template match="gig">
    <day><xsl:value-of select="day"/></day>
    <time><xsl:apply-templates select="time"/></time>
</xsl:template>

<xsl:template match="time">
    <xsl:value-of select="start"/> -
    <xsl:value-of select="end"/>
</xsl:template>

</xsl:stylesheet>