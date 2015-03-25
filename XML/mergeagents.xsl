<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <!-- Grab each element inside the letters root --> 
  <xsl:template match="/">
      <lineup>
          <xsl:apply-templates select="document('agentAout.xml')/lineup/*"/>
          <xsl:apply-templates select="document('agentBout.xml')/lineup/*"/>
          <xsl:apply-templates select="document('agentCout.xml')/lineup/*"/>
      </lineup>
  </xsl:template>
  
  
  <!-- Copy each attribute and element -->
  <xsl:template match="@*|node()">
      <xsl:copy>
          <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
  </xsl:template>
  
</xsl:stylesheet>