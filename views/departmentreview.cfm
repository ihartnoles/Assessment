<cfscript>
title 						= "Department Performance Review";
qReviewDetails				= request.event.getArg('qReviewDetails');
//variables.beanFactory	  	= variables.propertyManager.getProperty("serviceFactory");
//stringHelper    			= variables.beanFactory.getBean('stringHelper');
</cfscript>

<!---
<cfdump var="#qReviewDetails#" />
--->

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
								<form class="form-horizontal" >
									<div class="control-group">
									  <label class="control-label" for="radios">Status of this Review:</label>
									  <div class="controls">

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
									  		 <input type="radio" name="DeanReviewedDDI" value="#left(idx,1)#">#idx#
									  		</label>
									  		<cfset count = count + 1/>
									  	</cfloop>
									  	<p>Full DDI documents are available here .  DDI data relevant to each section of this review are also linked below.</p>								
									</div>

									<div class="row-fluid">												
								 		<strong>I have reviewed the most current assessment plans for the programs in this department:</strong>
								  									  	
									  	<cfset count=0>
									  	<cfloop list="Yes,No" index="idx" delimiters=",">	
  											<label class="radio inline" for="radios-#count#">
									  		 <input type="radio" name="DeanReviewedAssessmentPlans" value="#left(idx,1)#">#idx#
									  		</label>
									  		<cfset count = count + 1/>
									  	</cfloop>
									  	<p>Assessment plans are available here.</p>								
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
										<textarea id="CommentsInstruction" name="CommentsInstruction"></textarea>

										<h4>Rating (optional)</h4>
										<input id="DeansEvalInstruction_0" type="radio" name="DeansEvalInstruction" value="S+" /><label for="DeansEvalInstruction_0">S+</label><input id="DeansEvalInstruction_1" type="radio" name="DeansEvalInstruction" value="S" /><label for="DeansEvalInstruction_1">S</label><input id="DeansEvalInstruction_2" type="radio" name="DeansEvalInstruction" value="S-" /><label for="DeansEvalInstruction_2">S-</label><input id="DeansEvalInstruction_3" type="radio" name="DeansEvalInstruction" value="U" /><label for="DeansEvalInstruction_3">U</label>
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

										<textarea id="CommentsResearch" name="CommentsResearch"></textarea>
									</div>
								</div>

								<hr>

								<div class="row-fluid">
									<div class="box-title">
										<h3>Part III. Service</h3>
									</div>
									<div class="box-content">
										<h4>Dean's evaluation of department's performance in providing service:</h4>

										<textarea id="CommentsService" name="CommentsService"></textarea>

									</div>
								</div>

								<hr>

								<div class="row-fluid">
									<div class="box-title">
										<h3>Summary and Future Plans</h3>
									</div>
									<div class="box-content">
										<h4>Summary comments / Areas for improvement</h4>
										
										<textarea id="SummaryComments" name="SummaryComments"></textarea>

										<h4>Planned new initiatives</h4>

										<textarea id="NewInitiatives" name="NewInitiatives"></textarea>
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
