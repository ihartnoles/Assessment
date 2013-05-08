<cfcomponent extends="MachII.mach-ii" output="false">

	<cfscript>
		this.name = 'AssesmentDB';
		this.sessionManagement 	= true;
		this.clientManagement   = false;
		this.setClientCookies 	= false;
		this.setDomainCookies 	= false;
		this.applicationTimeOut = CreateTimeSpan(1,0,0,0);

		MACHII_CONFIG_PATH = ExpandPath("./config/mach-ii.xml");
		//Set the configuration mode (when to reload): -1=never, 0=dynamic, 1=always 
		MACHII_CONFIG_MODE = 0;
		//Set the app key for sub-applications within a single cf-application.
		//MACHII_APP_KEY = GetFileFromPath(ExpandPath(".")) 
		MACHII_APP_KEY = 'DEV';
		//Include the mach-ii.cfm file included with the core code.
		MACHII_DTD_PATH     = ExpandPath("/Mach-II/mach-ii_1_1_1.dtd");
	    
		MACHII_VALIDATE_XML = false;
	</cfscript>



	<cffunction name="onApplicationStart" returnType="void" output="false" hint="Only runs when the App is started.">
		<!--- <cfset request.SessionTimeout = CreateTimeSpan( 0, 0, 40, 0 ) /> --->
		<cfset loadFramework() />
		<cfset session.message = "" />
	</cffunction>


	<cffunction name="onApplicationEnd" returntype="void" output="false" hint="Only runs when the App is shut down.">
		<cfargument name="ApplicationScope" required="true"/>
	</cffunction>


	<cffunction name="onRequestStart" returnType="void" output="true" hint="Run at the start of a page request.">
		<cfargument name="targetPage" type="string" required="true" />

		!--- Request Scope Variable Defaults --->
		<cfset request.self = "index.cfm">
		
		<cfif (structKeyExists(url,"reapp") && url.reapp eq "glassdoor")>
			<!--- if its the live server, the command must come from the office IP --->
			<cfset onApplicationStart()>
		</cfif>

		<cfif StructKeyExists(url, "reinit")>
			<cfsetting requesttimeout="120" />
			<cfset MACHII_CONFIG_MODE = 1 />
		</cfif>

		<cfset session.message = "" />
	</cffunction>

	<!--- Runs at end of request --->
	<cffunction name="onRequestEnd" returnType="void" output="false">
		<cfargument name="targetPage" type="string" required="true">		
	</cffunction>

	<!--- Runs on error --->
	<cffunction name="onError" returnType="void" output="false">
		<cfargument name="exception" required="true">
		<cfargument name="eventname" type="string" required="true">
		<cfdump var="#arguments#"><cfabort>
	</cffunction>

	<cffunction name="onSessionStart" returntype="void" output="false" hint="Only runs when a session is created.">
		
	</cffunction>

	<!--- Runs when session ends --->
	<cffunction name="onSessionEnd" returnType="void" output="false">
		<cfargument name="sessionScope" type="struct" required="true">
		<cfargument name="appScope" type="struct" required="false">
	</cffunction>

</cfcomponent>