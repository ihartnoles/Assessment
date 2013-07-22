<!---
	COMPONENT: messageListener
--->

<cfcomponent name="messageListener" displayname="messageListener" output="false" 
		extends="MachII.framework.Listener" 
		hint="messageListener">
	
	<cffunction name="configure" access="public" output="false" 
			returntype="void" 
			hint="Configures this listener as part of the Mach-II framework">
		<!--- do nothing for now --->
		<cfset var sf = getProperty("ServiceFactory")>
		

		 <cfset variables.messagesService 	= sf.getBean('messagesService') /> 
	</cffunction>



	<!---
	<cffunction name="getDepartments" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfreturn variables.messagesService.getDepartments(divisionid = request.event.getArg('divisionid')) />
	</cffunction>
	--->

</cfcomponent>