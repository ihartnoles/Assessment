
<cfcomponent displayname="assessmentplansGateway" output="false">
	<cffunction name="init" access="public" output="false" returntype="assessmentplansGateway">
		<cfargument name="dsn" type="string" required="true" />
		<cfset variables.dsn = arguments.dsn />
		<cfreturn this />
	</cffunction>
	
	<cffunction name="getByAttributesQuery" access="public" output="false" returntype="query">
		<cfargument name="PlanID" type="numeric" required="false" />
		<cfargument name="ReportingUnitID" type="numeric" required="false" />
		<cfargument name="PlanPeriod" type="string" required="false" />
		<cfargument name="PlanType" type="numeric" required="false" />
		<cfargument name="PlanStatus" type="numeric" required="false" />
		<cfargument name="PlanInitialReporter" type="string" required="false" />
		<cfargument name="PlanLastChangeDate" type="date" required="false" />
		<cfargument name="PlanLockDate" type="date" required="false" />
		<cfargument name="orderby" type="string" required="false" />
		
		<cfset var qList = "" />		
		<cfquery name="qList" datasource="#variables.dsn#">
			SELECT
				PlanID,
				ReportingUnitID,
				PlanPeriod,
				PlanType,
				PlanStatus,
				PlanInitialReporter,
				PlanLastChangeDate,
				PlanLockDate
			FROM	AssessmentPlan
			WHERE	0=0
		
		<cfif structKeyExists(arguments,"PlanID") and len(arguments.PlanID)>
			AND	PlanID = <cfqueryparam value="#arguments.PlanID#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"ReportingUnitID") and len(arguments.ReportingUnitID)>
			AND	ReportingUnitID = <cfqueryparam value="#arguments.ReportingUnitID#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"PlanPeriod") and len(arguments.PlanPeriod)>
			AND	PlanPeriod = <cfqueryparam value="#arguments.PlanPeriod#" CFSQLType="cf_sql_char" />
		</cfif>
		<cfif structKeyExists(arguments,"PlanType") and len(arguments.PlanType)>
			AND	PlanType = <cfqueryparam value="#arguments.PlanType#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"PlanStatus") and len(arguments.PlanStatus)>
			AND	PlanStatus = <cfqueryparam value="#arguments.PlanStatus#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"PlanInitialReporter") and len(arguments.PlanInitialReporter)>
			AND	PlanInitialReporter = <cfqueryparam value="#arguments.PlanInitialReporter#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"PlanLastChangeDate") and len(arguments.PlanLastChangeDate)>
			AND	PlanLastChangeDate = <cfqueryparam value="#arguments.PlanLastChangeDate#" CFSQLType="cf_sql_timestamp" />
		</cfif>
		<cfif structKeyExists(arguments,"PlanLockDate") and len(arguments.PlanLockDate)>
			AND	PlanLockDate = <cfqueryparam value="#arguments.PlanLockDate#" CFSQLType="cf_sql_timestamp" />
		</cfif>
		<cfif structKeyExists(arguments, "orderby") and len(arguments.orderBy)>
			ORDER BY #arguments.orderby#
		</cfif>
		</cfquery>
		
		<cfreturn qList />
	</cffunction>


	<cffunction name="getAssessmentPlanPeriodsQuery" access="public" output="false" returntype="query">
		<cfargument name="ReportingUnitID" type="numeric" required="false" />
				
		<cfset var qList = "" />		
		
		<cfquery name="qList" datasource="#variables.dsn#">
			 SELECT p.*, 
			 		t.PlanType, 
			 		t.PlanTypeDescription, 
			 		w.WorkFlowStepDescription, 
			 		w.WorkFlowStepInstructions 
			 FROM AssessmentPlan p, AssessmentPlanType t, AssessmentPlanWorkflow w  
			 WHERE 0=0 
			
			<cfif structKeyExists(arguments,"ReportingUnitID") and len(arguments.ReportingUnitID)>
				AND	p.ReportingUnitID = <cfqueryparam value="#arguments.ReportingUnitID#" CFSQLType="cf_sql_integer" />
			</cfif>

			 AND p.PlanType=t.PlanType 
			 AND p.PlanType=w.PlanType 
			 AND p.PlanStatus=w.WorkFlowStep						
		
			

			ORDER BY PlanPeriod DESC
		</cfquery>
		
		<!--- <cfdump var=#qList# abort="true" label="@assessmentplansGateway" /> --->

		<cfreturn qList />
	</cffunction>


	
	<cffunction name="getAssessmentPlanDetails" access="public" output="false" returntype="query">
		<cfargument name="ReportingUnitID" type="numeric" required="false" />
				
		<cfset var qList = "" />		
		
		<cfquery name="qList" datasource="#variables.dsn#">
			 SELECT 
			 	 a.*, 
			 	 ProgramName, 
			 	 ProgramDegreeLevel, 
			 	 ProgramDegree, 
			 	 ProgramCIP,    
			 	 DeptName, 
			 	 SamasDeptID,      
			 	 DivisionName, 
			 	 DivisionAbv, 
			 	 SamasDivisionID,        
			 	 SuperDivisionName, 
			 	 OrganizationName  
			 FROM ReportingUnit a, OrganizationProgram p, OrganizationDept d, OrganizationDivision di,    OrganizationSuperDivision s, Organization O  
			 WHERE  a.ProgramID = p.ProgramID And           a.DeptID = d.DeptID And a.DivisionID = di.DivisionID 
			 And a.SuperDivisionID = s.SuperDivisionID 
			 And a.OrganizationID = o.OrganizationID  
			 <cfif structKeyExists(arguments,"ReportingUnitID") and len(arguments.ReportingUnitID)>
				AND	a.ReportingUnitID = <cfqueryparam value="#arguments.ReportingUnitID#" CFSQLType="cf_sql_integer" />
			</cfif>
		</cfquery>
		
		<!--- <cfdump var=#qList# abort="true" label="@assessmentplansGateway" /> --->

		<cfreturn qList />
	</cffunction>

	<cffunction name="getByAttributes" access="public" output="false" returntype="array">
		<cfargument name="PlanID" type="numeric" required="false" />
		<cfargument name="ReportingUnitID" type="numeric" required="false" />
		<cfargument name="PlanPeriod" type="string" required="false" />
		<cfargument name="PlanType" type="numeric" required="false" />
		<cfargument name="PlanStatus" type="numeric" required="false" />
		<cfargument name="PlanInitialReporter" type="string" required="false" />
		<cfargument name="PlanLastChangeDate" type="date" required="false" />
		<cfargument name="PlanLockDate" type="date" required="false" />
		<cfargument name="orderby" type="string" required="false" />
		
		<cfset var qList = getByAttributesQuery(argumentCollection=arguments) />		
		<cfset var arrObjects = arrayNew(1) />
		<cfset var tmpObj = "" />
		<cfset var i = 0 />
		<cfloop from="1" to="#qList.recordCount#" index="i">
			<cfset tmpObj = createObject("component","assessmentplans").init(argumentCollection=queryRowToStruct(qList,i)) />
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
