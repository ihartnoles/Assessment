
<cfquery name="getIDS" datasource="Assessment">
	SELECT      ReportingUnit.ReportingUnitID, PlanID
	FROM            ReportingUnit INNER JOIN
	                         AssessmentPlan ON ReportingUnit.ReportingUnitID = AssessmentPlan.ReportingUnitID
	ORDER BY ReportingUnit.ReportingUnitID, PlanID DESC
</cfquery>

<!--- THIS IS TO BACKFILL the existing AssessmentPlanChecklistRatings 
<cfloop query="getIDS">
	<cfoutput>
		reportingUnitId: #reportingUnitID#  planID:#PlanID# <br>
		<cfloop from="1" to="11" index="i">
			<cfquery name="populate" datasource="Assessment">
				INSERT INTO AssessmentPlanChecklistRating(PlanID,ReportingUnitID,ChecklistTypeID,Rating)
		    	VALUES( #PlanID#,#reportingUnitID#,#i#,NULL)
	    	</cfquery>
	    </cfloop>
    	<hr>
	</cfoutput>
</cfloop>
--->