<cfcomponent output="false"  displayname="String Helper">
	
	<cffunction name="stripAllBut" access="public" output="false" returntype="string">
		<cfargument name="str"	type="string" required="true" />
		<cfargument name="strip"		type="string" required="true" />

		<cfscript>
			var badList = "\";
			var okList = "\\";
			var bCS = true;

			if(arrayLen(arguments) gte 3) bCS = arguments[3];

			strip = replaceList(strip,badList,okList);
			
			if(bCS) return rereplace(str,"[^#strip#]","","all");
			else return rereplaceNoCase(str,"[^#strip#]","","all");
		</cfscript>
	</cffunction>

</cfcomponent>
	