<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
<xsl:template match="/">
    <lineup>
        <xsl:apply-templates/>
    </lineup>
</xsl:template>
    
<xsl:template match="artist">
    <artist>
        <xsl:attribute name="id">12<xsl:value-of select="translate(id,'BCD','123')"/>
        </xsl:attribute>
        <name><xsl:value-of select="name"/></name>
        <genres><xsl:apply-templates select="genres"/></genres>
        <writeup><xsl:value-of select="description"/></writeup>
        <gig><xsl:apply-templates select="time"/></gig>
        <photo><xsl:value-of select="image"/></photo>
    </artist>
</xsl:template>
    
<xsl:template match="genres">
    <xsl:apply-templates select="g"/>
</xsl:template>
<xsl:template match="g">
    <genre><xsl:value-of select="."/></genre>
</xsl:template>
    
<xsl:template match="time">
    <day><xsl:value-of select="upper-case(day)"/></day>
    <time>
        <start><xsl:value-of select="substring(time,1,5)"/></start>
        <end><xsl:value-of select="substring(time,7,5)"/></end>
    </time>
</xsl:template>
    
</xsl:stylesheet>