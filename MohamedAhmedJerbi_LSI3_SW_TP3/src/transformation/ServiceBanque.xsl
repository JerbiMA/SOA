<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Liste des Comptes</title>
      </head>
      <body>
        <h1>Liste des Comptes</h1>
        <table border="1">
          <tr>
            <th>Code</th>
            <th>Solde</th>
            <th>Date de Création</th>
          </tr>
          <xsl:for-each select="ServiceBanque/getComptes[substring(dataCreation, 1, 4) > 2000]">
            <tr>
              <td>
                <xsl:value-of select="code"/>
              </td>
              <td>
                <xsl:value-of select="solde"/>
              </td>
              <td>
                <xsl:value-of select="dataCreation"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        <P>
        Somme totale des soldes des comtpes crees apres 2000:<xsl:value-of select="$totalsoldefiltre"/></P>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>