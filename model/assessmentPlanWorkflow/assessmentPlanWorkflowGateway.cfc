
<cfcomponent displayname="assessmentPlanWorkflowGateway" output="false">
	<cffunction name="init" access="public" output="false" returntype="assessmentPlanWorkflowGateway">
		<cfargument name="dsn" type="string" required="true" />
		<cfset variables.dsn = arguments.dsn />
		<cfreturn this />
	</cffunction>
	
	<cffunction name="getByAttributesQuery" access="public" output="false" returntype="query">
		<cfargument name="RecordID" type="numeric" required="false" />
		<cfargument name="PlanType" type="numeric" required="false" />
		<cfargument name="WorkflowStep" type="numeric" required="false" />
		<cfargument name="WorkflowStepDescription" type="string" required="false" />
		<cfargument name="WorkflowStepEmailInstructions" type="string" required="false" />
		<cfargument name="WorkflowStepInstructions" type="string" required="false" />
		<cfargument name="orderby" type="string" required="false" />
		
		<cfset var qList = "" />		
		<cfquery name="qList" datasource="#variables.dsn#">
			SELECT
				RecordID,
				PlanType,
				WorkflowStep,
				WorkflowStepDescription,
				WorkflowStepEmailInstructions,
				WorkflowStepInstructions
			FROM	AssessmentPlanWorkflow
			WHERE	0=0
		
		<cfif structKeyExists(arguments,"RecordID") and len(arguments.RecordID)>
			AND	RecordID = <cfqueryparam value="#arguments.RecordID#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"PlanType") and len(arguments.PlanType)>
			AND	PlanType = <cfqueryparam value="#arguments.PlanType#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"WorkflowStep") and len(arguments.WorkflowStep)>
			AND	WorkflowStep = <cfqueryparam value="#arguments.WorkflowStep#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"WorkflowStepDescription") and len(arguments.WorkflowStepDescription)>
			AND	WorkflowStepDescription = <cfqueryparam value="#arguments.WorkflowStepDescription#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"WorkflowStepEmailInstructions") and len(arguments.WorkflowStepEmailInstructions)>
			AND	WorkflowStepEmailInstructions = <cfqueryparam value="#arguments.WorkflowStepEmailInstructions#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"WorkflowStepInstructions") and len(arguments.WorkflowStepInstructions)>
			AND	WorkflowStepInstructions = <cfqueryparam value="#arguments.WorkflowStepInstructions#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments, "orderby") and len(arguments.orderBy)>
			ORDER BY #arguments.orderby#
		</cfif>
		</cfquery>
		
		<cfreturn qList />
	</cffunction>

	<cffunction name="getPlanStatuses" access="public" output="false" returntype="query">
			
		<cfset var qList = "" />		
		<cfquery name="qList" datasource="#variables.dsn#" cachedwithin="#CreateTimeSpan(1,0,0,0)#">
			select 
				distinct workflowstep, workflowstepdescription 
			from
			AssessmentPlanWorkflow
		</cfquery>
				
		<cfreturn qList />
	</cffunction>

	<cffunction name="getByAttributes" access="public" output="false" returntype="array">
		<cfargument name="RecordID" type="numeric" required="false" />
		<cfargument name="PlanType" type="numeric" required="false" />
		<cfargument name="WorkflowStep" type="numeric" required="false" />
		<cfargument name="WorkflowStepDescription" type="string" required="false" />
		<cfargument name="WorkflowStepEmailInstructions" type="string" required="false" />
		<cfargument name="WorkflowStepInstructions" type="string" required="false" />
		<cfargument name="orderby" type="string" required="false" />
		
		<cfset var qList = getByAttributesQuery(argumentCollection=arguments) />		
		<cfset var arrObjects = arrayNew(1) />
		<cfset var tmpObj = "" />
		<cfset var i = 0 />
		<cfloop from="1" to="#qList.recordCount#" index="i">
			<cfset tmpObj = createObject("component","assessmentPlanWorkflow").init(argumentCollection=queryRowToStruct(qList,i)) />
			<cfset arrayAppend(arrObjects,tmpObj) />
		</cfloop>
				
		<cfreturn arrObjects />
	</cffunction>

	<cffunction name="queryRowToStruct" access="private" output="false" returntype="struct">
		<cfargument name="qry" type="query" required="true">
		
		<cfscript>
			/**
			 * Makes a row of a query into a structure.
			 * 
			 * @param query 	 The query to work with. 
			 * @param row 	 Row number to check. Defaults to row 1. 
			 * @return Returns a structure. 
			 * @author Nathan Dintenfass (nathan@changemedia.com) 
			 * @version 1, December 11, 2001 
			 */
			//by default, do this to the first row of the query
			var row = 1;
			//a var for looping
			var ii = 1;
			//the cols to loop over
			var cols = listToArray(qry.columnList);
			//the struct to return
			var stReturn = structnew();
			//if there is a second argument, use that for the row number
			if(arrayLen(arguments) GT 1)
				row = arguments[2];
			//loop over the cols and build the struct from the query row
			for(ii = 1; ii lte arraylen(cols); ii = ii + 1){
				stReturn[cols[ii]] = qry[cols[ii]][row];
			}		
			//return the struct
			return stReturn;
		</cfscript>
	</cffunction>

</cfcomponent>
