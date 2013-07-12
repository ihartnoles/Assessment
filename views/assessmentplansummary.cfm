<form action="#" method="POST" class='form-horizontal form-column form-bordered'>
								 <cfloop query="qPlanDetails">
								 	<cfoutput>
									<div class="span6">
										<div class="control-group">
											<label for="textfield" class="control-label">College/Division</label>
											<div class="controls">
												#qPlanDetails.DivisionName#
											</div>
										</div>
										<div class="control-group">
											<label for="password" class="control-label">Department</label>
											<div class="controls">
												#qPlanDetails.DeptName#
											</div>
										</div>
										<div class="control-group">
											<label class="control-label">Program<small>More information here</small></label>
											<div class="controls">
												#qPlanDetails.programname#
											</div>
										</div>
										<!---
										<div class="control-group">
											<label for="textarea" class="control-label">Textarea</label>
											<div class="controls">
												<textarea name="textarea" id="textarea" rows="5" class="input-block-level">Lorem ipsum mollit minim fugiat tempor dolore sit officia ut dolore. </textarea>
											</div>
										</div>
										--->
									</div>
									<div class="span6">
										<div class="control-group">
											<label for="textfield" class="control-label">Plan Type</label>
											<div class="controls">
												 #qPlanDetails.PlanTypeDescription#
											</div>
										</div>
										<div class="control-group">
											<label for="password" class="control-label">Plan Status</label>
											<div class="controls">
												#qPlanDetails.WorkFlowStepDescription#
											</div>
										</div>
										<div class="control-group">
											<label class="control-label">Updated<small>More information here</small></label>
											<div class="controls">
												
												<cfif len(trim(qPlanDetails.PlanLastChangeDate))>
													#DateFormat(qPlanDetails.PlanLastChangeDate,'mm/dd/yyyy')#
												<cfelse>
													N/A
												</cfif>				
												
											</div>
										</div>
										<!---
										<div class="control-group">
											<label for="textarea" class="control-label">Textarea</label>
											<div class="controls">
												<textarea name="textarea" id="textarea" rows="5" class="input-block-level">Lorem ipsum mollit minim fugiat tempor dolore sit officia ut dolore. </textarea>
											</div>
										</div>
										--->
									</div>
									
									<!---
									<div class="span12">
										<div class="form-actions">
											<button type="submit" class="btn btn-primary">Save changes</button>
											<button type="button" class="btn">Cancel</button>
										</div>
									</div>
									--->
									<div class="span12 alert alert-info alert-nomargin">
										<center>
											<table class="alert alert-info alert-nomargin">
												<tr>
													<td>Plan developed by:</td>
													<td>
														<cfif len(trim(qPlanDetails.PlanInitialReporter))>
															#qPlanDetails.PlanInitialReporter#
														<cfelse>
															N/A
														</cfif>
													</td>
												</tr>
												<tr>
													<td>Contact Person(s):</td>
													<td>???</td>
												</tr>
											</table>										
										</center>
									</div>

									<!--- don't display this row on event=outcomedetails --->
									<cfif cgi.QUERY_STRING does not contain "outcomedetails">
									<div class="span12 alert alert-warning alert-nomargin">
										<center>
											<table class="alert alert-warning alert-nomargin">
												<tr>
													<td>This plan currently has #qcountOutcomes.recordcount# outcomes.</td>													
												</tr>
												<tr>
													<td>#qPlanDetails.WorkflowStepInstructions#</td>
												</tr>											
											</table>										
										</center>
									</div>
								   </cfif>

								</form>
								</cfoutput>
							</cfloop>