<cfscript>
qPlanDetails			= request.event.getArg('qPlanDetails');
qcountOutcomes    		= request.event.getArg('qcountOutcomes');
qALCCategories			= request.event.getArg('qALCCategories');
//qALCCategoriesSelected	= request.event.getArg('qALCCategoriesSelected');
title 					= "Plan Period: " &  #qPlanDetails.planperiod#;
qPlanDetails			= request.event.getArg('qPlanDetails');
qcountOutcomes    		= request.event.getArg('qcountOutcomes');
title 					= "Plan Period: " &  #qPlanDetails.planperiod#;
qCheckListTypes			= request.event.getArg('qCheckListTypes');
qRatings				= request.event.getArg('qRatings');
</cfscript>







<div id="main" style="margin-left: 0px;">
			<div class="container-fluid">

				<cfinclude template="/Assessment/views/page_header.cfm">
				
				<!---
				<cfdump var="#qCheckListTypes#" label="qChecklistTypes" />
				<cfdump var="#qRatings#" label="qRatings"/>
				<cfdump var="#qPlanDetails#" />
				<cfdump var="#qcountOutcomes#" />
				<cfdump var="#qALCCategories#" />
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

										<div class="text-left">
											<cfoutput>
											<a href="index.cfm?event=addOutcome&reportingUnitID=#request.event.getArg('reportingUnitID')#&planID=#request.event.getArg('planID')#" class="btn btn-red">
											<i class="icon-pencil"></i>									
											<span>Add New Outcome</span>
											</cfoutput>
										</a>
										</div>

										<div class="box box-bordered ">
											<div class="box-title">
												<h3><i class="icon-reorder"></i>Assessment Plan Details</h3>
											</div>
												<div class="box-content nopadding">
													<ul class="tabs tabs-inline tabs-top">
														<!---
														<li class='active'>
															<a href="#first11" data-toggle='tab'><i class="icon-inbox"></i> Attachments</a>
														</li>
														--->
														<li class='active'>
															<a href="#second22" data-toggle='tab'><i class="icon-share-alt"></i> Outcomes & Measures</a>
														</li>
														<!---
														<li>
															<a href="#thirds3322" data-toggle='tab'><i class="icon-tag"></i> Lorem Ipsum</a>
														</li>
														--->
														<li>
															<a href="#checklist" data-toggle='tab'><i class="glyphicon-check"></i>Plan Checklist</a>
														</li>
													</ul>
													<div class="tab-content padding tab-content-inline tab-content-bottom">
														<div class="tab-pane" id="first11">
															<div class="span6">
															<div class="box box-color green box-bordered">
																<div class="box-title">
																	<h3>
																		<i class="icon-tint"></i>
																		Specific color
																	</h3>
																	<div class="actions">
																		<a href="#" class="btn btn-mini content-refresh"><i class="icon-refresh"></i></a>
																		<a href="#" class="btn btn-mini content-remove"><i class="icon-remove"></i></a>
																		<a href="#" class="btn btn-mini content-slideUp"><i class="icon-angle-down"></i></a>
																	</div>
																</div>
																<div class="box-content">
																	You can set the box to a specific color!
																</div>
															</div>
														</div>
														</div>
														<div class="tab-pane active" id="second22">
															
															<!--- 
															<cfdump var="#qALCCategories#" label="qALCCategories"/>
															--->															

															<cfloop query="qcountOutcomes">
															
														
															
															<div class="row-fluid sortable-box">
																<div class="span12">
																	<div class="box box-color box-bordered blue">
																			<div class="box-title">
																				<h3>
																					<i class="icon-file"></i>
																					Outcome 
																					<cfoutput>
																						#qcountOutcomes.currentrow# (#qCountOutcomes.outcomeID#) 
																						<button class="btn editOutcome" data-outcome="#qCountOutcomes.outcomeID#"><i class="icon-edit"></i>Edit</button>
																						<!---
																						- [<a href="index.cfm?event=editOutcome&outcomeID=#qCountOutcomes.outcomeID#&reportingUnitID=#request.event.getArg('reportingUnitID')#&planID=#request.event.getArg('planID')#">edit</a>]
																						--->
																				    </cfoutput>
																				</h3>
																				<div class="actions">
																					<a href="##" class="btn btn-mini this-content-slideUp"><i class="icon-angle-down"></i></a>
																				</div>
																			</div>
																			<div class="box-content">
																				<h4>Description and Methodology</h4>
																				<p><strong>Outcome Description </strong><br>
																				<cfoutput>#qcountOutcomes.outcomedescription#</cfoutput>
																				</p>

																				<HR>

																				<p><strong>Academic Learning Categories related to this outcome:</strong></p>
																				
																					<!--- let's play HACKY SACK! --->	
																				    <cfquery name="getSelectedALCCategories" datasource="Assessment">
																				    		SELECT 
																									recordId,
																									outcomeID,
																									SubCategoryID
																							FROM 
																									AssessmentALCOutcomeCategories

																							WHERE outcomeID IN (#qCountOutcomes.outcomeID#)																							
																				      </cfquery>

																				      <!--- 
																				      <cfdump var="#getSelectedALCCategories#" label="getSelectedALCCategories">
																					  <cfoutput>#ValueList(getSelectedALCCategories.subcategoryID)#</cfoutput>
																					  --->
																				    <div class="row-fluid sortable-box">
																						<cfoutput query="qALCCategories" group="CategoryID" >
																							<div class="span3">
																							<!--- <strong><em>Content Knowledge</em></strong> --->
																							    <br><br> 
																							    
																							    <!---
																							    	Dynamic ALC Checkboxes

																									1) Need to be able to check the boxes and save to DB
																									2) Need to compare results in db and be "checked" where applicable
																							    --->																							
																   								
																   								<!---
																							    <div class="check-line">
																							    		<input type="checkbox"  class='icheck-me' data-skin="square" data-color="blue"  name="subcategoryID" <cfif ValueList(getSelectedALCCategories.subcategoryID) CONTAINS qALCCategories.subcategoryID >checked</cfif>> 
																							    		 <label class='inline' for="c6">#qALCCategories.CategoryTitle# (#qALCCategories.subcategoryID#)</label>																		
																								</div>
																								--->											
																							
																								<cfoutput group="SubCategoryTitle">
																									<!--- handle formatting of offset category --->
																									<cfif qALCCategories.SubCategoryID EQ 10011 OR qALCCategories.SubCategoryID EQ 10012 OR qALCCategories.SubCategoryID EQ 10013>
																									   <div class="check-line">
																									<cfelse>
																									  <div class="check-line offset1">
																									</cfif>

																										<input type="checkbox"  class='icheck-me' data-skin="square" data-color="blue"  name="subcategoryID" <cfif ValueList(getSelectedALCCategories.subcategoryID) CONTAINS qALCCategories.SubCategoryID >checked</cfif> disabled="disabled"> 
																										 <label class='inline' for="c6" >#qALCCategories.SubCategoryTitle# (#qALCCategories.SubCategoryID#)</label>
																									</div>																							
																								</cfoutput>
																								
																							</div>
																						</cfoutput>
																					</div>
																			

																				<HR>

																				 <div class="row-fluid">
																					<div class="span3">
																						<p><strong>QEP/URI Related</strong></p>

																						<div class="check-line">
																								<input type="radio"  name="qep_uri_related" value="1" class='icheck-me' data-skin="square" data-color="blue" <cfif qcountOutcomes.qep_uri_related eq 1>checked</cfif>  disabled='disabled' > <label class='inline' for="c6">Yes</label>


																							</div>

																						<div class="check-line">
																							<input type="radio"   name="qep_uri_related" value="0" class='icheck-me' data-skin="square" data-color="blue" <cfif qcountOutcomes.qep_uri_related eq 0>
																									checked
																								</cfif>  disabled='disabled'> <label class='inline' for="c6">No</label>
																						</div>
																					</div>

																					<div class="span3">
																							<p><strong>IFP Related</strong></p>

																							<div class="check-line">
																									<input type="radio"  name="ifp_related" value="1" class='icheck-me' data-skin="square" data-color="blue" <cfif qcountOutcomes.ifp_related eq 1>
																										checked
																									</cfif>  disabled='disabled'> <label class='inline' for="c6">Yes</label>
																							</div>

																							<div class="check-line">
																								<input type="radio"  name="ifp_related" value="0" class='icheck-me' data-skin="square" data-color="blue" <cfif qcountOutcomes.ifp_related eq 0>
																										checked
																									</cfif>  disabled='disabled'> <label class='inline' for="c6">No</label>
																							</div>

																						</div>

																					<div class="span3">
																						<p><strong>Data collected from online coursework?</strong></p>

																						<div class="check-line">
																							<input type="radio" name="online" value="1"  class='icheck-me' data-skin="square" data-color="blue" <cfif qcountOutcomes.online eq 1>
																								checked
																							</cfif>  disabled='disabled'> <label class='inline' for="c6">Yes</label>
																						</div>

																						<div class="check-line">
																							<input type="radio"  name="online" value="0" class='icheck-me' data-skin="square" data-color="blue" <cfif qcountOutcomes.online eq 0>
																								checked
																							</cfif>  disabled='disabled'> <label class='inline' for="c6">No</label>
																						</div>
																					</div>

																					<div class="span3">
																						<p><strong>Relates to FAU Strategic Plan Goals & Objectives</strong></p>

																						<div class="control-group">
																							
																							<div class="controls">
																								<div class="input-xlarge"><select name="select" id="select" class='chosen-select'>
																									<optgroup label="Goal 1: Providing Increased Access to Higher Education">
																										<option value="1">Assure student achievement in baccalaureate degree programs by developing and implementing Academic Learning Compacts</option>
																										<option value="2">Foster institutional commitment to student satisfaction and success
