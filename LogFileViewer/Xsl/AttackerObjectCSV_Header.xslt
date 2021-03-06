<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" />
	

	<xsl:template match="/">
	<xsl:choose>
		<xsl:when test="/Scenario/History_AttackerObjectReport">
			<xsl:text>Time,ID,TargetID,CapabilityName,Attacker Location X,Attacker Location Y,Attacker Location Z,Target Location X,Target Location Y,Target Location Z&#10;</xsl:text>
			<xsl:for-each select="/Scenario/History_AttackerObjectReport">
				<xsl:value-of select="Parameter[6]/Value"/>
				<xsl:text>,</xsl:text>
				<xsl:value-of select="Parameter[1]/Value"/>
				<xsl:text>,</xsl:text>
				<xsl:value-of select="Parameter[3]/Value"/>
				<xsl:text>,</xsl:text>
				<xsl:value-of select="Parameter[5]/Value"/>
				<xsl:text>,</xsl:text>
				<xsl:value-of select="Parameter[2]/Value/LocationType/X"/>
				<xsl:text>,</xsl:text>
				<xsl:value-of select="Parameter[2]/Value/LocationType/Y"/>
				<xsl:text>,</xsl:text>
				<xsl:value-of select="Parameter[2]/Value/LocationType/Z"/>
        <xsl:text>,</xsl:text>
        <xsl:value-of select="Parameter[4]/Value/LocationType/X"/>
        <xsl:text>,</xsl:text>
        <xsl:value-of select="Parameter[4]/Value/LocationType/Y"/>
        <xsl:text>,</xsl:text>
        <xsl:value-of select="Parameter[4]/Value/LocationType/Z"/>
				<xsl:text>&#10;</xsl:text>
			</xsl:for-each>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>0 records.</xsl:text>
		</xsl:otherwise>
	</xsl:choose>

	</xsl:template>


</xsl:stylesheet>





