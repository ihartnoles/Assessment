
<cfapplication name="Assessment" sessionmanagement="yes" />

<cfsetting requesttimeout="120" showDebugOutput = "yes"/>

<!--- Set the path to the application's mach-ii.xml file. --->
<cfset MACHII_CONFIG_PATH = ExpandPath("./config/mach-ii.xml") />
<!--- Set the configuration mode (when to reload): -1=never, 0=dynamic, 1=always --->
<cfset MACHII_CONFIG_MODE = 0 />
<!--- Set the app key for sub-applications within a single cf-application. --->
<!--- <cfset MACHII_APP_KEY = GetFileFromPath(ExpandPath(".")) /> --->
<cfset MACHII_APP_KEY = 'DEV' />
<!--- Include the mach-ii.cfm file included with the core code. --->
<cfset MACHII_DTD_PATH     = ExpandPath("/Mach-II/mach-ii_1_1_1.dtd") />

<cfset MACHII_VALIDATE_XML = false />

<cfset application.wbroot = 'C:\inetpub\wwwroot\Assessment' />

<cfset application.devEmails = 'ihartstein@fau.edu' />

<cfset application.defaultProperties.dsn = "Assessment">
<cfset application.devEmail = "ihartstein@fau.edu">
<cfset application.serviceDefinitionLocation = expandPath('../') & "Assessment\config\coldspring\services.xml.cfm" />
<cfset application.serviceFactory = createObject('component','coldspring.beans.DefaultXmlBeanFactory').init(structnew(),application.defaultProperties) />
<cfset application.serviceFactory.loadBeansFromXmlFile(application.serviceDefinitionLocation) />

<!---
<cfdump var="#application#" abort="true" />
--->

<cfif StructKeyExists(url, "reinit")>
			<cfsetting requesttimeout="120"/>
			<cfset MACHII_CONFIG_MODE = 1 />
</cfif>

<cfset request.do404 = do404>


