<!---
	COMPONENT: AssessmentPlanOutcomeListener
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


	<cffunction name="saveOutcome" access="public" output="false" 
			returntype="boolean" >
		
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<!--- 	
		<cfdump var="#request.event.getArgs()#" abort="false" label="@@AssPlanOutcomeListener" />
		--->

		<cfscript>
			local.args = {};

			//default to 0 since this is a new outcome
			local.args.outcomeID = arguments.event.getArg('outcomeID',0);
			local.args.OutcomeResources = "" ;


			if (arguments.event.isArgDefined('planID') && len(trim( arguments.event.getArg('planID') )) ) {
 				local.args.planID = request.event.getArg('planID');
  			}

			if (arguments.event.isArgDefined('outcomecriterion') && len(trim( arguments.event.getArg('outcomecriterion') )) ) {
 				local.args.outcomecriterion = request.event.getArg('outcomecriterion');
  			}

  			if (arguments.event.isArgDefined('outcomedescription') && len(trim( arguments.event.getArg('outcomedescription') )) ) {
 				local.args.outcomedescription = request.event.getArg('outcomedescription');
  			}

  			if (arguments.event.isArgDefined('outcomemethod') && len(trim( arguments.event.getArg('outcomemethod') )) ) {
 				local.args.outcomemethod = request.event.getArg('outcomemethod');
  			}

  			if (arguments.event.isArgDefined('outcomeplanningimprovement') && len(trim( arguments.event.getArg('outcomeplanningimprovement') )) ) {
 				local.args.outcomeplanningimprovement = request.event.getArg('outcomeplanningimprovement');
  			}

  			if (arguments.event.isArgDefined('outcomeresults') && len(trim( arguments.event.getArg('outcomeresults') )) ) {
 				local.args.outcomeresults = request.event.getArg('outcomeresults');
  			}

  			if (arguments.event.isArgDefined('outcomestrategy') ) {
 				local.args.outcomestrategy = request.event.getArg('outcomestrategy');
  			}

  			if (local.args.outcomeID EQ 0) {
				//TO DO: Determine and set OutcomeOrder; The query grabs the MAX and increments by 1
	  			local.maxOutcomeOrder = variables.assessmentPlanOutcomesService.getMAXOutcomeOrder(planID = local.args.planID);
	  			// set outcome order
	  			local.args.OutcomeOrder = local.maxOutcomeOrder;

  			} else {

  				if (arguments.event.isArgDefined('OutcomeOrder') ) {
 					local.args.OutcomeOrder = request.event.getArg('OutcomeOrder');
  				}
  			}
  			 				
  			
  			//create the outcomebean
  			local.outcomeBean = variables.assessmentPlanOutcomesService.createassessmentPlanOutcomes(argumentCollection = local.args);

  			//writeDump(var="#local#", abort="true", label="@@assplanOutcomeListener");

			return variables.assessmentPlanOutcomesService.saveassessmentPlanOutcomes(local.outcomeBean);
		</cfscript>

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