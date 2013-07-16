<!---
	COMPONENT: AssessmentPlanSupportingDocumentsListener
--->

<cfcomponent name="AssessmentPlanSupportingDocumentsListener" displayname="AssessmentPlanSupportingDocumentsListener" output="false" 
		extends="MachII.framework.Listener" 
		hint="AssessmentPlanSupportingDocumentsListener">
	
	<cffunction name="configure" access="public" output="false" 
			returntype="void" 
			hint="Configures this listener as part of the Mach-II framework">
		<!--- do nothing for now --->
		<cfset var sf = getProperty("ServiceFactory")>
		

		 <cfset variables.AssessmentPlanSupportingDocumentsService 	= sf.getBean('AssessmentPlanSupportingDocumentsService') /> 
	</cffunction>

	
	<cffunction name="getOutcomeSupportingDocs" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfreturn variables.AssessmentPlanSupportingDocumentsService.getOutcomeSupportingDocs(outcomeID=arguments.event.getArg("outcomeID")) >
	</cffunction>

</cfcomponent>