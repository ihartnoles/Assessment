<!---
	COMPONENT: TaskListener
--->

<cfcomponent name="TaskListener" displayname="TaskListener" output="false" 
		extends="MachII.framework.Listener" 
		hint="TaskListener">
	
	<cffunction name="configure" access="public" output="false" 
			returntype="void" 
			hint="Configures this listener as part of the Mach-II framework">
		<!--- do nothing for now --->
		<cfset var sf = getProperty("ServiceFactory")>
		

		 <cfset variables.tasksService 	= sf.getBean('tasksService') /> 
	</cffunction>

	

	<!---
	<cffunction name="getUserRoleAccessIDs" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />

		<!---
		<cfdump var="#request.event.getArgs()#" abort="false" label="@@UserRoleAccessListener_1" />
		

		
		<cfset temp =  variables.tasksService.getUserRoleAccessIDsQuery(UserRoleRecordID=request.event.getArg("UserRoleRecordID")) />

		<cfdump var="#temp#" abort="true" label="@@UserRoleAccessListener_2" />
		
		--->
		
		<cfreturn variables.tasksService.getUserRoleAccessIDsQuery(UserRoleRecordID=arguments.event.getArg("UserRoleRecordID")) >
	</cffunction>
	--->
    
</cfcomponent>