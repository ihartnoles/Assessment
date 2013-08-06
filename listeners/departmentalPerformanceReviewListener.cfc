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

	<cffunction name="saveDeptReviewDetails" access="public" output="false" 
			returntype="void" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />

		<cfset local.successEvent 		  = "showDeptReview" />
		<cfset local.reviewID 	  		  = request.event.getArg('reviewID') />
		<cfset local.reportingUnitID 	  = request.event.getArg('reportingUnitID') />
		<cfset local.reviewPeriod 		  = request.event.getArg('reviewPeriod') />

		<!--- 
		<cfdump var="#request.event.getArgs()#" abort="true" label="@@deptPerfReviewListener_1" />
		--->

		<!--- create the bean --->
		<cfset local.ReviewBean = variables.departmentalPerformanceReviewService.createdepartmentalPerformanceReview(argumentCollection=request.event.getArgs()) />

		<!--- set additional properties --->
		<cfset local.ReviewBean.setActivityDate(Now()) />
		<cfset local.ReviewBean.setReviewPeriod(local.reviewPeriod) />

		<!---		
		<cfdump var="#local.ReviewBean#" abort="true" label="@@deptPerfReviewListener_2" />
		--->

		<!--- save the bean --->
		<cfset local.saveBean = variables.departmentalPerformanceReviewService.savedepartmentalPerformanceReview(local.ReviewBean) />

		<cfif local.saveBean>
			<cfset redirectEvent( arguments.event.getArg('successEvent','showDeptReview'),{reviewID = local.reviewID, reportingUnitID = local.reportingUnitID }) />
		<cfelse>
			<cfset redirectEvent( arguments.event.getArg('successEvent','showDeptReview'),{reviewID = local.reviewID, reportingUnitID = local.reportingUnitID }) />
		</cfif>	
	</cffunction>

    
</cfcomponent>