<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:wix="http://schemas.microsoft.com/wix/2006/wi">
  <xsl:output indent="yes" method="xml"/>

  <xsl:template match="/wix:Wix">
    <Wix xmlns="http://schemas.microsoft.com/wix/2006/wi">
      <Product xmlns="http://schemas.microsoft.com/wix/2006/wi" Id="174066CD-B456-407A-A5E2-610C7A9BF79D" Name="DUALSHOCK4_RTC " Language="1041" Codepage="932" Version="" Manufacturer="UoA" UpgradeCode="3183B37C-E6A3-40F8-890E-FC5B440D60F7">
        <Package InstallerVersion="300" Compressed="yes" Languages='1041' SummaryCodepage='932' />
        <Media Id="1" Cabinet="DUALSHOCK4_RTC.cab" EmbedCab="yes" />
        <Directory Id="TARGETDIR" Name="SourceDir" >
            <Directory Id="ProgramFilesFolder" Name="PFILE" >
                <Directory Id="OPENRTM_DIR" Name="OpenRTM-aist" >
			<!-- <Directory Id="INSTALLLOCATION" Name="1.1" /> -->
                    <Directory Id="INSTALLLOCATION" Name="1.1" />
                </Directory>
            </Directory>
        </Directory>

        <Feature Id="APPLICATIONS" Title="Applications" Level="1" Description="Component library and stand-alone executable" >
          <!-- Start Ripping through the xml -->
		<!--
          <xsl:apply-templates select="wix:Fragment/wix:DirectoryRef/wix:Component[contains(wix:File/@Source, '\.dll')]" />
          <xsl:apply-templates select="wix:Fragment/wix:DirectoryRef/wix:Component[contains(wix:File/@Source, '\.lib')]" />
          <xsl:apply-templates select="wix:Fragment/wix:DirectoryRef/wix:Component[contains(wix:File/@Source, '\Comp.exe')]" />
          <xsl:apply-templates select="wix:Fragment/wix:DirectoryRef/wix:Component[contains(wix:File/@Source, '\RTC.xml')]" />
	  -->
          <xsl:apply-templates select="wix:Fragment/wix:DirectoryRef/wix:Component[contains(wix:File/@Source, translate('\bin\DUALSHOCK4_RTC.dll','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'))]" />
          <xsl:apply-templates select="wix:Fragment/wix:DirectoryRef/wix:Component[contains(wix:File/@Source, translate('\lib\DUALSHOCK4_RTC.lib','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'))]" />
          <xsl:apply-templates select="wix:Fragment/wix:DirectoryRef/wix:Component[contains(wix:File/@Source, translate('\bin\DUALSHOCK4_RTCComp.exe','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'))]" />
          <xsl:apply-templates select="wix:Fragment/wix:DirectoryRef/wix:Component[contains(wix:File/@Source, 'RTC.xml')]" />
        </Feature>

        <Feature Id="DOCUMENTS" Title="" Level="1" Absent="allow" Description="" >
          <!-- Start Ripping through the xml -->
          <xsl:apply-templates select="wix:Fragment/wix:DirectoryRef/wix:Component[contains(wix:File/@Source, '\doc')]" />
        </Feature>

	<!-- <Feature Id="SOURCES" Title="" Level="1" Absent="allow" Description="" >-->
          <!-- Start Ripping through the xml -->
	  <!-- <xsl:apply-templates select="wix:Fragment/wix:DirectoryRef/wix:Component[contains(wix:File/@Source, 'DUALSHOCK4_RTC100\src')]" /> -->
	  <!-- </Feature> -->

        <!--Tack on your specific wix options-->
        <UIRef Id="WixUI_FeatureTree" />
        <UIRef Id="WixUI_ErrorProgressText" />
        <!-- 
        <WixVariable Id="WixUILicenseRtf" Value="C:/Users/fumi0/workspace/DUALSHOCK4_RTC/cmake/License.rtf"/>
        -->
        <!-- TODO: Add Wix Specific Dialogs and features. -->
        <!-- TODO: Add artwork  -->
        <!-- TODO: Add ... -->

      </Product>

      <!--Output the fragment info which heat generates-->
      <xsl:copy-of select="wix:Fragment[wix:DirectoryRef/wix:Component]" />
      <xsl:apply-templates select="wix:Fragment[wix:DirectoryRef/@Id!='TARGETDIR' and wix:DirectoryRef/wix:Directory]" />

    </Wix>
  </xsl:template>

  <xsl:template match="wix:Fragment[wix:DirectoryRef/wix:Directory]" >
    <xsl:copy>
      <xsl:apply-templates select="wix:DirectoryRef" />
    </xsl:copy>
  </xsl:template>

  <xsl:template match="wix:DirectoryRef" >
    <xsl:copy>
      <xsl:choose>
        <xsl:when test="wix:Directory[@Name='components']" >
          <xsl:attribute name="Id">INSTALLLOCATION</xsl:attribute>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="Id"><xsl:value-of select="@Id" /></xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates />
    </xsl:copy>
  </xsl:template>

  <xsl:template match="wix:Directory" >
    <xsl:copy>
      <xsl:attribute name="Id"><xsl:value-of select="@Id" /></xsl:attribute>
      <xsl:attribute name="Name"><xsl:value-of select="@Name" /></xsl:attribute>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="wix:Component">
    <xsl:element name="ComponentRef" xmlns="http://schemas.microsoft.com/wix/2006/wi" >
      <xsl:attribute name="Id">
        <xsl:value-of select="@Id" />
      </xsl:attribute>
    </xsl:element>
  </xsl:template>

</xsl:stylesheet>
