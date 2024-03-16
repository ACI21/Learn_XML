<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Lista de libros</h2>
                    <xsl:for-each select="bookstore/book[@category='fantasy']">
                        <book>
                            <title><xsl:value-of select="title"/></title>
                            <author><xsl:value-of select="author"/></author>
                            <year><xsl:value-of select="year"/></year>
                            <price><xsl:value-of select="price"/><price>
                        </book>
                    </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>