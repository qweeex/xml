<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  version="1.0">
    <xsl:template match="/">
        <xsl:for-each select="PEOPLE/PERSON">
            <div>
                <p style="margin:0px">
                    <xsl:value-of select="PersonId"/>
                </p>
                <h1 style="margin:0px;font-weight:normal">
                    <xsl:value-of select="Name"/>
                </h1>
                <p style="margin:0px">
                    <xsl:value-of select="Address"/>,<xsl:value-of select="Telephone"/> <xsl:value-of select="Fax"/>
                </p>
                <p style="margin:0px">
                    <xsl:value-of select="E-Mail"/>
                </p>
            </div>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
