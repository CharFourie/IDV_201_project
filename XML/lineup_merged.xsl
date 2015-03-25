<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
<xsl:template match="/">
    <html>
        <body>
            <h1>LINEUP</h1>
            <xsl:apply-templates/>
        </body>
    </html>
</xsl:template>
    
<xsl:template match="artist">
    <name><xsl:apply-templates select="name"/></name><br/>
    <genres><xsl:apply-templates select="genres"/></genres><br/>
    <writeup><xsl:value-of select="writeup"/></writeup><br/><br/>
    <gig><xsl:apply-templates select="gig"/></gig><br/>
    <photo><xsl:value-of select="photo"/></photo><br/><br/>
</xsl:template>
    
<xsl:template match="name">
    Name: <xsl:value-of select="."/>
</xsl:template>
    
<xsl:template match="genres">
  		Genres:
  		<ul>
        	<xsl:apply-templates select="genre"/>
        </ul>
	</xsl:template>
    
    <xsl:template match="genre">
    	<li>
            <xsl:value-of select="."/>
        </li>
    </xsl:template>
    
<xsl:template match="writeup">
    <xsl:value-of select="."/>
</xsl:template>

<xsl:template match="gig">
    Performance:
    <ul>
        <li><xsl:value-of select="day"/></li>
        <li><xsl:apply-templates select="time"/></li> 
    </ul>
</xsl:template>
    
<xsl:template match="time">
    <xsl:value-of select="start"/>-<xsl:value-of select="end"/>
</xsl:template> 

<xsl:template match="photo">
    Photo:<xsl:value-of select="."/>
</xsl:template>

</xsl:stylesheet>