<!-- artistas.xslt -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>
  
  <!-- Plantilla para la raíz, que generará la estructura básica de la página HTML -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Artistas</title>
        <style>
          table {
            font-family: Arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
          }
          th {
            padding: 8px;
            text-align: left;
            color: white;
            background-color: blue;
          }
          td {
            padding: 8px;
            text-align: left;
          }
        </style>
      </head>
      <body>
        <h1>Artistas</h1>
        <table>
          <tr>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Nacimiento</th>
            <th>Fallecimiento</th>
            <th>Más</th>
          </tr>
          <!-- Aplicamos una plantilla a cada artista que no sea español, ordenados por nombre -->
          <xsl:apply-templates select="artistas/artista[pais != 'España']">
            <xsl:sort select="nombre"/>
          </xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>
  
  <!-- Plantilla para cada artista -->
  <xsl:template match="artista">
    <tr>
      <td><xsl:value-of select="nombre"/></td>
      <td><xsl:value-of select="apellido"/></td>
      <td><xsl:value-of select="nacimiento"/></td>
      <!-- Verificamos si hay información de fallecimiento -->
      <td>
        <xsl:choose>
          <xsl:when test="fallecimiento">
            <xsl:value-of select="fallecimiento"/>
          </xsl:when>
          <xsl:otherwise>Desconocido</xsl:otherwise>
        </xsl:choose>
      </td>
      <!-- Agregamos el enlace al recurso 'mas' -->
      <td><button><a href="{mas}">+</a></button></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
