<cfscript>
//index.cfm?event=editOutcome&outcomeID=???&reportingUnitID=131101&planID=14883
qPlanDetails			= request.event.getArg('qPlanDetails');
qcountOutcomes    		= request.event.getArg('qcountOutcomes');
qALCCategories			= request.event.getArg('qALCCategories');
qSelectedALCCategories	= request.event.getArg('qSelectedALCCategories');
if ( cgi.query_string CONTAINS "editOutcome"){
	title = "Edit outcome" ;
} else {
	title = "Add a new outcome" ;
}

</cfscript>

<div id="main" style="margin-left: 0px;">
			<div class="container-fluid">

				<cfinclude template="/Assessment/views/page_header.cfm">
				<cfdump var="#qcountOutcomes#" />
				<!---
				<cfdump var="#qSelectedALCCategories#" />
				
				<cfdump var="#qPlanDetails#" />

				

				<cfdump var="#qALCCategories#" />
				
				<cfdump var="#arguments#" />
				--->

			<div class="row-fluid">
					<div class="span12">
						<div class="box">
							<div class="box-content">
								<div class="row-fluid">
									<div class="box box-bordered">
										<!---<h4>booyah</h4>--->
										<div class="box-title">
												<h3><i class="icon-reorder"></i>Assessment Plan Summary</h3>
										</div>
										<div class="box-content nopadding">

										<cfinclude template="assessmentplansummary.cfm" />
							</div>
									</div>
									
								</div>
							
								<div class="row-fluid margin-top">
									<div class="span12">

										
										<div class="box box-bordered box-color">
											<div class="box-title">
												<h3><i class="icon-reorder"></i>Edit Outcome Details</h3>
											</div>
													<div class="box-content">
														<!--- <cfloop query="qcountOutcomes"> 
														<cfoutput>
															--->
														<form action="index.cfm?event=saveOutcome" method="POST" class='form-vertical form-bordered'>
															
															<cfoutput>
																<input type="hidden" name="outcomeID" value="#qcountOutcomes.outcomeID#" />
																<input type="hidden" name="outcomeOrder" value="#qcountOutcomes.outcomeOrder#" />
																<input type="hidden" name="planID" value="#request.event.getArg('planID')#" />
																<input type="hidden" name="reportingUnitID" value="#request.event.getArg('reportingUnitID')#" />
															
																<div class="control-group">
																	<label for="textarea" class="control-label"><strong>Outcome Description</strong></label>
																	<div class="controls">
																		<textarea name="outcomeDescription" id="textarea" rows="5" class="input-block-level">#trim(qcountOutcomes.outcomeDescription)#</textarea>
																	</div>
																</div>
															</cfoutput>

															<!---
															<div class="control-group">
																<label class="control-label"><strong>Academic Learning Compact</strong></label>
																<div class="controls">
																	<label class='checkbox'>
																		<input type="checkbox" name="checkbox"> Lorem ipsum eiusmod
																	</strong></label>
																	<label class='checkbox'>
																		<input type="checkbox" name="checkbox"> ipsum eiusmod
																	</strong></label>
																</div>
															</div>
															--->

															<!--- --->
														
																
																<div class="control-group">
																	<div class="row-fluid">
																		<label class="control-label"><strong>Academic Learning Categories related to this outcome:</strong></label>
																	</div>

																	<div class="row-fluid">
																		<cfoutput query="qALCCategories" group="CategoryID" >
																			<div class="span3">																			
																					<div class="controls">
																						<cfoutput group="SubCategoryTitle">
																							<cfif qALCCategories.SubCategoryID EQ 10011 OR qALCCategories.SubCategoryID EQ 10012 OR qALCCategories.SubCategoryID EQ 10013>
																							   <div class="check-line">
																							<cfelse>
																							  <div class="check-line offset1">
																							</cfif>
																								<input type="checkbox" name="ALCSubCategory" value="#qALCCategories.SubCategoryID#"  class='icheck-me' data-skin="square" data-color="blue" <cfif ValueList(qSelectedALCCategories.subcategoryID) CONTAINS qALCCategories.SubCategoryID >checked</cfif>> 
																								<label class='inline' for="c6">#qALCCategories.SubCategoryTitle#</label>
																							</div>																							
																						</cfoutput>
																					</div>
																			</div>
																		</cfoutput>
																	</div>
																</div>
																	
																	<div class="control-group">
																		<div class="row-fluid">
																			<div class="span3">
																				<p><strong>QEP / URI Related</strong></p>

																				<div class="check-line">
																						<input type="radio"  name="qep_uri_related" value="1" class='icheck-me' data-skin="square" data-color="blue" <cfif qcountOutcomes.qep_uri_related eq 1>
																							checked
																						</cfif> > <label class='inline' for="c6">Yes</label>

																				</div>

																				<div class="check-line">
																					<input type="radio"   name="qep_uri_related" value="0" class='icheck-me' data-skin="square" data-color="blue" <cfif qcountOutcomes.qep_uri_related eq 0>
																							checked
																						</cfif>> <label class='inline' for="c6">No</label>
																				</div>

																			</div>

																			<div class="span3">
																				<p><strong>IFP Related</strong></p>

																				<div class="check-line">
																						<input type="radio"  name="ifp_related" value="1" class='icheck-me' data-skin="square" data-color="blue" <cfif qcountOutcomes.ifp_related eq 1>
																							checked
																						</cfif>> <label class='inline' for="c6">Yes</label>
																				</div>

																				<div class="check-line">
																					<input type="radio"  name="ifp_related" value="0" class='icheck-me' data-skin="square" data-color="blue" <cfif qcountOutcomes.ifp_related eq 0>
																							checked
																						</cfif>> <label class='inline' for="c6">No</label>
																				</div>
																			</div>

																			<div class="span3">
																				<p><strong>Data collected from online coursework?</strong></p>

																				    <div class="check-line">
																						<input type="radio" name="online" value="1"  class='icheck-me' data-skin="square" data-color="blue" <cfif qcountOutcomes.online eq 1>
																							checked
																						</cfif>> <label class='inline' for="c6">Yes</label>
																					</div>

																					<div class="check-line">
																						<input type="radio"  name="online" value="0" class='icheck-me' data-skin="square" data-color="blue" <cfif qcountOutcomes.online eq 0>
																							checked
																						</cfif>> <label class='inline' for="c6">No</label>
																					</div>
																				</div>
																			</div>
																		</div>
														
																		<div class="row-fluid">
																			<div class="span12">
																				<div class="control-group">
																					<label class="control-label"><strong>Strategic Plan Goals</strong></label>
																					<div class="controls">
																						<label class='checkbox'>
																							<input type="checkbox" name="checkbox"> Lorem ipsum eiusmod
																						</strong></label>
																						<label class='checkbox'>
																							<input type="checkbox" name="checkbox"> ipsum eiusmod
																						</strong></label>
																					</div>
																				</div>
																			</div>
																		</div>

															<cfoutput>

																<div class="control-group">
																	<label for="textarea" class="control-label"><strong>Implementing Strategy</strong></label>
																	<div class="controls">
																		<textarea name="outcomeStrategy" id="textarea" rows="5" class="input-block-level">#trim(qcountOutcomes.outcomeStrategy)#</textarea>
																	</div>
																</div>

																<div class="control-group">
																	<label for="textarea" class="control-label"><strong>Assessment Method</strong></label>
																	<div class="controls">
																		<textarea name="outcomeMethod" id="textarea" rows="5" class="input-block-level">#trim(qcountOutcomes.outcomeMethod)#</textarea>
																	</div>
																</div>

																<div class="control-group">
																	<label for="textarea" class="control-label"><strong>Criterion for Success</strong></label>
																	<div class="controls">
																		<textarea name="outcomeCriterion" id="textarea" rows="5" class="input-block-level">#trim(qcountOutcomes.outcomeCriterion)#</textarea>
																	</div>
																</div>

																<div class="control-group">
																	<label for="textarea" class="control-label"><strong>Data Summary: Analysis & Evaluation</strong></label>
																	<div class="controls">
																		<textarea name="outcomeresults" id="textarea" rows="5" class="input-block-level">#trim(qcountOutcomes.outcomeresults)#</textarea>
																	</div>
																</div>

																
																<div class="control-group">
																	<label for="textarea" class="control-label"><strong>Program Improvement</strong></label>
																	<div class="controls">
																		<textarea name="outcomeplanningimprovement" id="textarea" rows="5" class="input-block-level">#trim(qcountOutcomes.outcomeplanningimprovement)#</textarea>
																	</div>
																</div>
															</cfoutput>

															<div class="form-actions">
																<button type="submit" class="btn btn-red">Save changes</button>
																<button type="button" class="btn">Cancel</button>
															</div>
														</form>
														<!--- 
														</cfoutput>
														</cfloop> --->
													</div><!--- end box-content --->
											</div>
										</div>
									</div>
								</div>
								


							</div>
						</div>
					</div>
				</div>


</div></div>
