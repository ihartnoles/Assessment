<cfquery name="resp" datasource="Assessment">
	select * from organizationSuperDivision
    where SuperDivisionID <> -1
</cfquery>


<cfscript>

if ( isDefined("mark") AND isDefined("model") ){
	
	writeOutput("two for the road");

} else if (isDefined("mark") AND mark eq "bmw") {
	
	response = {};
	
	for (x = 1; x <= resp.RecordCount; x=x+1) { 
    	StructInsert(response, resp.SuperDivisionID[x], resp.superdivisionname[x]);
	}
	

	writeOutput(serializeJSON(response));

} else {
	


	writeOutput("Hmmm");
}
</cfscript>