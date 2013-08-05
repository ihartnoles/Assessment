<!---
	COMPONENT: departmentalPerformanceReviewListener
--->

<cfcomponent name="departmentalPerformanceReviewListener" displayname="departmentalPerformanceReviewListener" output="false" 
		extends="MachII.framework.Listener" 
		hint="departmentalPerformanceReviewListener">
	
	<cffunction name="configure" access="public" output="false" 
			returntype="void" 
			hint="Configures this listener as part of the Mach-II framework">
		<!--- do nothing for now --->
		<cfset var sf = getProperty("ServiceFactory")>
		

		 <cfset variables.departmentalPerformanceReviewService 	= sf.getBean('departmentalPerformanceReviewService') /> 
	</cffunction>

	<cffunction name="getReviewPeriods" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />

		<cfreturn variables.departmentalPerformanceReviewService.getReviewPeriods(ReportingUnitID=arguments.event.getArg("ReportingUnitID")) >
	</cffunction>

	<cffunction name="getDeptReviewDetails" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />

		<!---
		<cfdump var="#request.event.getArgs()#" abort="true" label="@@deptPerfReviewListener" />
		--->

		<cfreturn variables.departmentalPerformanceReviewService.getDeptReviewDetails(reviewID=arguments.event.getArg("reviewID")) >
	</cffunction>
    
</cfcomponent>