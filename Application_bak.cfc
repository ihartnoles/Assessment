<cfcomponent extends="MachII.mach-ii" output="false">

	<cfset THIS.Name = "Assessment" />
	<cfset THIS.ApplicationTimeout = CreateTimeSpan( 0, 0, 40, 0 ) />
	<cfset THIS.SessionManagement = true />
	<cfset THIS.SetClientCookies = false />

	<!--- Set the path to the application's mach-ii.xml file. --->
	<cfset MACHII_CONFIG_PATH = ExpandPath("./config/mach-ii.xml") />
	<!--- Set the configuration mode (when to reload): -1=never, 0=dynamic, 1=always --->
	<cfset MACHII_CONFIG_MODE = 1 />
	<!--- Set the app key for sub-applications within a single cf-application. --->
	<!--- <cfset MACHII_APP_KEY = GetFileFromPath(ExpandPath(".")) /> --->
	<cfset MACHII_APP_KEY = 'DEV' />
	<!--- Include the mach-ii.cfm file included with the core code. --->
	<cfset MACHII_DTD_PATH     = ExpandPath("/Mach-II/mach-ii_1_1_1.dtd") />

	<cfset MACHII_VALIDATE_XML = false />

<!---
	<cffunction name="onRequestStart" returnType="void" output="true" hint="Run at the start of a page request.">
		<cfargument name="targetPage" type="string" required="true" />

		
		<cfif (structKeyExists(url,"reapp") && url.reapp eq "glassdoor")>
			<!--- if its the live server, the command must come from the office IP --->
			<cfset onApplicationStart()>
		</cfif>

		<cfif StructKeyExists(url, "reinit")>
			<cfsetting requesttimeout="120" />
			<cfset MACHII_CONFIG_MODE = 1 />
		</cfif>

		<cfset session.message = "" />

	
		<!--- Handle Mach-II request --->
		<cfif FindNoCase("index.cfm", arguments.targetPage)>
			<cfset handleRequest() />
		</cfif>
		
	</cffunction>

	--->

</cfcomponent>