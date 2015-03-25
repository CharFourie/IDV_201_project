<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <!-- Send a sorted list to the apply template -->
  <xsl:template match="/">
      <schedule>
        <xsl:apply-templates select="schedule/band">
          <!-- Sort by the index element -->
            <xsl:sort select="day" order="ascending" />
            <xsl:sort select="time" order="ascending" />
        </xsl:apply-templates>
      </schedule>
  </xsl:template>
  
  <!-- Take the sorted list of letters and just print out a copy, in order, to the output file -->
  <xsl:template match="@*|node()">
      <xsl:copy>
          <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
  </xsl:template>
  
</xsl:stylesheet>
