<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Inventario de Juegos</title>
      </head>
      <body>
        <h2>Lista de Juegos</h2>
        <table border="1">
          <tr>
            <th>ID</th>
            <th>Empresa</th>
            <th>Usuario</th>
            <th>Nombre del Juego</th>
          </tr>
          <xsl:for-each select="inventario/Juegos">
            <tr>
              <td><xsl:value-of select="@id"/></td>
              <td><xsl:value-of select="empresa"/></td>
              <td><xsl:value-of select="usuario"/></td>
              <td><xsl:value-of select="nombre_tipo"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
