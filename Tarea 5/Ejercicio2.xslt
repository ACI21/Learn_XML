<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>

    <!-- Plantilla para la raíz -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de artistas femeninas</title>
            </head>
            <body>
                <h1 style="color:purple;">Lista de artistas femeninas</h1>
                <ul>
                    <!-- Aplicar la plantilla a los artistas femeninas que vivieron más de 70 años -->
                    <xsl:apply-templates select="artistas/artista[@sexo='M' and (fallecimiento - nacimiento) &gt; 70]">
                        <xsl:sort select="fallecimiento - nacimiento" order="descending"/>
                    </xsl:apply-templates>
                </ul>
            </body>
        </html>
    </xsl:template>

    <!-- Plantilla para cada artista -->
    <xsl:template match="artista">
        <li>
            <xsl:value-of select="concat(nombre, ' ', apellido)"/>
            <xsl:text> - </xsl:text>
            <xsl:value-of select="fallecimiento - nacimiento"/>
            <xsl:text> años</xsl:text>
            <xsl:text> (<a href="{mas}">Más información</a>)</xsl:text>
        </li>
    </xsl:template>
</xsl:stylesheet>
