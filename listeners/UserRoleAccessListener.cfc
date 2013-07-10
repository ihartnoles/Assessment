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
		

		 <cfset variables.userRoleAccessService 	= sf.getBean('userRoleAccessService') /> 
	</cffunction>

	

	<cffunction name="getUserRoleAccessIDs" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />

		<!---
		<cfdump var="#request.event.getArgs()#" abort="false" label="@@UserRoleAccessListener_1" />
		

		
		<cfset temp =  variables.userRoleAccessService.getUserRoleAccessIDsQuery(UserRoleRecordID=request.event.getArg("UserRoleRecordID")) />

		<cfdump var="#temp#" abort="true" label="@@UserRoleAccessListener_2" />
		
		--->
		
		<cfreturn variables.userRoleAccessService.getUserRoleAccessIDsQuery(UserRoleRecordID=arguments.event.getArg("UserRoleRecordID")) >
	</cffunction>
	
	
	<!---
	<cffunction name="showUserDashboard" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		<cfreturn variables.userRoleAccessService.showUserDashboard(argumentCollection=arguments) >
	</cffunction>
    --->
    
</cfcomponent>