<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/lineup">
  <xsl:for-each select="artist">
    <xsl:result-document method="html" href="final_lineup_{name}.html">
      <lineup>
        <xsl:copy-of select="/lineup/@*" />
        <artist>
          <xsl:copy-of select="../@* | ." />
        </artist>
      </lineup>
    </xsl:result-document>
  </xsl:for-each>
</xsl:template> 
    
</xsl:stylesheet>