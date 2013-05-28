component output="false" hint="I am a collection of functions for working with lists"{

	function removeForeignCharacters(required string inString){
		var str = ReReplaceNoCase(arguments.inString,"�|�|�","e","all");
		str = ReReplaceNoCase(str,"�|�|�|�|�|�","a","all");
		str = ReReplaceNoCase(str,"�|�|�|�|�|�","o","all");
		return ReReplaceNoCase(str,"�","n","all");
	}


	/**
	*This function will remove any reserved characters from a filename string and replace any spaces with underscores.
	* @param filename 	 Filename. (Required)
	* @return Returns a string. 
	* @author Jason Sheedy (&#106;&#97;&#115;&#111;&#110;&#64;&#106;&#109;&#112;&#106;&#46;&#110;&#101;&#116;) 
	* @version 1, January 19, 2006
	* @modified by Dominic O'Connor November 15, 2011 (added removeForeignCharacters) 
	**/
	function makeFileNameSafe(required string inString){
		var str = removeForeignCharacters(arguments.inString);
		str = reReplace(str,"[""''##/\\%&`@~!,:;=<>\+\*\?\[\]\^\$\(\)\{\}\|]","","all");
		return replace(str," ","_","all");
	}


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
	function stripHTML(required string inString) {
	    var str = reReplaceNoCase(arguments.inString, "<*style.*?>(.*?)</style>","","all");
	    str = reReplaceNoCase(str, "<*script.*?>(.*?)</script>","","all");
	    str = reReplaceNoCase(str, "<.*?>","","all");
	    
	    //get partial html in front
	    str = reReplaceNoCase(str, "^.*?>","");
	    
	    //get partial html at end
	    return reReplaceNoCase(str, "<.*$","");
	}


	/**
	* Remove "smart" characters, i.e. smart quotes, apostophes, and quotes from MSWord copy/pastes.
	*
	* @param inString      String to format. (Required)
	* @return Returns a string.
	* @author Dominic O'Connor (dominic@interfolio.com)
	* @version 1, 4/5/06
	* @version 2, 8/17/09
	*/
	function removeSmartChars(required string inString) {
		var newString = REReplace(arguments.instring,"#chr(8216)#|#chr(8217)#|#chr(8219)#","#chr(39)#","ALL");
		newString     = REReplace(newString,"#chr(8220)#|#chr(8221)#|#chr(147)#|#chr(148)#","#chr(34)#","ALL");
		return REReplace(newString,"#chr(151)#|#chr(8211)#|#chr(8212)#",'-',"ALL");
	}
	
	
	/**
	* Similar to xmlFormat() but replaces all characters not on the &quot;good&quot; list as opposed to characters specifically on the &quot;bad&quot; list.
	*
	* @param inString      String to format. (Required)
	* @return Returns a string.
	* @author Samuel Neff (sam@serndesign.com)
	* @version 1, January 12, 2004
	* @updated by Dominic O'Connor 8/17, Jean Ducrot 9JUL2012
	*/
	string function xmlFormat3(required string inString) {
		var goodChars = "&!@##$%^*()0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~[]{};:,./?\| -_=+#chr(13)##chr(10)##chr(9)##chr(39)##chr(34)#";
		var newInString = trim(inString);
		var i = 1;
		var c = "";
		var s = "";
		
		newInString = removeDumbChars(newInString);
		newInString = removeSmartChars(newInString);
		newInString = xmlFormat(newInString,true); // this is necessary for proper display of & in bookmarks we don't want the ASCII representation there 
		
		for (i=1; i LTE len(newInString); i=i+1) {
			c = mid(newInString, i, 1);
			
			if (find(c, goodChars)) {
				s = s & c;
			} else {
				s = s & "&##" & asc(c) & ";";
			}
		}
		return s;
	}
	
	
	/**
	* Fix "dumb" characters: MySQL turns MSWord smart quotes, etc into ugly strings such as â??
	*
	* @param inString      String to format. (Required)
	* @return Returns a string.
	* @author Dominic O'Connor (dominic@interfolio.com)
	* @version 1, 8/17/09
	*/
	private string function removeDumbChars(required string inString) {
		var newString = inString;
		
		newString = rereplace(newString, '#chr(226)#\?\?[a-zA-Z\.]#chr(226)#\?#chr(65533)#','"\1"');
		newString = rereplace(newString, '#chr(226)#\?[\?#chr(65533)#]',"'","all");
		newString = rereplace(newString, '#chr(226)#[\?#chr(8364)#]#chr(8482)#', "'",'all');
		newString = rereplace(newString, '#chr(226)#[\?#chr(8364)#]#chr(166)#','...','all');
		newString = rereplace(newString, '#chr(226)#[\?#chr(8364)#]#chr(8221)#','-','all');
		newString = rereplace(newString, '#chr(226)#[\?#chr(8364)#]#chr(339)#','"','all');
		newString = rereplace(newString, '#chr(226)#[\?#chr(8364)#]#chr(65533)#','"','all');
		newString = rereplace(newString, '#chr(226)#[\?#chr(8364)#]#chr(732)#',"'",'all');
		newString = rereplace(newString, '#chr(226)#[\?#chr(8364)#]#chr(203)#','-','all');
		newString = rereplace(newString, '#chr(226)#[\?#chr(8364)#]#chr(194)#','c','all');
		newString = rereplace(newString, '#chr(195)##chr(177)#','n','all');
		newString = rereplace(newString, '#chr(195)##chr(161)#','a','all');
		newString = rereplace(newString, '#chr(195)##chr(169)#','e','all');
		
		return newString;
	}
	
	
	string function removeQuotes(required string dirtyString){
		local.cleanString = replace(arguments.dirtyString,"'","","All");
		return trim(replace(local.cleanString,'"',"","All"));
	}     
	
	
	string function encodeStringForUrl(required string inString){
		local.cleanString = arguments.inString;    
		local.specialChars = arrayNew(2);
		
		// 1 - value					// 2 - replacement
		local.specialChars[1][1] = " "; local.specialChars[1][2] = "%20"; // space
		local.specialChars[2][1] = '"'; local.specialChars[2][2] = "%22"; // double quotes 
		
		for(var i = 1; i lte arraylen(local.specialChars);i++){
			local.cleanString = replaceNoCase(local.cleanString,local.specialChars[i][1],local.specialChars[i][2],"All");
		}
		
		return local.cleanString;
	} 
	
	
	string function uriEncodeString(required string inString){
		local.cleanString = arguments.inString;    
		local.specialChars = arrayNew(2);
		
		// 1 - value					// 2 - replacement
		local.specialChars[1][1] = " "; local.specialChars[1][2] = "%20"; // space
		local.specialChars[2][1] = '"'; local.specialChars[2][2] = "%22"; // double quotes 
		local.specialChars[3][1] = '&'; local.specialChars[3][2] = "%26"; // ampersand
		
		for(var i = 1; i lte arraylen(local.specialChars);i++){
			local.cleanString = replaceNoCase(local.cleanString,local.specialChars[i][1],local.specialChars[i][2],"All");
		}
		
		return local.cleanString;
	} 
	
	
	string function decodeUriString(required string inString){
		local.cleanString  = arguments.inString;    
		local.specialChars = arrayNew(2);
		
		// 1 - value						// 2 - replacement
		local.specialChars[1][1] = '%20'; 	local.specialChars[1][2] = " "; // space
		local.specialChars[2][1] = '%22'; 	local.specialChars[2][2] = '"'; // double quotes 
		local.specialChars[3][1] = '%26'; 	local.specialChars[3][2] = "&"; // ampersand
		
		for(var i = 1; i lte arraylen(local.specialChars);i++){
			local.cleanString = replaceNoCase(local.cleanString,local.specialChars[i][1],local.specialChars[i][2],"All");
		}
		
		return local.cleanString;
	} 
	
	
	string function trimString (required string dirtyString){
		return REReplace(arguments.dirtystring, "[[:cntrl:]]{2,}",chr(0), "ALL");
	}
	
	public string function formatInstitutionName(required string institutionName,
										string parentInstitutionName="",
										string department="") {
	
		//the separator punctuation between name parts
		var separator = ": ";
		
		//start with core institution name
		local.formattedInstitutionName = arguments.institutionName;
		
		//if there is a parent, prepend it
		if ( len(trim(arguments.parentInstitutionName)) gt 0 ) {
			local.formattedInstitutionName = arguments.parentInstitutionName & separator & local.formattedInstitutionName;
		}
		//if there is a department name, append it to the formatted institution name
		if ( len(trim(arguments.department)) gt 0) {
			local.formattedInstitutionName = local.formattedInstitutionName & separator & arguments.department;
		}
			
		return local.formattedInstitutionName;
	}


	/**
	 * Searches a string for email addresses.
	 * Based on the idea by Gerardo Rojas and the isEmail UDF by Jeff Guillaume.
	 * New TLDs  
	 * v3 fix by Jorge Asch
	 * 
	 * @param str      String to search. (Required)
	 * @return Returns a list. 
	 * @author Raymond Camden (ray@camdenfamily.com) 
	 * @version 3, June 13, 2011 
	 */
	function getEmails(str) {
	    var email = "(['_a-z0-9-]+(\.['_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*\.((aero|coop|info|museum|name|jobs|travel)|([a-z]{2,3})))";
	    var res = "";
	    var marker = 1;
	    var matches = "";
	    
	    matches = reFindNoCase(email,str,marker,marker);
	
	    while(matches.len[1] gt 0) {
	        res = listAppend(res,mid(str,matches.pos[1],matches.len[1]));
	        marker = matches.pos[1] + matches.len[1];
	        matches = reFindNoCase(email,str,marker,marker);        
	    }
	    return res;
	}


	/**
	* Removes All HTML from a string removing tags, script blocks, style blocks, and replacing special character code.
	*
	* @param source      String to format. (Required)
	* @return Returns a string.
	* @author Scott Bennett (scott@coldfusionguy.com)
	* @version 1, November 14, 2007
	*/
	function removeHTML(source){
	    
	    // Remove all spaces becuase browsers ignore them
	    var result = ReReplace(trim(source), "[[:space:]]{2,}", " ","ALL");
	    
	    // Remove the header
	    result = ReReplace(result, "<[[:space:]]*head.*?>.*?</head>","", "ALL");
	    
	    // remove all scripts
	    result = ReReplace(result, "<[[:space:]]*script.*?>.*?</script>","", "ALL");
	    
	    // remove all styles
	    result = ReReplace(result, "<[[:space:]]*style.*?>.*?</style>","", "ALL");
	    
	    // insert tabs in spaces of <td> tags
	    result = ReReplace(result, "<[[:space:]]*td.*?>","    ", "ALL");
	    
	    // insert line breaks in places of <BR> and <LI> tags
	    result = ReReplace(result, "<[[:space:]]*br[[:space:]]*>",chr(13), "ALL");
	    result = ReReplace(result, "<[[:space:]]*li[[:space:]]*>",chr(13), "ALL");
	    
	    // insert line paragraphs (double line breaks) in place
	    // if <P>, <DIV> and <TR> tags
	    result = ReReplace(result, "<[[:space:]]*div.*?>",chr(13), "ALL");
	    result = ReReplace(result, "<[[:space:]]*tr.*?>",chr(13), "ALL");
	    result = ReReplace(result, "<[[:space:]]*p.*?>",chr(13), "ALL");
	    
	    // Remove remaining tags like <a>, links, images,
	    // comments etc - anything thats enclosed inside < >
	    result = ReReplace(result, "<.*?>","", "ALL");
	    
	    // replace special characters:
	    result = ReReplace(result, "&nbsp;"," ", "ALL");
	    result = ReReplace(result, "&bull;"," * ", "ALL");
	    result = ReReplace(result, "&lsaquo;","<", "ALL");
	    result = ReReplace(result, "&rsaquo;",">", "ALL");
	    result = ReReplace(result, "&trade;","(tm)", "ALL");
	    result = ReReplace(result, "&frasl;","/", "ALL");
	    result = ReReplace(result, "&lt;","<", "ALL");
	    result = ReReplace(result, "&gt;",">", "ALL");
	    result = ReReplace(result, "&copy;","(c)", "ALL");
	    result = ReReplace(result, "&reg;","(r)", "ALL");
	    
	    // Remove all others. More special character conversions
	    // can be added above if needed
	    result = ReReplace(result, "&(.{2,6});", "", "ALL");
	    
	    // Thats it.
	    return result;
	
	}
	
		// function to reverse HTMLEditFormat
		function removeHTMLEntities(str)
		{
		    var lEntities = "&##xE7;,&##xF4;,&##xE2;,&Icirc;,&Ccedil;,&Egrave;,&Oacute;,&Ecirc;,&OElig,&Acirc;,&laquo;,&raquo;,&Agrave;,&Eacute;,&le;,&yacute;,&chi;,&sum;,&prime;,&yuml;,&sim;,&beta;,&lceil;,&ntilde;,&szlig;,&bdquo;,&acute;,&middot;,&ndash;,&sigmaf;,&reg;,&dagger;,&oplus;,&otilde;,&eta;,&rceil;,&oacute;,&shy;,&gt;,&phi;,&ang;,&rlm;,&alpha;,&cap;,&darr;,&upsilon;,&image;,&sup3;,&rho;,&eacute;,&sup1;,&lt;,&cent;,&cedil;,&pi;,&sup;,&divide;,&fnof;,&iquest;,&ecirc;,&ensp;,&empty;,&forall;,&emsp;,&gamma;,&iexcl;,&oslash;,&not;,&agrave;,&eth;,&alefsym;,&ordm;,&psi;,&otimes;,&delta;,&ouml;,&deg;,&cong;,&ordf;,&lsaquo;,&clubs;,&acirc;,&ograve;,&iuml;,&diams;,&aelig;,&and;,&loz;,&egrave;,&frac34;,&amp;,&nsub;,&nu;,&ldquo;,&isin;,&ccedil;,&circ;,&copy;,&aacute;,&sect;,&mdash;,&euml;,&kappa;,&notin;,&lfloor;,&ge;,&igrave;,&harr;,&lowast;,&ocirc;,&infin;,&brvbar;,&int;,&macr;,&frac12;,&curren;,&asymp;,&lambda;,&frasl;,&lsquo;,&hellip;,&oelig;,&pound;,&hearts;,&minus;,&atilde;,&epsilon;,&nabla;,&exist;,&auml;,&mu;,&frac14;,&nbsp;,&equiv;,&bull;,&larr;,&laquo;,&oline;,&or;,&euro;,&micro;,&ne;,&cup;,&aring;,&iota;,&iacute;,&perp;,&para;,&rarr;,&raquo;,&ucirc;,&omicron;,&sbquo;,&thetasym;,&ni;,&part;,&rdquo;,&weierp;,&permil;,&sup2;,&sigma;,&sdot;,&scaron;,&yen;,&xi;,&plusmn;,&real;,&thorn;,&rang;,&ugrave;,&radic;,&zwj;,&there4;,&uarr;,&times;,&thinsp;,&theta;,&rfloor;,&sub;,&supe;,&uuml;,&rsquo;,&zeta;,&trade;,&icirc;,&piv;,&zwnj;,&lang;,&tilde;,&uacute;,&uml;,&prop;,&upsih;,&omega;,&crarr;,&tau;,&sube;,&rsaquo;,&prod;,&quot;,&lrm;,&spades;,&##39;";
		    var lEntitiesChars = "ç,ô,â,Î,Ç,È,Ó,Ê,Œ,Â,«,»,À,É,?,ý,?,?,?,Ÿ,?,?,?,ñ,ß,„,´,·,–,?,®,‡,?,õ,?,?,ó,­,>,?,?,?,?,?,?,?,?,³,?,é,¹,<,¢,¸,?,?,÷,ƒ,¿,ê,?,?,?,?,?,¡,ø,¬,à,ð,?,º,?,?,?,ö,°,?,ª,‹,?,â,ò,ï,?,æ,?,?,è,¾,&,?,?,“,?,ç,ˆ,©,á,§,—,ë,?,?,?,?,ì,?,?,ô,?,¦,?,¯,½,¤,?,?,?,‘,…,œ,£,?,?,ã,?,?,?,ä,?,¼, ,?,•,?,«,?,?,€,µ,?,?,å,?,í,?,¶,?,»,û,?,‚,?,?,?,”,?,‰,²,?,?,š,¥,?,±,?,þ,?,ù,?,?,?,?,×,?,?,?,?,?,ü,’,?,™,î,?,?,?,˜,ú,¨,?,?,?,?,?,?,›,?,"",?,?,'";
		    return ReplaceList(arguments.str, lEntities, lEntitiesChars);
		}

}