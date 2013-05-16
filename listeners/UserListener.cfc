<!---
	COMPONENT: UserListener
	AUTHOR: Matt Woodward (mpwoodward@gmail.com)
	DATE: 10/2/2005
	PURPOSE: UserListener for Hello Mach-II sample application
	CHANGE HISTORY:
		* 10/2/2005: component created (Matt Woodward)
--->

<cfcomponent name="UserListener" displayname="UserListener" output="false" 
		extends="MachII.framework.Listener" 
		hint="UserListener">
	
	<cffunction name="configure" access="public" output="false" 
			returntype="void" 
			hint="Configures this listener as part of the Mach-II framework">
		<!--- do nothing for now --->
		<cfset var sf = getProperty("ServiceFactory")>
		

		 <cfset variables.usersService 	= sf.getBean('usersService') /> 
	</cffunction>

	<cffunction name="getUserList" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		<cfreturn variables.usersService.getUserList() >
	</cffunction>

	<cffunction name="getUserBean" access="public" output="false" 
			returntype="struct" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		<cfreturn variables.usersService.getusers(userid=session.userid) >
	</cffunction>
	
	<cffunction name="validateUser" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		<cfreturn variables.usersService.validateUser(argumentCollection=arguments) >
	</cffunction>

	<cffunction name="SetUserRole" access="public" output="false" 
			returntype="boolean" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />

		<!--- 
		<cfdump var="#request.event.getArgs()#" abort="false" label="getArgs@UserListener" />
		<cfdump var="#session#" abort="false" label="session@UserListener" />
		<cfdump var="#arguments#" abort="true" label="arguments@UserListener" />
         --->

		<cfreturn variables.usersService.SetUserRole(userid=session.userid, roleid=request.event.getArg('role')) >
	</cffunction>

	<!---
	<cffunction name="showUserDashboard" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		<cfreturn variables.usersService.showUserDashboard(argumentCollection=arguments) >
	</cffunction>
    --->
    
</cfcomponent>