<cfscript>
title = "BA Anthropology";
</cfscript>

<div id="main" style="margin-left: 0px;">
			<div class="container-fluid">

				<cfinclude template="/Assessment/views/page_header.cfm">
	

				<div class="row-fluid">
					<div class="span12">
						<div class="box box-color box-bordered">
							<div class="box-title">
								<h3>
									<i class="icon-search"></i>
									Assessment Plan List
								</h3>
							</div>
							<div class="box-content nopadding">
								
								<div class="search-results">
									<ul>
										<cfloop list="2012-2013,2011-2012,2010-2011,2009-2010" index="idx">	
										<cfoutput>		
											<li>
												<div class="thumbnail"> 
													<img src="http://www.placehold.it/80" alt="">		
												</div>
												<div class="search-info">
													<a href="##" rel="tooltip" data-placement="right" title="View/Modify Plan">Plan Period: #idx#</a>
													<!--- <p class="url">www.loremasdasdd.com/</p> --->
													
													<p>Status: #ListGetRandom("Approved (complete) ,Submitted for review, Collect data, Revise Plan")#</p>
												</div>
											</li>
										</cfoutput>
										</cfloop>
										
								</div>
								
									
								</div>
							</div>
						</div>
					</div>
				</div>


</div></div>

<cfscript>
/**
 * Returns a random selection from a comma delimited list.
 * Modified by Raymond Camden
 * 
 * @param List 	 The list to grab a random element from. (Required)
 * @param Delimiter 	 The list delimiter. Defaults to a comma. (Optional)
 * @return Returns a random element from the list. 
 * @author Brad Breaux (&#98;&#98;&#114;&#101;&#97;&#117;&#120;&#64;&#98;&#108;&#105;&#112;&#122;&#46;&#99;&#111;&#109;) 
 * @version 2, March 12, 2004 
 */
function ListGetRandom(instring) {
	var delim = ",";
	var rnum = 0;
	var r = '';
 	if(ArrayLen(Arguments) GTE 2) delim = Arguments[2];
   	if(listlen(instring) gt 0) {
		rnum = randrange(1,listlen(instring,delim));
    		r = listgetat(instring,rnum,delim);
	}
	return r;
 }
</cfscript>