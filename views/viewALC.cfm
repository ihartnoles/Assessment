<cfscript>
title 		 	=  "Academic Learning Compact";
//qPlanTypes 		=  request.event.getArg('qPlanTypes');
//qPrimaryAuthors	=  request.event.getArg('qPrimaryAuthors');
//qPlanPeriods	=  request.event.getArg('qPlanPeriods');
qALCdocs		=  request.event.getArg('qALCdocs');
</cfscript>

<!--- --->
<cfdump var="#qALCdocs#" />


<div id="main" style="margin-left: 0px;">
			<div class="container-fluid">

				<cfinclude template="/Assessment/views/page_header.cfm">

				<div class="row-fluid">
					<div class="span12">
						<div class="box box-color box-bordered">
							<div class="box-title">
								<h3>
									<i class="icon-magic"></i>
									<cfoutput>#title#</cfoutput>
								</h3>
							</div>
							<div class="box-content nopadding">
							</div>
						</div>
					</div>
				</div>

</div></div>