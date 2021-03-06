
<cfcomponent displayname="assessmentPlanWorkflowDAO" hint="table ID column = RecordID">

	<cffunction name="init" access="public" output="false" returntype="assessmentPlanWorkflowDAO">
		<cfargument name="dsn" type="string" required="true">
		<cfset variables.dsn = arguments.dsn>
		<cfreturn this>
	</cffunction>
	
	<cffunction name="create" access="public" output="false" returntype="boolean">
		<cfargument name="assessmentPlanWorkflow" type="assessmentPlanWorkflow" required="true" />

		<cfset var qCreate = "" />
		<cftry>
			<cfquery name="qCreate" datasource="#variables.dsn#">
				INSERT INTO AssessmentPlanWorkflow
					(
					PlanType,
					WorkflowStep,
					WorkflowStepDescription,
					WorkflowStepEmailInstructions,
					WorkflowStepInstructions
					)
				VALUES
					(
					<cfqueryparam value="#arguments.assessmentPlanWorkflow.getPlanType()#" CFSQLType="cf_sql_integer" null="#not len(arguments.assessmentPlanWorkflow.getPlanType())#" />,
					<cfqueryparam value="#arguments.assessmentPlanWorkflow.getWorkflowStep()#" CFSQLType="cf_sql_integer" />,
					<cfqueryparam value="#arguments.assessmentPlanWorkflow.getWorkflowStepDescription()#" CFSQLType="cf_sql_varchar" />,
					<cfqueryparam value="#arguments.assessmentPlanWorkflow.getWorkflowStepEmailInstructions()#" CFSQLType="cf_sql_varchar" null="#not len(arguments.assessmentPlanWorkflow.getWorkflowStepEmailInstructions())#" />,
					<cfqueryparam value="#arguments.assessmentPlanWorkflow.getWorkflowStepInstructions()#" CFSQLType="cf_sql_varchar" null="#not len(arguments.assessmentPlanWorkflow.getWorkflowStepInstructions())#" />
					)
			</cfquery>
			<cfcatch type="database">
				<cfreturn false />
			</cfcatch>
		</cftry>
		<cfreturn true />
	</cffunction>

	<cffunction name="read" access="public" output="false" returntype="void">
		<cfargument name="assessmentPlanWorkflow" type="assessmentPlanWorkflow" required="true" />

		<cfset var qRead = "" />
		<cfset var strReturn = structNew() />
		<cftry>
			<cfquery name="qRead" datasource="#variables.dsn#">
				SELECT
					RecordID,
					PlanType,
					WorkflowStep,
					WorkflowStepDescription,
					WorkflowStepEmailInstructions,
					WorkflowStepInstructions
				FROM	AssessmentPlanWorkflow
				WHERE	RecordID = <cfqueryparam value="#arguments.assessmentPlanWorkflow.getRecordID()#" CFSQLType="cf_sql_integer" />
			</cfquery>
			<cfcatch type="database">
				<!--- leave the bean as is and set an empty query for the conditional logic below --->
				<cfset qRead = queryNew("id") />
			</cfcatch>
		</cftry>
		<cfif qRead.recordCount>
			<cfset strReturn = queryRowToStruct(qRead)>
			<cfset arguments.assessmentPlanWorkflow.init(argumentCollection=strReturn)>
		</cfif>
	</cffunction>

	<cffunction name="update" access="public" output="false" returntype="boolean">
		<cfargument name="assessmentPlanWorkflow" type="assessmentPlanWorkflow" required="true" />

		<cfset var qUpdate = "" />
		<cftry>
			<cfquery name="qUpdate" datasource="#variables.dsn#">
				UPDATE	AssessmentPlanWorkflow
				SET
					PlanType = <cfqueryparam value="#arguments.assessmentPlanWorkflow.getPlanType()#" CFSQLType="cf_sql_integer" null="#not len(arguments.assessmentPlanWorkflow.getPlanType())#" />,
					WorkflowStep = <cfqueryparam value="#arguments.assessmentPlanWorkflow.getWorkflowStep()#" CFSQLType="cf_sql_integer" />,
					WorkflowStepDescription = <cfqueryparam value="#arguments.assessmentPlanWorkflow.getWorkflowStepDescription()#" CFSQLType="cf_sql_varchar" />,
					WorkflowStepEmailInstructions = <cfqueryparam value="#arguments.assessmentPlanWorkflow.getWorkflowStepEmailInstructions()#" CFSQLType="cf_sql_varchar" null="#not len(arguments.assessmentPlanWorkflow.getWorkflowStepEmailInstructions())#" />,
					WorkflowStepInstructions = <cfqueryparam value="#arguments.assessmentPlanWorkflow.getWorkflowStepInstructions()#" CFSQLType="cf_sql_varchar" null="#not len(arguments.assessmentPlanWorkflow.getWorkflowStepInstructions())#" />
				WHERE	RecordID = <cfqueryparam value="#arguments.assessmentPlanWorkflow.getRecordID()#" CFSQLType="cf_sql_integer" />
			</cfquery>
			<cfcatch type="database">
				<cfreturn false />
			</cfcatch>
		</cftry>
		<cfreturn true />
	</cffunction>

	<cffunction name="delete" access="public" output="false" returntype="boolean">
		<cfargument name="assessmentPlanWorkflow" type="assessmentPlanWorkflow" required="true" />

		<cfset var qDelete = "">
		<cftry>
			<cfquery name="qDelete" datasource="#variables.dsn#">
				DELETE FROM	AssessmentPlanWorkflow 
				WHERE	RecordID = <cfqueryparam value="#arguments.assessmentPlanWorkflow.getRecordID()#" CFSQLType="cf_sql_integer" />
			</cfquery>
			<cfcatch type="database">
				<cfreturn false />
			</cfcatch>
		</cftry>
		<cfreturn true />
	</cffunction>

	<cffunction name="exists" access="public" output="false" returntype="boolean">
		<cfargument name="assessmentPlanWorkflow" type="assessmentPlanWorkflow" required="true" />

		<cfset var qExists = "">
		<cfquery name="qExists" datasource="#variables.dsn#" maxrows="1">
			SELECT count(1) as idexists
			FROM	AssessmentPlanWorkflow
			WHERE	RecordID = <cfqueryparam value="#arguments.assessmentPlanWorkflow.getRecordID()#" CFSQLType="cf_sql_integer" />
		</cfquery>

		<cfif qExists.idexists>
			<cfreturn true />
		<cfelse>
			<cfreturn false />
		</cfif>
	</cffunction>

	<cffunction name="save" access="public" output="false" returntype="boolean">
		<cfargument name="assessmentPlanWorkflow" type="assessmentPlanWorkflow" required="true" />
		
		<cfset var success = false />
		<cfif exists(arguments.assessmentPlanWorkflow)>
			<cfset success = update(arguments.assessmentPlanWorkflow) />
		<cfelse>
			<cfset success = create(arguments.assessmentPlanWorkflow) />
		</cfif>
		
		<cfreturn success />
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
