<cfscript>
title = "Reporting Units";
</cfscript>

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
									
									<!---
									<span class="help-block">The reporting units available to you are listed below</span>
									--->

									<div class="tab-pane active" id="t1">
										<div class="box">
											<!---
											<div class="box-title">
												<h3>
													<i class="icon-reorder"></i>
													Academic Units
												</h3>
											</div>
											--->
								<div class="nopadding">
										<div class="tabs-container">
											<ul class="tabs tabs-inline tabs-left">
												<li class='active'>
													<a href="#first" data-toggle='tab'> Arts & Letters</a>
												</li>
												<li>
													<a href="#second" data-toggle='tab'> Business</a>
												</li>
												<!---
												<li>
													<a href="#thirds" data-toggle='tab'> Social</a>
												</li>
												--->
											</ul>
										</div>
										<div class="tab-content padding tab-content-inline">
											<div class="tab-pane active" id="first">
												<!--- START --->
													<div class="row-fluid">
														<div class="span12">
															<div class="box">
																<!---
																<div class="box-title">
																	<h3>
																		Arts & Letters
																	</h3>
																</div>
																--->
																<div class="span12">
																	<h3>
																		Arts & Letters
																	</h3>
																</div>
																<div class="box-content nopadding">
																	
																	<div class="search-results">
																		<ul>
																			<li>
																				<!---
																				<div class="thumbnail">
																					<img src="http://www.placehold.it/80" alt="">
																				</div>
																				--->

																				<div class="span12 search-info">
																					<p><h4>Anthropology</h4></p>
																					<p><a href="index.cfm?event=showAssessmentPlanList" rel="tooltip" data-placement="right" title="View Assessment Plan" >BA Anthropology</a></p>
																					<p><a href="##" rel="tooltip" data-placement="right" title="View Assement Plan">MA and MAT Anthropology</a></p>		
																				</div>

																				
																			</li>
																			<li>
																				<!---
																				<div class="thumbnail">
																					<img src="http://www.placehold.it/80" alt="">
																				</div>
																				--->
																				
																				<div class="span12 search-info">
																					<p><h4>English</h4></p>
																					<p><a href="##">BA English</a></p>
																					<p><a href="##">MA English</a></p>
																					<p><a href="##">MAT English</a></p>		
																				</div>
																			</li>
																			<li>
																				<!---
																				<div class="thumbnail">
																					<img src="http://www.placehold.it/80" alt="">
																				</div>
																				--->
																				
																				<div class="span12 search-info">
																					<p><h4>History</h4></p>
																					<p><a href="##">BA History</a></p>
																					<p><a href="##">MA History</a></p>	
																				</div>
																			</li>																			
																		</ul>
																	</div>
																	
																</div>
															</div>
														</div>
													</div>
												<!--- END --->
											</div>
											<div class="tab-pane" id="second">
												<div class="span12 nopadding">
													<h3>Business</h3>
												</div>
												<!---
												<div class="accordion" id="accordion4">
													<div class="accordion-group">
														<div class="accordion-heading">
															<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion4" href="#collapseOne3">
																Anim pariatur cliche...Lorem  ???
															</a>
														</div>
														<div id="collapseOne3" class="accordion-body collapse in">
															<div class="accordion-inner">
																Anim pariatur cliche...Lorem ipsum dolore dolor occaecat dolore elit deserunt incididunt ex sed nostrud aute aliquip ut elit sed nisi. 
															</div>
														</div>
													</div>
													<div class="accordion-group">
														<div class="accordion-heading">
															<a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion4" href="#collapseTwo3">
																Sed laboris ut adipisicing ut et aute occaecat aute enim occaecat?
															</a>
														</div>
														<div id="collapseTwo3" class="accordion-body collapse">
															<div class="accordion-inner">
																Anim pariatur cliche...Lorem ipsum Duis occaecat Excepteur est magna tempor ex ea enim sunt mollit proident. Lorem ipsum sed laboris ut adipisicing ut et aute occaecat aute enim occaecat. 
															</div>
														</div>
													</div>
												</div>
												--->
											</div>
											<div class="tab-pane" id="thirds">
												<div class="accordion" id="accordion5">
													<div class="accordion-group">
														<div class="accordion-heading">
															<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion5" href="#collapseOne4">
																Lorem ipsum dolor sit amet, consectetur adipisicing?
															</a>
														</div>
														<div id="collapseOne4" class="accordion-body collapse in">
															<div class="accordion-inner">
																Anim pariatur cliche...Lorem ipsum dolore dolor occaecat dolore elit deserunt incididunt ex sed nostrud aute aliquip ut elit sed nisi. 
															</div>
														</div>
													</div>
												</div>
											</div>
									</div>
								</div>
							</div>
									</div>
									<div class="tab-pane" id="t2"><!--- begin #t2 --->
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
														<li class='active'>
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
																<!---
																<div class="box-title">
																	<h3>
																		Academic Affairs
																	</h3>
																</div>
																--->
																<div class="box-content nopadding">
																	
																	<div class="search-results">
																		<ul>
																			<li>
																				<!---
																				<div class="thumbnail">
																					<img src="http://www.placehold.it/80" alt="">
																				</div>
																				--->
																				
																				<div class="span12 search-info">
																					<p><h4>Undergraduate Studies</h4></p>
																					<p><a href="index.cfm?event=showAssessmentPlanList" rel="tooltip" data-placement="right" title="View Assessment Plan" >Lorem Ipsum</a></p>
																					<p><a href="##" rel="tooltip" data-placement="right" title="View Assement Plan">Lorem Ipsum</a></p>		
																				</div>

																				
																			</li>
																			<li>
																				<!---
																				<div class="thumbnail">
																					<img src="http://www.placehold.it/80" alt="">
																				</div>
																				--->
																				<div class="span12 search-info">
																					<p><h4>University Libraries</h4></p>
																					<p><a href="index.cfm?event=showAssessmentPlanList" rel="tooltip" data-placement="right" title="View Assessment Plan" >Lorem Ipsum</a></p>
																					<p><a href="##" rel="tooltip" data-placement="right" title="View Assement Plan">Lorem Ipsum</a></p>	
																				</div>
																			</li>																			
																		</div>					
																</div>
															</div>
														</div>
													</div>
																					<!--- END --->
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
										</div>
									</div><!--- end of #t2 --->
						</div>
					</div>
				</div>
			</div>
		</div></div>

