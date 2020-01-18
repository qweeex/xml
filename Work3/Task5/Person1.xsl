<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  version="1.0">
    <xsl:template match="/">
        <TABLE BORDER="1">
            <THEAD>
                <TH>Person Id</TH>
                <TH>Name</TH>
                <TH>Address</TH>
                <TH>Telephone</TH>
                <TH>Fax</TH>
                <TH>E-mail</TH>
            </THEAD>
            <xsl:for-each select="PEOPLE/PERSON">
                <xsl:if test="PersonId='E02'">
                    <TR select="PersonId == E02">
                        <TD>
                            <xsl:value-of select="PersonId"/>
                        </TD>
                        <TD>
                            <xsl:value-of select="Name"/>
                        </TD>
                        <TD>
                            <xsl:value-of select="Address"/>
                        </TD>
                        <TD>
                            <xsl:value-of select="Telephone"/>
                        </TD>
                        <TD>
                            <xsl:value-of select="Fax"/>
                        </TD>
                        <TD>
                            <xsl:value-of select="E-Mail"/>
                        </TD>
                    </TR>
                </xsl:if>
            </xsl:for-each>
        </TABLE>
    </xsl:template>
</xsl:stylesheet>
