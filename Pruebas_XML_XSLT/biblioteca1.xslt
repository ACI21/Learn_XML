<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Lista de libros</h2>
                <ul>
                    <xsl:for-each select="bookstore/book">
                        <li>
                            Title: <xsl:value-of select="title"/>
                            Author: <xsl:value-of select="author"/>
                            Year: <xsl:value-of select="year"/>
                            Price: <xsl:value-of select="price"/>
                        <li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>