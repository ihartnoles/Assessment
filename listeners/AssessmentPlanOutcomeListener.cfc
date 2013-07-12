<!---
	COMPONENT: AssessmentePlanListener
--->

<cfcomponent name="AssessmentPlanOutcomeListener" displayname="AssessmentPlanOutcomeListener" output="false" 
		extends="MachII.framework.Listener" 
		hint="AssessmentPlanOutcomeListener">
	
	<cffunction name="configure" access="public" output="false" 
			returntype="void" 
			hint="Configures this listener as part of the Mach-II framework">
		<!--- do nothing for now --->
		<cfset var sf = getProperty("ServiceFactory")>
		

		 <cfset variables.assessmentPlanOutcomesService 	= sf.getBean('assessmentPlanOutcomesService') /> 
	</cffunction>

	<cffunction name="countOutcomes" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />

		<cfreturn variables.assessmentPlanOutcomesService.countOutcomes(PlanID=arguments.event.getArg("PlanID")) >
	</cffunction>

	<cffunction name="getOutcomeDetail" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfreturn variables.assessmentPlanOutcomesService.getOutcomeDetail(outcomeID=arguments.event.getArg("outcomeID")) >
	</cffunction>

<!---
	<cffunction name="getAssessmentPlanDetails" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		<cfreturn variables.assessmentPlanOutcomesService.getAssessmentPlanDetails(ReportingUnitID=arguments.event.getArg("ReportingUnitID"),
																			PlanID=arguments.event.getArg("PlanID")) >
	</cffunction>
 --->

</cfcomponent>