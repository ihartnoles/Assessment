<!---
	COMPONENT: LoginListener
	AUTHOR: Matt Woodward (mpwoodward@gmail.com)
	DATE: 10/2/2005
	PURPOSE: LoginListener for Hello Mach-II sample application
	CHANGE HISTORY:
		* 10/2/2005: component created (Matt Woodward)
--->

<cfcomponent name="LoginListener" displayname="LoginListener" output="false" 
		extends="MachII.framework.Listener" 
		hint="LoginListener for Hello Mach-II sample application">
	
	<cffunction name="configure" access="public" output="false" 
			returntype="void" 
			hint="Configures this listener as part of the Mach-II framework">
		<!--- do nothing for now --->
		<cfset var sf = getProperty("ServiceFactory")>
		
		<cfset variables.usersService 	= sf.getBean('usersService') />
	</cffunction>
	

	<cffunction name="validateLogin" access="public" output="false" 
			returntype="void" 
			hint="Validates a login attempt and announces a success or failure event">
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfscript>
			// need to var scope ALL VARIABLES for thread safety!!!
			var success = false;
			
			// check hard-coded user name and password; in real life
			// we'd be hitting a database, LDAP, or something similar
			if ( len(trim(arguments.event.getArg("username"))) AND len(trim(arguments.event.getArg("password"))) ) {

				userexists = variables.usersService.validateUser(username=arguments.event.getArg("username"),
																 userpassword=arguments.event.getArg("password"));

				//writeDump(var=userexists, abort="true");
				
				if (userexists) {
					success = true;
				} else {
					success = false;
				}
					
			}
			
			// announce the appropriate event based on the success or failure
			// of the login
			if (success) {
				announceEvent("loginSucceeded");
			} else {
				// put a message in the event argument so we can tell the
				// user their login failed
				arguments.event.setArg("message", "Your login failed.  Please try again.");
				announceEvent("showLogin", arguments.event.getArgs());
			}
		</cfscript>
	</cffunction>

	<cffunction name="hitDB" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		<cfreturn variables.studentsService.getStudentsQuery() >
	</cffunction>
</cfcomponent>