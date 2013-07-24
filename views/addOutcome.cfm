<cfscript>

qPlanDetails			= request.event.getArg('qPlanDetails');
qcountOutcomes    		= request.event.getArg('qcountOutcomes');
//qALCCategoriesSelected	= request.event.getArg('qALCCategoriesSelected');
title 					= "Add a new outcome" ;
</cfscript>

<div id="main" style="margin-left: 0px;">
			<div class="container-fluid">

				<cfinclude template="/Assessment/views/page_header.cfm">
				<!---
				<cfdump var="#qPlanDetails#" />

				<cfdump var="#qcountOutcomes#" />

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
												<h3><i class="icon-reorder"></i>New Outcome Details</h3>
											</div>
													<div class="box-content">
														<form action="#" method="POST" class='form-vertical form-bordered'>
															<!---
															<div class="control-group">
																<label for="textfield" class="control-label">Text input</strong></label>
																<div class="controls">
																	<input type="text" name="textfield" id="textfield" placeholder="Text input" class="input-xlarge">
																</div>
															</div>
															<div class="control-group">
																<label for="password" class="control-label">Password</strong></label>
																<div class="controls">
																	<input type="password" name="password" id="password" placeholder="Password input" class="input-xlarge">
																</div>
															</div>
															<div class="control-group">
																<label class="control-label">Checkboxes<small>More information here</small></strong></label>
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
															<div class="control-group">
																<label for="textarea" class="control-label"><strong>Outcome Description</strong></label>
																<div class="controls">
																	<textarea name="outcomeDescription" id="textarea" rows="5" class="input-block-level">Lorem ipsum mollit minim fugiat tempor dolore sit officia ut dolore. </textarea>
																</div>
															</div>

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

															<div class="control-group">
																<label for="textarea" class="control-label"><strong>Implementing Strategy</strong></label>
																<div class="controls">
																	<textarea name="outcomeStrategy" id="textarea" rows="5" class="input-block-level">Lorem ipsum mollit minim fugiat tempor dolore sit officia ut dolore. </textarea>
																</div>
															</div>

															<div class="control-group">
																<label for="textarea" class="control-label"><strong>Assessment Method</strong></label>
																<div class="controls">
																	<textarea name="outcomeMethod" id="textarea" rows="5" class="input-block-level">Lorem ipsum mollit minim fugiat tempor dolore sit officia ut dolore. </textarea>
																</div>
															</div>

															<div class="control-group">
																<label for="textarea" class="control-label"><strong>Criterion for Success</strong></label>
																<div class="controls">
																	<textarea name="outcomeCriterion" id="textarea" rows="5" class="input-block-level">Lorem ipsum mollit minim fugiat tempor dolore sit officia ut dolore. </textarea>
																</div>
															</div>

															<div class="control-group">
																<label for="textarea" class="control-label"><strong>Data Summary: Analysis & Evaluation</strong></label>
																<div class="controls">
																	<textarea name="outcomeresults" id="textarea" rows="5" class="input-block-level">Lorem ipsum mollit minim fugiat tempor dolore sit officia ut dolore. </textarea>
																</div>
															</div>

															
															<div class="control-group">
																<label for="textarea" class="control-label"><strong>Program Improvement</strong></label>
																<div class="controls">
																	<textarea name="outcomeplanningimprovement" id="textarea" rows="5" class="input-block-level">Lorem ipsum mollit minim fugiat tempor dolore sit officia ut dolore. </textarea>
																</div>
															</div>


															<div class="form-actions">
																<button type="submit" class="btn btn-red">Save changes</button>
																<button type="button" class="btn">Cancel</button>
															</div>
														</form>
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
