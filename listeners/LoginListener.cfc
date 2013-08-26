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

				//writeDump(var=arguments.event.getArgs(), abort="false");

				local.userexists = variables.usersService.validateUser(username=arguments.event.getArg("username"),
																 userpassword=arguments.event.getArg("password"));

				//writeDump(var=local.userexists, abort="false", label="@LoginListener");
				
				if ( local.userexists.recordcount ) {
					local.success = true;

					//set the session.UserID
					lock
						scope="session"
						type="exclusive"
						timeout="10"
						{
							session.user.userID = local.userexists.userID;
							session.user.username = local.userexists.username;
						}
					
				} else {
					local.success = false;
					
					lock
						scope="session"
						type="exclusive"
						timeout="10"
						{
							session.user.userID = 0;
						}
				}

				//writeDump(var=session, abort="true", label="@LoginListener");
				//writeDump(var=local, abort="true", label="@LoginListener");
					
			}
			
			// announce the appropriate event based on the success or failure
			// of the login
			if (local.success) {

				//does the user have a default role?
				local.hasDefaultRole =  variables.usersService.userHasDefaultRole(userid=userexists.UserID);

				//if not they need to choose a role for the session
				if (local.hasDefaultRole.recordcount == 0) {
					//redirect to choose role

					//writeDump(var=session, abort="true", label="@LoginListener");
					 //redirectEvent('ChooseUserRoleForSession', session , true);
					 announceEvent("ChooseUserRoleForSession");					
				} else {
					//announceEvent("loginSucceeded");
					
					//announceEvent("ShowReportingUnits");
					//redirectEvent("showUserDashboard");
					//set the session.UserID
					lock
						scope="session"
						type="exclusive"
						timeout="10"
						{
							session.user.userRoleID = local.hasDefaultRole.roleID;
							session.user.userRoleDescription = local.hasDefaultRole.AssessmentRoleDescription;
						}

					announceEvent("showUserDashboard");
				}

			} else {
				// put a message in the event argument so we can tell the
				// user their login failed
				session.message ="Your login failed.  Please try again.";
				announceEvent("showLogin", arguments.event.getArgs());
			}
		</cfscript>
	</cffunction>

	<cffunction name="logout" access="public" returntype="void" output="false">		
		<cfargument name="event" type="MachII.framework.Event" required="true" />

		<!--- clear the session --->
		<cfset StructClear(session) />
		
		<!--- set the message --->
		<cfset session.message ="You have been logged out.">

		<!--- redirect to login page --->
		<cfset announceEvent("showLogin",arguments.event.getArgs())>
	</cffunction>


	<cffunction name="hitDB" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		<cfreturn variables.studentsService.getStudentsQuery() >
	</cffunction>
</cfcomponent>