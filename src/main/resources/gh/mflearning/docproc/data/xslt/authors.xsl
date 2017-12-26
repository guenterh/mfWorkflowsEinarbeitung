<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    
    
    <!-- main and added entries -->
    <xsl:template match="/">
        
        <xsl:call-template name="authors">
            <xsl:with-param name="fragment" select="record" />
        </xsl:call-template>
    </xsl:template>


        <xsl:template name="authors">
        <xsl:param name="fragment" />
        <xsl:variable name="forDeduplication">
            <!-- personal entries -->
            <xsl:for-each select="$fragment/datafield[matches(@tag, '100|700|800')]/subfield[@code='a'] |
                $fragment/datafield[@tag='880'][matches(child::subfield[@code='6'],'100|700|800')]/subfield[@code='a'] |
                $fragment/datafield[@tag='950'][matches(child::subfield[@code='P'], '100|700')]/subfield[@code='a']">
                <xsl:value-of select="replace(., '\[forme avant 2007\]', '', 'i')" />
                <xsl:if test="following-sibling::subfield[@code='D']">
                    <xsl:value-of select="concat(', ', following-sibling::subfield[@code='D'][1])" />
                </xsl:if>
                <xsl:text>##xx##</xsl:text>
            </xsl:for-each>
            <!-- corporate entries -->
            <xsl:for-each select="$fragment/datafield[matches(@tag, '110|710|810')]/subfield[@code='a'] |
                $fragment/datafield[@tag='880'][matches(child::subfield[@code='6'],'110|710|810')]/subfield[@code='a'] |
                $fragment/datafield[@tag='950'][matches(child::subfield[@code='P'], '110|710|810')]/subfield[@code='a']">
                <xsl:value-of select="replace(., '\[forme avant 2007\]', '', 'i')" />
                <xsl:if test="following-sibling::subfield[@code='b']">
                    <xsl:for-each select="following-sibling::subfield[@code='b']">
                        <xsl:value-of select="concat(', ', .)" />
                    </xsl:for-each>
                </xsl:if>
                <xsl:text>##xx##</xsl:text>
            </xsl:for-each>
            <!-- meeting entries -->
            <xsl:for-each select="$fragment/datafield[matches(@tag, '111|711|811')]/subfield[@code='a'] |
                $fragment/datafield[@tag='880'][matches(child::subfield[@code='6'],'111|711|811')]/subfield[@code='a'] |
                $fragment/datafield[@tag='950'][matches(child::subfield[@code='P'], '111|711|811')]/subfield[@code='a']">
                <xsl:value-of select="replace(., '\[forme avant 2007\]', '', 'i')" />
                <xsl:if test="following-sibling::subfield[@code='e']">
                    <xsl:for-each select="following-sibling::subfield[@code='e']">
                        <xsl:value-of select="concat(', ', .)" />
                    </xsl:for-each>
                </xsl:if>
                <xsl:text>##xx##</xsl:text>
            </xsl:for-each>
        </xsl:variable>
        
        <xsl:value-of select="$forDeduplication"/>
        
    </xsl:template>        
    
    
</xsl:stylesheet>