<cfscript>
title 						= "Department Performance Review";
qReviewDetails				= request.event.getArg('qReviewDetails');
//variables.beanFactory	  	= variables.propertyManager.getProperty("serviceFactory");
//stringHelper    			= variables.beanFactory.getBean('stringHelper');
</cfscript>

<!--- --->
<cfdump var="#qReviewDetails#" />


<div id="main" style="margin-left: 0px;">
	<div class="container-fluid">
		<div class="box-content nopadding">
			
			<cfoutput query="qReviewDetails">
				 <div class="row-fluid">
					<div class="span12">
						<div class="box box-color box-bordered darkblue">
							<div class="box-title">
								<h3>Dept. Performance Review</h3>
							</div>

							<div class="box-content">
								<div class="row-fluid">
									<div class="text-center">
										<cfoutput>
										<strong>College:</strong> #qReviewDetails.divisionname#<br>
										<strong>Department:</strong> #qReviewDetails.deptname#<br>
										<strong>Review Year:</strong> #qReviewDetails.reviewperiod#<br>
										<strong>Last Updated:</strong> #qReviewDetails.activitydate#<br>
										</cfoutput>
									</div>
								</div>

								<form class="form-horizontal" >
									<div class="control-group">
										  <label class="control-label text-center" for="radios">Status of this Review:</label>
											  	<div class="controls text-center">
												  	<cfset count=0>
												  	<cfloop list="Complete,In Progress" index="idx" delimiters=",">	
			  											<label class="radio inline" for="radios-#count#">
												  		 <input type="radio" name="ReviewStatus" value="#idx#" <cfif #idx# EQ #qReviewDetails.ReviewStatus#>checked</cfif>>#idx#
												  		</label>
												  		<cfset count = count + 1/>
												  	</cfloop>
												</div>	
									</div>

									<hr>
									
									<div class="row-fluid">												
								 		<strong>I have reviewed the Departmental Dashboard Indicator (DDI) data for this department:</strong>
								  									  	
									  	<cfset count=0>
									  	<cfloop list="Yes,No" index="idx" delimiters=",">	
  											<label class="radio inline" for="radios-#count#">
									  		 <input type="radio" name="DeanReviewedDDI" value="#left(idx,1)#"  <cfif #qReviewDetails.DeanReviewedDDI# EQ #left(idx,1)#>checked</cfif>>#idx#
									  		</label>
									  		<cfset count = count + 1/>
									  	</cfloop>
									  	<p>Full DDI documents are available <a id="DDIDocsLink" href="http://www.fau.edu/iea/deptreview.php" target="_blank">here</a>.  DDI data relevant to each section of this review are also linked below.</p>								
									</div>

									<div class="row-fluid">												
								 		<strong>I have reviewed the most current assessment plans for the programs in this department:</strong>
								  									  	
									  	<cfset count=0>
									  	<cfloop list="Yes,No" index="idx" delimiters=",">	
  											<label class="radio inline" for="radios-#count#">
									  		 <input type="radio" name="DeanReviewedAssessmentPlans" value="#left(idx,1)#" <cfif #qReviewDetails.DEANREVIEWEDASSESSMENTPLANS# EQ #left(idx,1)#>checked</cfif>>#idx#
									  		</label>
									  		<cfset count = count + 1/>
									  	</cfloop>
									  	<p>Assessment plans are available <a href="index.cfm?event=showreportingunits" target="_blank">here</a>.</p>								
									</div>
								</form>

								<hr>

								<div class="row-fluid">
									<div class="box-title">
										<h3>Part I. Instruction</h3>
									</div>
									<div class="box-content">
										<h4>Related Departmental Dashboard Indicator (DDI) data</h4>



										<h4>Dean's evaluation of department's performance in instruction</h4>
										<textarea id="CommentsInstruction" name="CommentsInstruction" class="input-block-level"><cfoutput>#qReviewDetails.commentsinstruction#</cfoutput></textarea>

										<h4>Rating (optional)</h4>
										
										<label class="radio inline" for="DeansEvalInstruction_0">
											<input id="DeansEvalInstruction_0" type="radio" name="DeansEvalInstruction" value="S+" />S+
										</label>
										<label class="radio inline" for="DeansEvalInstruction_1">
											<input id="DeansEvalInstruction_1" type="radio" name="DeansEvalInstruction" value="S" />S
										</label>
										<label class="radio inline" for="DeansEvalInstruction_2">
											<input id="DeansEvalInstruction_2" type="radio" name="DeansEvalInstruction" value="S-" />S-
										</label>
										<label for="DeansEvalInstruction_3" class="radio inline">
											<input id="DeansEvalInstruction_3" type="radio" name="DeansEvalInstruction" value="U" />U
										</label>
									</div>
								</div>

								<hr>

								<div class="row-fluid">
									<div class="box-title">
										<h3>Part II. Research, Creative and Scholarly Activities</h3>
									</div>
									<div class="box-content">
										<h4>Related Departmental Dashboard Indicator (DDI) data</h4>

										<h4>Dean's evaluation of department's performance in research, creative and scholarly activity:</h4>

										<textarea id="CommentsResearch" name="CommentsResearch" class="input-block-level"><cfoutput>#qReviewDetails.commentsresearch#</cfoutput></textarea>

										<h4>Rating (optional)</h4>

										<label class="radio inline" for="DeansEvalResearch_0">
												<input type="radio" value="S+" name="DeansEvalResearch" id="DeansEvalResearch_0">S+
										</label>
										<label  class="radio inline" for="DeansEvalResearch_1">
											<input type="radio" value="S" name="DeansEvalResearch" id="DeansEvalResearch_1">S
										</label>
										<label class="radio inline" for="DeansEvalResearch_2">
											<input type="radio" value="S-" name="DeansEvalResearch" id="DeansEvalResearch_2">S-
										</label>
										<label class="radio inline" for="DeansEvalResearch_3">
											<input type="radio" value="U" name="DeansEvalResearch" id="DeansEvalResearch_3">U
										</label>
	
									</div>
								</div>

								<hr>

								<div class="row-fluid">
									<div class="box-title">
										<h3>Part III. Service</h3>
									</div>
									<div class="box-content">
										<h4>Dean's evaluation of department's performance in providing service:</h4>

										<textarea id="CommentsService" name="CommentsService" class="input-block-level"><cfoutput>#qReviewDetails.commentsservice#</cfoutput></textarea>

										<h4>Rating (optional)</h4>


										<label class="radio inline" for="DeansEvalService_0">
											<input id="DeansEvalService_0" type="radio" value="S+" name="DeansEvalService">S+
										</label>

										<label class="radio inline" for="DeansEvalService_1">
											<input id="DeansEvalService_1" type="radio" value="S" name="DeansEvalService">S
										</label>

										<label class="radio inline" for="DeansEvalService_2">
											<input id="DeansEvalService_2" type="radio" value="S-" name="DeansEvalService">S-
										</label>

										<label class="radio inline" for="DeansEvalService_3">
											<input id="DeansEvalService_3" type="radio" value="U" name="DeansEvalService">U
										</label>
									</div>
								</div>

								<hr>

								<div class="row-fluid">
									<div class="box-title">
										<h3>Summary and Future Plans</h3>
									</div>
									<div class="box-content">
										<h4>Summary comments / Areas for improvement</h4>
										
										<textarea id="SummaryComments" name="SummaryComments" class="input-block-level"><cfoutput>#qReviewDetails.SummaryComments#</cfoutput></textarea>

										<h4>Planned new initiatives</h4>

										<textarea id="NewInitiatives" name="NewInitiatives" class="input-block-level"><cfoutput>#qReviewDetails.NewInitiatives#</cfoutput></textarea>
									</div>
								</div>
							</div>
						</div>	
					</div>
				</div>				
			</cfoutput>
			

					
		</div>
	</div>
</div>
