<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  version="1.0">

    <xsl:template match="/">
        <html>
            <body>
                <h2>My Favorite People</h2>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="PEOPLE/PERSON">
        <div>
            <p style="margin: 0">Title: <span><xsl:apply-templates select="PersonId"/></span></p>
            <p style="margin: 0">Name: <span><xsl:apply-templates select="Name"/></span></p>
        </div>
        <br/>
    </xsl:template>

</xsl:stylesheet>
