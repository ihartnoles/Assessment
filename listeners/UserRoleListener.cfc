<!---
	COMPONENT: UserRoleListener
--->

<cfcomponent name="UserRoleListener" displayname="UserRoleListener" output="false" 
		extends="MachII.framework.Listener" 
		hint="UserRoleListener">
	
	<cffunction name="configure" access="public" output="false" 
			returntype="void" 
			hint="Configures this listener as part of the Mach-II framework">
		<!--- do nothing for now --->
		<cfset var sf = getProperty("ServiceFactory")>
		

		 <cfset variables.userRolesService 	= sf.getBean('userRolesService') /> 
	</cffunction>

	

	<cffunction name="getDefaultUserRole" access="public" output="false" 
			returntype="numeric" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		<cfreturn variables.userRolesService.getDefaultUserRole(userid=session.userid) >
	</cffunction>
	
	
	<!---
	<cffunction name="showUserDashboard" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		<cfreturn variables.userRolesService.showUserDashboard(argumentCollection=arguments) >
	</cffunction>
    --->
    
</cfcomponent>