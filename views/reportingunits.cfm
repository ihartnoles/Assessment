<cfscript>
title = "Reporting Units";
qReportingUnits				  = request.event.getArg('qReportingUnits');
variables.beanFactory	  	  = variables.propertyManager.getProperty("serviceFactory");
stringHelper    			  = variables.beanFactory.getBean('stringHelper');
</cfscript>

<!---
<cfdump var="#qReportingUnits#">
--->

<div id="main" style="margin-left: 0px;">
			<div class="container-fluid">
				<cfinclude template="/Assessment/views/page_header.cfm">
			
				<div class="row-fluid">
					<div class="span12">
						<div class="box">
							<div class="box box-color">
								<div class="box-title">
									<h3>									
										My Reporting Units
									</h3>

									<ul class="tabs">
										<li class="active">
											<a href="#t1" data-toggle="tab">Academic Units</a>
										</li>
										<li>
											<a href="#t2" data-toggle="tab">Administrative/Support Units</a>
										</li>
										
									</ul>

								</div>

							<div class="box-content nopadding">
								<div class="tab-content">
									
									<div class="tab-pane active" id="t1"><!--- begin #t1 --->
										<div class="box">
											<!---
											<div class="box-title">
												<h3>
													<i class="icon-reorder"></i>
													Administrative/Support Units
												</h3>
											</div>
											--->

											<div class="nopadding">
												<div class="tabs-container">
													<ul class="tabs tabs-inline tabs-left">	
														<cfset ct =0>											
														<cfoutput query="qReportingUnits" group="DivisionName" >															
																<li <cfif ct eq 0>class="active"<cfelse>class=""</cfif> >
																	<a href="###stringHelper.StripAllBut(DivisionName, "abcdefghijklmnopqrstuvwxyz",false)#" data-toggle='tab'>#DivisionName#</a>
																</li>																			
															<cfset ct = ct+1>
														</cfoutput>															
													</ul>
												</div>
												<div class="tab-content padding tab-content-inline" >
													<!--- START --->
													<cfset count =0>
													<cfoutput query="qReportingUnits" group="DivisionName" >

													<!---
													<cfif count eq 0>class="tab-pane active"<cfelse>class="tab-pane"</cfif>
													--->
													<div <cfif count eq 0>class="tab-pane active"<cfelse>class="tab-pane"</cfif> id="#stringHelper.StripAllBut(DivisionName, "abcdefghijklmnopqrstuvwxyz",false)#">
													
															<div class="row-fluid">
																<div class="span12 nopadding">
																	 <h3>#DivisionName#</h3>
																</div>
																<div class="span12">
																	<div class="box">
																		<div class="box-content nopadding">
																			
																			<cfoutput group="DeptName">
																				<div class="search-results">
																					<ul>
																						<li>
																							<!---
																							<div class="thumbnail">
																								<img src="http://www.placehold.it/80" alt="">
																							</div>
																							--->

																							<!--- <cfoutput group="DeptName">												 ---->
																								<div class="span12 search-info">
																									<p><h4>#DeptName#</h4></p>																							
																									<cfoutput group="ProgramName">
																										<p><a href="index.cfm?event=showAssessmentPlanList&ReportingUnitID=#reportingunitid#&ProgramName=#ProgramName#" rel="tooltip" data-placement="right" title="View Assessment Plan" >#ProgramName#</a></p>
																										<!---
																										<p><a href="##" rel="tooltip" data-placement="right" title="View Assement Plan">Lorem Ipsum</a></p>	
																										--->
																									</cfoutput>									
																								</div>
																							<!--- </cfoutput> --->
																							
																						</li>
																						<li>
																							<!---
																							<div class="thumbnail">
																								<img src="http://www.placehold.it/80" alt="">
																							</div>
																							
																							<div class="span12 search-info">
																								<p><h4>University Libraries</h4></p>
																								<p><a href="index.cfm?event=showAssessmentPlanList" rel="tooltip" data-placement="right" title="View Assessment Plan" >Lorem Ipsum</a></p>
																								<p><a href="##" rel="tooltip" data-placement="right" title="View Assement Plan">Lorem Ipsum</a></p>	
																							</div>
																							--->
																						</li>	
																					</ul>																		
																				</div>		
																			 </cfoutput>

																		</div>
																	</div>
																</div>
															</div>


															<div class="tab-pane" id="#stringHelper.StripAllBut(DivisionName, "abcdefghijklmnopqrstuvwxyz",false)#">

															</div>
														<!--- END --->
													</div>
													<cfset count = count + 1>
													</cfoutput>
													
												
											</div>
										</div>
									</div><!--- end of #t1 --->									
								</div>

									<div class="tab-pane" id="t2"><!--- begin #t2 --->
										<div class="box">
											<div class="nopadding">
												<div class="tabs-container">
													<ul class="tabs tabs-inline tabs-left">
														<li>
															<a href="#supportfirst" data-toggle='tab'>Academic Affairs</a>
														</li>
														<li>
															<a href="#supportsecond" data-toggle='tab'>Comm. Engagement</a>
														</li>
														
													</ul>
												</div>

												<div class="tab-content padding tab-content-inline" >
													<div class="tab-pane active" id="supportfirst">
														<!--- START --->
														<div class="row-fluid">
															<div class="span12 nopadding">
																<h3>Academic Affairs</h3>
															</div>
															<div class="span12">
																<div class="box">
																		<div class="box-content nopadding">
																			<div class="search-results">
																				<ul>
																					<li>
																						<div class="span12 search-info">
																							<p><h4>Undergraduate Studies</h4></p>
																							<p><a href="index.cfm?event=showAssessmentPlanList" rel="tooltip" data-placement="right" title="View Assessment Plan" >Lorem Ipsum</a></p>
																							<p><a href="##" rel="tooltip" data-placement="right" title="View Assement Plan">Lorem Ipsum</a></p>		
																						</div>
																					</li>
																				</ul>
																			</div>
																		</div>
																</div>
															</div>
														</div>
													</div>

													<div class="tab-pane" id="supportsecond">
														<div class="span12 nopadding">
															<h3>Community Engagement</h3>
														</div>
														<!---
														<div class="accordion" id="supportaccordion4">
															<div class="accordion-group">
																<div class="accordion-heading">
																	<a class="accordion-toggle" data-toggle="collapse" data-parent="#supportaccordion4" href="#collapseFive5">
																		Advancement/Development
																	</a>
																</div>
																<div id="collapseFive5" class="accordion-body collapse in">
																	<div class="accordion-inner">
																		<p><a href="#">Test 1</a></p>
																		<p><a href="#">Test 2</a></p>
																	</div>
																</div>
															</div>
															
														</div>
														--->
													</div>


											</div>
										</div>
									</div><!--- end #t2 --->
					</div>
				</div>
			</div>
		</div></div>

