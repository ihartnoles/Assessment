
<cfcomponent name="AssessmentPlanChecklistRatingsService" output="false">

	<cffunction name="init" access="public" output="false" returntype="AssessmentPlanChecklistRatingsService">
		<cfargument name="AssessmentPlanChecklistRatingsDAO" type="AssessmentPlanChecklistRatingsDAO" required="true" />
		<cfargument name="AssessmentPlanChecklistRatingsGateway" type="AssessmentPlanChecklistRatingsGateway" required="true" />

		<cfset variables.AssessmentPlanChecklistRatingsDAO = arguments.AssessmentPlanChecklistRatingsDAO />
		<cfset variables.AssessmentPlanChecklistRatingsGateway = arguments.AssessmentPlanChecklistRatingsGateway />

		<cfreturn this/>
	</cffunction>

	<cffunction name="createAssessmentPlanChecklistRatings" access="public" output="false" returntype="AssessmentPlanChecklistRatings">
		<cfargument name="ChecklistRatingID" type="numeric" required="true" />
		<cfargument name="PlanID" type="numeric" required="false" />
		<cfargument name="ReportingUnitID" type="numeric" required="false" />
		<cfargument name="ChecklistTypeID" type="numeric" required="false" />
		<cfargument name="Rating" type="string" required="false" />
		
			
		<cfset var AssessmentPlanChecklistRatings = createObject("component","AssessmentPlanChecklistRatings").init(argumentCollection=arguments) />
		<cfreturn AssessmentPlanChecklistRatings />
	</cffunction>

	<cffunction name="getAssessmentPlanChecklistRatings" access="public" output="false" returntype="AssessmentPlanChecklistRatings">
		<cfargument name="ChecklistRatingID" type="numeric" required="true" />
		
		<cfset var AssessmentPlanChecklistRatings = createAssessmentPlanChecklistRatings(argumentCollection=arguments) />
		<cfset variables.AssessmentPlanChecklistRatingsDAO.read(AssessmentPlanChecklistRatings) />
		<cfreturn AssessmentPlanChecklistRatings />
	</cffunction>

	<cffunction name="getAssessmentPlanChecklistRatingss" access="public" output="false" returntype="array">
		<cfargument name="ChecklistRatingID" type="numeric" required="false" />
		<cfargument name="PlanID" type="numeric" required="false" />
		<cfargument name="ReportingUnitID" type="numeric" required="false" />
		<cfargument name="ChecklistTypeID" type="numeric" required="false" />
		<cfargument name="Rating" type="string" required="false" />
		
		<cfreturn variables.AssessmentPlanChecklistRatingsGateway.getByAttributes(argumentCollection=arguments) />
	</cffunction>

	<cffunction name="saveAssessmentPlanChecklistRatings" access="public" output="false" returntype="boolean">
		<cfargument name="AssessmentPlanChecklistRatings" type="AssessmentPlanChecklistRatings" required="true" />

		<cfreturn variables.AssessmentPlanChecklistRatingsDAO.save(AssessmentPlanChecklistRatings) />
	</cffunction>

	<cffunction name="deleteAssessmentPlanChecklistRatings" access="public" output="false" returntype="boolean">
		<cfargument name="ChecklistRatingID" type="numeric" required="true" />
		
		<cfset var AssessmentPlanChecklistRatings = createAssessmentPlanChecklistRatings(argumentCollection=arguments) />
		<cfreturn variables.AssessmentPlanChecklistRatingsDAO.delete(AssessmentPlanChecklistRatings) />
	</cffunction>

	<cffunction name="saveRatings" access="public" output="false" returntype="boolean">
		<cfargument name="ChecklistRatingID" type="numeric" required="false" />
		<cfargument name="PlanID" type="numeric" required="false" />
		<cfargument name="ReportingUnitID" type="numeric" required="false" />
		<!--- <cfargument name="ChecklistTypeID" type="numeric" required="false" /> --->
		<cfargument name="Rating" type="string" required="false" />

		<!--- this will have to change to accomodate existing ratings --->
		<cfset local.ChecklistRatingID = 0 />
		<cfset local.PlanID = request.event.getArg('planID') />
		<cfset local.ReportingUnitID = request.event.getArg('ReportingUnitID') />

		<cfloop collection="#request.event.getArgs()#" item="idx">
			
			<!--- if you find a RATING input parse it out --->
			<cfif idx CONTAINS 'RATING'>
				
				<cfset local.checklistTypeID = ListLast(idx,"-") />
				<cfset local.rating = request.event.getArg(idx)/>

				<!---
				<cfdump var="#local.checklistTypeID#" abort="false"  /><br>
				<cfdump var="#local.rating#" abort="false"  /></br>
				<cfdump var="#idx#" abort="false"  />
				<cfdump var="#request.event.getArg(idx)#" abort="false"  />
				--->
				<!--- create the bean --->
				<cfset local.RatingsBean = createAssessmentPlanChecklistRatings( ChecklistRatingID  = local.checklistRatingID,
																				 PlanID 		    = local.PlanID,
																				 ReportingUnitID	= local.ReportingUnitID,
																				 ChecklistTypeID 	= local.ChecklistTypeID,
																				 rating 			= local.rating) />

				<!---
				<cfdump var="#local.RatingsBean#" abort="true" label="@@RatingsService" />
				--->
				
				<!--- save the bean --->
				<cfset local.saveRatingsBean = variables.AssessmentPlanChecklistRatingsDAO.save(local.RatingsBean) />

			</cfif>
		</cfloop>

		<!---
		<cfdump var="#request.event.getArgs()#" abort="true" label="@@RatingsService" />
		--->
		<cfreturn local.saveRatingsBean />
		
	</cffunction>


	<cffunction name="onMissingMethod" access="public" output="false" >
		<cfargument name="missingMethodName" type="string" hint="Name of missing method" />
		<cfargument name="missingMethodArguments" type="any" hint="Arguments passed to the missing method, maybe a named arg set or a numerically indexed set" />

		<cfset var ret = ""/>
		<cfinvoke component="#variables.AssessmentPlanChecklistRatingsGateway#" 
				  method="#arguments.missingMethodName#" 
				  argumentcollection="#arguments.missingMethodArguments#" 
				  returnvariable="ret"/>
		<cfreturn ret />
	</cffunction>
</cfcomponent>
