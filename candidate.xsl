<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h1>Candidate Information</h1>
    <table border="1">
    <tr bgcolor="#ffff">
      <th style="text-align:left">CandidateID</th>
      <th style="text-align:left">CandidateName</th>
      <th style="text-align:left">Age</th>
      <th style="text-align:left">Aadhar</th>
      <th style="text-align:left">N</th>
      <th style="text-align:left">Phno</th>
      <th style="text-align:left">Address</th>
      <th style="text-align:left">Votes</th>
    </tr>
      <xsl:for-each select="candidate_registration/candidate">
        <xsl:sort select="CandidateName"/>
        <xsl:if test="Address !='Dumka'">
          
            <tr>
              <td><xsl:value-of select="CandidateID"/></td>
              <td><xsl:value-of select="CandidateName"/></td>
              <td><xsl:value-of select="Age"/></td>
              <td><xsl:value-of select="Aadhar"/></td>
              <td><xsl:value-of select="N"/></td>
              <td><xsl:value-of select="Phno"/></td>
              <td><xsl:value-of select="Address"/></td>
              <td><xsl:value-of select="Votes"/></td>
              </tr>
        </xsl:if>

      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
