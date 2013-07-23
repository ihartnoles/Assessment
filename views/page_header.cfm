<div class="page-header">
					<div class="pull-left">
						<h1><cfoutput>#title#</cfoutput></h1>
						
						<cfif cgi.QUERY_STRING contains "showAssessmentPlanList">
							<div class="row-fluid">
								<div class="span12">
									<!---
									<ul class="stats">
										<a href="index.cfm?event=addPlan">
											<li class="blue">
												<i class="icon-pencil"></i>						
													<span>Add Assessment Plan</span>
												</li>
										</a>
										<a href="index.cfm?event=ALC">
											<li class="blue">
												<i class="icon-book"></i>						
												<span>Academic Learning Compact</span>	
											</li>
										</a>
									</ul>
									--->
									<cfoutput>
										<a href="index.cfm?event=addPlan&reportingUnitID=#request.event.getArg('reportingUnitID')#&ProgramID=#request.event.getArg('ProgramID')#&DeptID=#request.event.getArg('DeptID')#&DivisionID=#request.event.getArg('DivisionID')#" class="btn btn-red">
											<i class="icon-pencil"></i>									
											<span>Add Assessment Plan</span>
										</a>
										
										<a href="index.cfm?event=addPlan" class="btn btn-red">
											<i class="icon-book"></i>									
											<span>Academic Learning Compact</span>
										</a>
									</cfoutput>


								</div>
							</div>
						</cfif>
					</div>

					<div class="pull-right">
						<!--- 
						<ul class="minitiles">
							<li class='grey'>
								<a href="#"><i class="icon-cogs"></i></a>
							</li>							
						</ul>
						--->
						<ul class="stats">
							
							<li class='lightred'>
								<i class="icon-calendar"></i>
								<div class="details">
									<span class="big"><cfoutput>#DateFormat(now(),"long")#</cfoutput></span>
									<span>
										<cfoutput>#DateFormat(now(),"dddd")#, #TimeFormat(now(), "hh:mm tt")# </cfoutput>
									</span>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<!---
				<div class="breadcrumbs">
					<ul>
						<li>
							<a href="more-login.html">Home</a>
							<i class="icon-angle-right"></i>
						</li>
						<li>
							<a href="more-files.html">Pages</a>
							<i class="icon-angle-right"></i>
						</li>
						<li>
							<a href="more-blank.html">Blank page</a>
						</li>
					</ul>
					<div class="close-bread">
						<a href="#"><i class="icon-remove"></i></a>
					</div>
				</div>
				--->