</option>
																										<option value="3">Promote the academic success and improve the retention rate of first-time-in-college (FTIC) students</option>
																										<option value="4">Promote timely completion of degrees and increase the graduation rate of FTIC students</option>
																										<option value="5">Promote the timely completion of degrees and increase the graduation rate of Associate in Arts transfer students</option>
																										<option value="6">Adopt strategies that assure racial and ethnic diversity within the student body</option>
																										<option value="7">Adopt strategies that assure that degree completions reflect the racial and ethnic composition of the student body</option>
																										<option value="8">Attain passage rates on certification exams for nursing equal to those approved by the Board of Trustees for the Board of Governors Accountability Targets</option>
																										<option value="9">Increase graduate enrollments in degree areas targeted by the Board of Governors</option>
																									</optgroup>
																									
																								</select></div>
																							</div>
																						</div>

																					</div>



																					<div class="span3">
																						<br><br><br><br>
																						<div align="right">
																							<cfoutput>
																								<a href="index.cfm?event=outcomedetails&outcomeID=#qcountOutcomes.outcomeID#&reportingUnitID=#arguments.event.getArg('reportingUnitID')#&planID=#arguments.event.getArg('planID')#">See More ...</a>
																							</cfoutput>																							
																						</div>
																					</div>
																				</div>
																				<!---

																				<p><strong>FAU Strategic Plan related goals & objectives:</strong></p>
																				Goal 1(all objectives): Providing Increased Access to Higher Education

																				<br>Goal 1, Objective 1: Assure student achievement in baccalaureate degree programs by developing and implementing Academic Learning Compacts

																				<br>Goal 4, Objective 5: Engage students, faculty and staff in service activities that mutually benefit the University and the community<br><br>


																				<p><strong>Implementing Strategy :</strong></p>
																				<p>Ensure that all students accomplish at least six credits in each subfield of anthropology: biological, archaeology, and cultural. In the process they must demonstrate sufficient command of the material as judged by professors on the work produced. Additionally, students must take at least six credits of research methods courses: the methodology sections of their research papers should demonstrate that they can apply theories to particular problems/questions. </P>


																				<p><strong>Assessment Method :</strong></p>
																				<p>Assessment based on demonstration of satisfactory or better performance (on average) on for a sample of individual student work that is reviewed annually. The methodology sections of student papers in the methods courses will be reviewed to ensure that students' performance meets standards. The rubric used is attached. </p>

																				<p>This method will ensure that we continue to abide by the commitments of our ALC, which require that all graduating students meet the department's standards for content knowledge. If we identify problems in meeting those goals, we will develop a departmental plan to strengthen the problem areas in courses.</p>



																				<p><strong>Criterion for success </strong></p>
																				<ul>
																					<li>80% will meet expectations.</li>
																					<li>10% excellent</li>
																					<li>30% above satisfactory</li>
																					<li>60% satisfactory</li>
																				</ul>

																				<p>As this is the first attempt at using this rubric, success criterion is experimental.</p>
																				--->
																				

																			</div>
																		</div>
																		<!---
																		<div class="box box-color box-bordered red">
																			<div class="box-title">
																				<h3>
																					<i class="icon-file"></i>
																					Outcome #2
																				</h3>
																				<div class="actions">
																					<a href="#" class="btn btn-mini this-content-slideUp"><i class="icon-angle-up"></i></a>
																				</div>
																			</div>
																			<div class="box-content"  style="display: none;">
																				Lorem ipsum Ut laborum irure eu quis ex proident.
																			</div>
																		</div>
																		<div class="box box-color box-bordered green">
																			<div class="box-title">
																				<h3>
																					<i class="icon-file"></i>
																					Outcome #3
																				</h3>
																				<div class="actions">
																					<a href="#" class="btn btn-mini this-content-slideUp"><i class="icon-angle-up"></i></a>
																				</div>
																				
																			</div>
																			<div class="box-content"  style="display: none;">
																				Lorem ipsum Amet amet sit dolore fugiat ullamco do. 
																			</div>
																		</div>
																		--->
																	</div>
																</div>														
															</cfloop>
														

														</div>
														<div class="tab-pane" id="checklist">
															<!---
															/********** IMPORTANT NOTE ***************/

															YOU WILL NEED TO POPULATE THE AssessmentPlanChecklistRating table
															with default NULL VALUES values for the ratings.

															1) Be sure to populate when a plan is created:
															
																	INSERT INTO AssessmentPlanChecklistRating
																		(
																		PlanID,
																		ReportingUnitID,
																		ChecklistTypeID,
																		Rating
																		)
																		VALUES
																		(
																		 14891,
																		 136001,
																		 11,
																		 NULL
																		)

															2) Do the same retroactively for existsing plans
															--->

															
																<!---
																		<cfoutput query="qCheckListTypes" group="category">
																			
																			<h4>#qCheckListTypes.category#</h4>
																			
																			<cfoutput group="subcategory">	
																				<cfloop query="#qRatings#">
																																										
																								
																					<cfif qCheckListTypes.checklisttypeID EQ qRatings.checklisttypeID >
																						<!--- #qratings.checklistratingID# YES --->

																						<p><strong>#qCheckListTypes.subcategory#</strong></p>

																					

																						  <div class="input select rating-b">								           
																						            <select id="tmp-#checklisttypeid#" name="rating-#checklisttypeid#">
																						                <option value="">N/A</option>
																						                <option value="Not Evident"<cfif qRatings.rating EQ "Not Evident">selected</cfif>>Not Evident</option>
																						                <option value="Developing" <cfif qRatings.rating EQ "Developing">selected</cfif>>Developing</option>
																						                <option value="Operational" <cfif qRatings.rating EQ "Operational">selected</cfif>>Operational</option>
																						                <option value="Exemplary" <cfif qRatings.rating EQ "Exemplary">selected</cfif>>Exemplary</option>
																						            </select>
																						 </div>
																					</cfif>
																					

																					
																				</cfloop> 
																			</cfoutput>
																			<hr>
																		</cfoutput>
																	--->

														   		
																			<form action="index.cfm?event=saveCheckList" method="post" id="#qCheckListTypes.checklisttypeid#">
																				
																				<cfoutput>
																					<input type="hidden" name="planID" value="#request.event.getArg('planID')#" />
																					<input type="hidden" name="reportingUnitID" value="#request.event.getArg('reportingUnitID')#" />
																				</cfoutput>
																				

																				<div class="row-fluid">
																					<div class="span12">
																							
																							<cfoutput query="qCheckListTypes" group="category">
																							<h4>#qCheckListTypes.category#</h4>
																								
																								<cfoutput group="subcategory">	
																									<cfloop query="#qRatings#">
																																															
																													
																										<cfif qCheckListTypes.checklisttypeID EQ qRatings.checklisttypeID >
																											<!--- #qratings.checklistratingID# YES --->

																											<p><strong>#qCheckListTypes.subcategory#</strong></p>

																											  <div class="input select rating-b">								           
																											            <select id="tmp-#checklisttypeid#" name="rating-#checklisttypeid#-#checklistRatingID#">
																											                <option value="">N/A</option>
																											                <option value="Not Evident"<cfif qRatings.rating EQ "Not Evident">selected</cfif>>Not Evident</option>
																											                <option value="Developing" <cfif qRatings.rating EQ "Developing">selected</cfif>>Developing</option>
																											                <option value="Operational" <cfif qRatings.rating EQ "Operational">selected</cfif>>Operational</option>
																											                <option value="Exemplary" <cfif qRatings.rating EQ "Exemplary">selected</cfif>>Exemplary</option>
																											            </select>
																											 </div>
																										</cfif>
																										

																										
																									</cfloop> 
																								</cfoutput>
																									<div class="form-actions">
																										<button type="submit" class="btn btn-primary">Save "#listlast(qCheckListTypes.category,".")#" ratings</button>
																										<!--- <button type="button" class="btn">Cancel</button> --->
																									</div>
																								<hr>
																							</cfoutput>
																					      
																						

																					</div>
																					
																					<!---
																					<div class="span4">
																						<div class="control-group">
																							<label for="textarea" class="control-label">Comments:</label>
																							<div class="controls">
																								<textarea name="textarea" id="textarea" class="input-block-level">Lorem ipsum mollit minim fugiat tempor dolore sit officia ut dolore. </textarea>
																							</div>
																						</div>
																						<div class="form-actions">
																							<button type="submit" class="btn btn-primary">Save changes</button>
																							<button type="button" class="btn">Cancel</button>
																						</div>
																					</div>		
																					--->												 
																				</div>
																			
																		</form>
																
														</div>
														
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</div>


</div></div>


 <script type="text/javascript">
       <cfoutput>
        $(function () {
           
                $('##tmp-1,##tmp-2,##tmp-3,##tmp-4,##tmp-5,##tmp-6,##tmp-7,##tmp-8,##tmp-9,##tmp-10,##tmp-11').barrating('show', {
                    showValues:false,
                    showSelectedRating:true
                });


                $(".editOutcome").click(function() {
					//alert('oh YEAHHHH!!!');
					var outcome    = $(this).data("outcome");
					//alert(outcome);
					window.location.href = "index.cfm?event=editOutcome&outcomeID=" + outcome + "&reportingUnitID=#request.event.getArg('reportingUnitID')#&planID=#request.event.getArg('planID')#";
				});
          
        });
        </cfoutput>
    </script>

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