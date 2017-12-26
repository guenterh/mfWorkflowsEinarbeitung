<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="xs"
                version="2.0">

    <!-- subject category codes (MARC field 072) -->
    <!-- todo: wie kann ich Namen über Variablen definieren -->

    <xsl:template name="classifications">
    <xsl:param name="fragment" />

        <xsl:for-each select="$fragment/datafield[@tag='072']/subfield[@code='a']">
            <xsl:variable name="source" select="following-sibling::subfield[@code='2']/text()" />
            <field name="{concat('classif_', $source)}">
                <xsl:value-of select="." />
            </field>

        </xsl:for-each>
    </xsl:template>


    <!-- ***************************************************** -->


</xsl:stylesheet>





