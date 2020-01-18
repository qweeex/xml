<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  version="1.0">
    <xsl:template match="/">
        <h1>My University</h1>
        <TABLE BORDER="1" >
            <THEAD>
                <TH>Class(Аудитория)</TH>
                <TH>Noofstudens(Кол-во стундентов)</TH>
                <TH>Noofpresent(Кол-во присудствующих)</TH>
                <TH>Noofsections(Кол-во групп)</TH>
            </THEAD>
            <xsl:for-each select="School/Student">
                <xsl:if test="Class = 1">
                    <TR>
                        <TD>
                            <xsl:value-of select="Class"/>st
                        </TD>
                        <TD>
                            <xsl:value-of select="No_of_Students"/>
                        </TD>
                        <TD>
                            <xsl:value-of select="No_of_Present"/>
                        </TD>
                        <TD>
                            <xsl:value-of select="No_of_Sections"/>
                        </TD>
                    </TR>
                </xsl:if>
                <xsl:if test="Class = 2">
                    <TR>
                        <TD>
                            <xsl:value-of select="Class"/>nd
                        </TD>
                        <TD>
                            <xsl:value-of select="No_of_Students"/>
                        </TD>
                        <TD>
                            <xsl:value-of select="No_of_Present"/>
                        </TD>
                        <TD>
                            <xsl:value-of select="No_of_Sections"/>
                        </TD>
                    </TR>
                </xsl:if>
                <xsl:if test="Class = 3">
                    <TR>
                        <TD>
                            <xsl:value-of select="Class"/>rd
                        </TD>
                        <TD>
                            <xsl:value-of select="No_of_Students"/>
                        </TD>
                        <TD>
                            <xsl:value-of select="No_of_Present"/>
                        </TD>
                        <TD>
                            <xsl:value-of select="No_of_Sections"/>
                        </TD>
                    </TR>
                </xsl:if>
                <xsl:if test="Class > 3">
                    <TR>
                        <TD>
                            <xsl:value-of select="Class"/>th
                        </TD>
                        <TD>
                            <xsl:value-of select="No_of_Students"/>
                        </TD>
                        <TD>
                            <xsl:value-of select="No_of_Present"/>
                        </TD>
                        <TD>
                            <xsl:value-of select="No_of_Sections"/>
                        </TD>
                    </TR>
                </xsl:if>
            </xsl:for-each>
        </TABLE>
    </xsl:template>
</xsl:stylesheet>
