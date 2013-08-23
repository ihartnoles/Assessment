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

	<cfscript>
	/**
	 * Removes HTML from the string.
	 * v2 - Mod by Steve Bryant to find trailing, half done HTML.        
	 * v4 mod by James Moberg - empties out script/style blocks
	 * 
	 * @param string      String to be modified. (Required)
	 * @return Returns a string. 
	 * @author Raymond Camden (ray@camdenfamily.com) 
	 * @version 4, October 4, 2010 
	 */
	function stripHTML(str) {
	    str = reReplaceNoCase(str, "<*style.*?>(.*?)</style>","","all");
	    str = reReplaceNoCase(str, "<*script.*?>(.*?)</script>","","all");

	    str = reReplaceNoCase(str, "<.*?>","","all");
	    //get partial html in front
	    str = reReplaceNoCase(str, "^.*?>","");
	    //get partial html at end
	    str = reReplaceNoCase(str, "<.*$","");
	    return trim(str);
	}
	</cfscript>

</cfcomponent>
	