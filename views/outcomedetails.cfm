<cfscript>
qPlanDetails		= request.event.getArg('qPlanDetails');
qOutcomeDetail    	= request.event.getArg('qOutcomeDetail');
qALCCategories		= request.event.getArg('qALCCategories');
title 				= "Plan Period: " &  #qPlanDetails.planperiod#;
</cfscript>

<div id="main" style="margin-left: 0px;">
			<div class="container-fluid">

				<cfinclude template="/Assessment/views/page_header.cfm">
				
				<!---
				<cfdump var="#qPlanDetails#" />

				<cfdump var="#qOutcomeDetail#" />
				--->
				<cfdump var="#qALCCategories#" />
				

			<div class="row-fluid">
					<div class="span12">
						<div class="box">
							
									<div class="box-content">
								<div class="row-fluid">
									<div class="box box-bordered">
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
										<div class="box box-bordered ">
											<div class="box-title">
												<h3>
													<cfoutput>
													<i class="icon-reorder"></i>Learning Outcome #qOutcomeDetail.currentrow# Details
													</cfoutput>
												</h3>
											</div>
												<div class="box-content nopadding">
													<ul class="tabs tabs-inline tabs-top">
														
														<li class="active">
															<a href="#descript1" data-toggle='tab'><i class="icon-share-alt"></i> Description and Methodology</a>
														</li>					
														
														<li>
															<a href="#results3" data-toggle='tab'><i class="icon-bar-chart"></i>Results</a>
														</li>
														
														<li>
															<a href="#docs2" data-toggle='tab'><i class="icon-inbox"></i> Supporting Docs</a>
														</li>
													
														<!---
														<li>
															<a href="#checklist" data-toggle='tab'><i class="icon-inbox"></i> Plan Checklist</a>
														</li>
														
														<li>
															<a href="#thirds3322" data-toggle='tab'><i class="icon-tag"></i> Lorem Ipsum</a>
														</li>
														<li>
															<a href="#thirds33" data-toggle='tab'><i class="icon-trash"></i> Lorem Ipsum</a>
														</li>
														--->
													</ul>
													<div class="tab-content padding tab-content-inline tab-content-bottom">
														<div class="tab-pane active" id="descript1">
															<div class="row-fluid sortable-box">
																<div class="span12">
																	<div class="box box-color box-bordered blue">
																			<div class="box-title">
																				
																				<h3>
																					<i class="icon-file"></i>
																					Description and Methodology
																				</h3>
																			
																				<div class="actions">
																					<a href="#" class="btn btn-mini this-content-slideUp"><i class="icon-angle-down"></i></a>
																				</div>
																			</div>
																			<div class="box-content">
																				<!--- <h4>Description and Methodology</h4> --->
																				<p><strong>Outcome Description </strong><br>
																				<cfoutput>#qOutcomeDetail.outcomedescription#</cfoutput></p>

																				<HR>

																				<p><strong>Academic Learning Category related to this outcome:</strong></p>
																				
																				<div class="row-fluid sortable-box">
																					
																						<cfoutput query="qALCCategories" group="CategoryTitle" >
																							<div class="span3">
																							<!--- <strong><em>Content Knowledge</em></strong> --->
																							    <br><br> 
																							    
																							    <!---
																							    	Dynamic ALC Checkboxes

																									1) Need to be able to check the boxes and save to DB
																									2) Need to compare results in db and be "checked" where applicable
																							    --->

																							     <div class="check-line">
																									<input type="checkbox"  class='icheck-me' data-skin="square" data-color="blue" checked> <label class='inline' for="c6">#qALCCategories.CategoryTitle#</label>
																								</div>

																								<cfoutput group="SubCategoryTitle">
																									 <div class="check-line offset1">
																										<input type="checkbox"  class='icheck-me' data-skin="square" data-color="blue" > <label class='inline' for="c6">#qALCCategories.SubCategoryTitle#</label>
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
																								<input type="radio"  class='icheck-me' data-skin="square" data-color="blue" checked> <label class='inline' for="c6">Yes</label>


																							</div>

																						<div class="check-line">
																							<input type="radio"  class='icheck-me' data-skin="square" data-color="blue"> <label class='inline' for="c6">No</label>
																						</div>
																					</div>

																					<div class="span3">
																						<p><strong>Data collected from online coursework?</strong></p>

																						<div class="check-line">
																								<input type="radio"  class='icheck-me' data-skin="square" data-color="blue" checked> <label class='inline' for="c6">Yes</label>


																							</div>

																						<div class="check-line">
																							<input type="radio"  class='icheck-me' data-skin="square" data-color="blue"> <label class='inline' for="c6">No</label>
																						</div>
																					</div>

																					<div class="span3">
																						<p><strong>Relates to FAU Strategic Plan Goals & Objectives</strong></p>

																						<div class="control-group">
																							
																							<div class="controls">
																								<div class="input-xlarge"><select name="select" id="select" class='chosen-select'>
																									<option value="1">Option-1</option>
																									<option value="2">Option-2</option>
																									<option value="3">Option-3</option>
																									<option value="4">Option-4</option>
																									<option value="5">Option-5</option>
																									<option value="6">Option-6</option>
																									<option value="7">Option-7</option>
																									<option value="8">Option-8</option>
																									<option value="9">Option-9</option>
																								</select></div>
																							</div>
																						</div>

																					</div>

																					</div>

																				<br>

																				<HR>

																				<p><strong>FAU Strategic Plan related goals & objectives:</strong></p>
																				Goal 1(all objectives): Providing Increased Access to Higher Education

																				<br>Goal 1, Objective 1: Assure student achievement in baccalaureate degree programs by developing and implementing Academic Learning Compacts

																				<br>Goal 4, Objective 5: Engage students, faculty and staff in service activities that mutually benefit the University and the community<br><br>
							<cfloop query="qOutcomeDetail">
								<cfoutput>

																				<p><strong>Implementing Strategy :</strong></p>
																				<p>#qOutcomeDetail.outcomestrategy#</P>


																				<p><strong>Assessment Method :</strong></p>
																				<p>#qOutcomeDetail.outcomemethod#</p>

																				<p>This method will ensure that we continue to abide by the commitments of our ALC, which require that all graduating students meet the department's standards for content knowledge. If we identify problems in meeting those goals, we will develop a departmental plan to strengthen the problem areas in courses.</p>



																				<p><strong>Criterion for success </strong></p>
																				<p>#qOutcomeDetail.outcomecriterion#</p>
									</cfoutput>
								</cfloop>		
																				

																			</div>
																		</div>
																		
																	</div>
																</div>
														</div>

														<div class="tab-pane" id="results3">
															<div class="span12">
																<div class="box box-color box-bordered blue">
																				<div class="box-title">
																					<h3>
																						<i class="icon-file"></i>
																						Results
																					</h3>
																					<div class="actions">
																						<a href="#" class="btn btn-mini this-content-slideUp"><i class="icon-angle-down"></i></a>
																					</div>
																				</div>
																				<div class="box-content">
																					<p><strong>Data Summary </strong></p>
																					
																					<cfloop query="qOutcomeDetail">
																						<cfoutput>
																						<p>#qOutcomeDetail.OutcomeResults#</p>																						
																					<HR>

																					<p><strong>Program Improvement</strong></p>
																					
																					<p>#HTMLEditFormat(qOutcomeDetail.OutcomePlanningImprovement)#</p>

																					</cfoutput>
																					</cfloop>

																					<p><strong>Codes</strong></p>
																					<div class="span3">
																					    <div class="check-line">
																							<input type="checkbox" id="c5" class='icheck-me' data-skin="square" data-color="blue"> <label class='inline'>1. Curricular Change
																							<!---
																							<a href="##" class="btn" rel="popover" data-trigger="hover" data-placement="right" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." title="Curricular Change">[explain]</a>
																							--->

																							<a href="#modal-curricular" role="button" class="btn btn-mini" data-toggle="modal">?</a>
																						</label>

																							<!--- Modal to Explain Curricular Change --->
																							<div id="modal-curricular" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
																								<div class="modal-header">
																									
																									<h3 id="myModalLabel">Curricular Change</h3>
																								</div>
																								<div class="modal-body">
																									<p>Curricular change to degree program (add a course or other requirement; change sequence or courses).</p>
																								</div>
																								<div class="modal-footer">
																									<button class="btn btn-primary" data-dismiss="modal">Ok</button>
																								</div>
																							</div>
																						</div>

																						<div class="check-line">
																							<input type="checkbox"  class='icheck-me' data-skin="square" data-color="blue"> <label class='inline'>2. Course Revision 
																							<a href="#modal-course" role="button" class="btn btn-mini" data-toggle="modal">?</a>
																						</label>
																							
																							<!--- Modal to Explain Course Revision --->
																							<div id="modal-course" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
																								<div class="modal-header">
																									
																									<h3 id="myModalLabel">Course Revision</h3>
																								</div>
																								<div class="modal-body">
																									<p>Revise existing course or courses; add assignment; modify assisgnment; modify content of course, change textbook, etc.</p>
																								</div>
																								<div class="modal-footer">
																									<button class="btn btn-primary" data-dismiss="modal">Ok</button>
																								</div>
																							</div>
																						</div>

																						<div class="check-line">
																							<input type="checkbox"  class='icheck-me' data-skin="square" data-color="blue"> <label class='inline' for="c6">3. Pedagogy</label>
																						</div>
																					</div>

																					<div class="span3">
																					    <div class="check-line">																
																							<input type="checkbox"  class='icheck-me' data-skin="square" data-color="blue"> <label class='inline' for="c6">4. Personnel Change</label>
																						</div>

																						<div class="check-line">
																							<input type="checkbox"  class='icheck-me' data-skin="square" data-color="blue"> <label class='inline' for="c6">5. Assessment Plan Change</label>
																						</div>

																						<div class="check-line">
																							<input type="checkbox"  class='icheck-me' data-skin="square" data-color="blue"> <label class='inline' for="c6">6. Inform Budget/Resources</label>
																						</div>
																					</div>

																					<div class="span3">
																					    <div class="check-line">																
																							<input type="checkbox"  class='icheck-me' data-skin="square" data-color="blue"> <label class='inline' for="c6">7. Improve Advising</label>
																						</div>

																						<div class="check-line">
																							<input type="checkbox"  class='icheck-me' data-skin="square" data-color="blue"> <label class='inline' for="c6">8. Faculty Development/Training</label>
																						</div>

																						<div class="check-line">
																							<input type="checkbox"  class='icheck-me' data-skin="square" data-color="blue"> <label class='inline' for="c6">9. Other</label>
																						</div>
																					</div>

																				</div>

																</div>
															</div>
														</div>

														<div class="tab-pane" id="docs2">
															<div class="span12">
																You will be able to upload/download/view documents here!

																<div class="box">
																	<div class="box-title">
																		<h3><i class="icon-th"></i> Multi File upload</h3>
																	</div>
																	<div class="box-content nopadding">
																		<div class="plupload"></div>
																	</div>
																</div>

															</div>
														</div>
														
														
														<div class="tab-pane" id="checklist">
															<form id="form1">
																	<div class="Clear">
																	    <h4>Student Learning Outcomes</h4>
																	    <p><strong>A. Student learning outcomes are clear, specific and oriented to the student</strong></p>
																	    <input class="star" type="radio" name="test-1-rating-1" value="Not Evident" title="Not Evident"/>
																	    <input class="star" type="radio" name="test-1-rating-1" value="Developing" title="Developing"/>
																	    <input class="star" type="radio" name="test-1-rating-1" value="Operational" title="Operational"/>
																	    <input class="star" type="radio" name="test-1-rating-1" value="Exemplary" title="Exemplary"/>
																   </div>
																   <br><br>
																   <div class="Clear">
																	    <h4>Assessment Method</h4>
																	    <p><strong>A. The plan assesses improvements that were made based on an analysis of previous results</strong></p>
																	    <input class="star" type="radio" name="test-1-rating-2" value="Not Evident" title="Not Evident"/>
																	    <input class="star" type="radio" name="test-1-rating-2" value="Developing" title="Developing"/>
																	    <input class="star" type="radio" name="test-1-rating-2" value="Operational" title="Operational"/>
																	    <input class="star" type="radio" name="test-1-rating-2" value="Exemplary" title="Exemplary"/>
																   </div>
																    <br>
																    <div class="Clear">																	   
																	    <p><strong>B.  Methods are appropriate to assess the specific outcomes</strong></p>
																	    <input class="star" type="radio" name="test-1-rating-3" value="Not Evident" title="Not Evident"/>
																	    <input class="star" type="radio" name="test-1-rating-3" value="Developing" title="Developing"/>
																	    <input class="star" type="radio" name="test-1-rating-3" value="Operational" title="Operational"/>
																	    <input class="star" type="radio" name="test-1-rating-3" value="Exemplary" title="Exemplary"/>
																   </div>
																   <br>
																    <div class="Clear">																	   
																	    <p><strong>C. Types of Measures</strong></p>
																	    <input class="star" type="radio" name="test-1-rating-4" value="Not Evident" title="Not Evident"/>
																	    <input class="star" type="radio" name="test-1-rating-4" value="Developing" title="Developing"/>
																	    <input class="star" type="radio" name="test-1-rating-4" value="Operational" title="Operational"/>
																	    <input class="star" type="radio" name="test-1-rating-4" value="Exemplary" title="Exemplary"/>
																   </div>
																   <br>
																    <div class="Clear">																	   
																	    <p><strong>D.  Specification of desired results for outcomes
</strong></p>
																	    <input class="star" type="radio" name="test-1-rating-5" value="Not Evident" title="Not Evident"/>
																	    <input class="star" type="radio" name="test-1-rating-5" value="Developing" title="Developing"/>
																	    <input class="star" type="radio" name="test-1-rating-5" value="Operational" title="Operational"/>
																	    <input class="star" type="radio" name="test-1-rating-5" value="Exemplary" title="Exemplary"/>
																   </div>
																    <br>
																    <div class="Clear">																	   
																	    <p><strong>E.   Data collection & reliability
</strong></p>
																	    <input class="star" type="radio" name="test-1-rating-6" value="Not Evident" title="Not Evident"/>
																	    <input class="star" type="radio" name="test-1-rating-6" value="Developing" title="Developing"/>
																	    <input class="star" type="radio" name="test-1-rating-6" value="Operational" title="Operational"/>
																	    <input class="star" type="radio" name="test-1-rating-6" value="Exemplary" title="Exemplary"/>
																   </div>
																   <br><br>
																   <div class="Clear">
																	    <h4>Results of program assessment</h4>
																	    <p><strong>A. Presentation of results</strong></p>
																	    <input class="star" type="radio" name="test-1-rating-7" value="Not Evident" title="Not Evident"/>
																	    <input class="star" type="radio" name="test-1-rating-7" value="Developing" title="Developing"/>
																	    <input class="star" type="radio" name="test-1-rating-7" value="Operational" title="Operational"/>
																	    <input class="star" type="radio" name="test-1-rating-7" value="Exemplary" title="Exemplary"/>
																   </div>
																    <br>
																    <div class="Clear">																	   
																	    <p><strong>B. History of results</strong></p>
																	    <input class="star" type="radio" name="test-1-rating-8" value="Not Evident" title="Not Evident"/>
																	    <input class="star" type="radio" name="test-1-rating-8" value="Developing" title="Developing"/>
																	    <input class="star" type="radio" name="test-1-rating-8" value="Operational" title="Operational"/>
																	    <input class="star" type="radio" name="test-1-rating-8" value="Exemplary" title="Exemplary"/>
																   </div>
																   <br>
																    <div class="Clear">																	   
																	    <p><strong>C. Interpreation of Results</strong></p>
																	    <input class="star" type="radio" name="test-1-rating-9" value="Not Evident" title="Not Evident"/>
																	    <input class="star" type="radio" name="test-1-rating-9" value="Developing" title="Developing"/>
																	    <input class="star" type="radio" name="test-1-rating-9" value="Operational" title="Operational"/>
																	    <input class="star" type="radio" name="test-1-rating-9" value="Exemplary" title="Exemplary"/>
																   </div>
																   <br>
																    <div class="Clear">																	   
																	    <p><strong>D. Communication of Results with faculty/stakeholders
</strong></p>
																	    <input class="star" type="radio" name="test-1-rating-10" value="Not Evident" title="Not Evident"/>
																	    <input class="star" type="radio" name="test-1-rating-10" value="Developing" title="Developing"/>
																	    <input class="star" type="radio" name="test-1-rating-10"value="Operational" title="Operational"/>
																	    <input class="star" type="radio" name="test-1-rating-10" value="Exemplary" title="Exemplary"/>
																   </div>
																    <br><br>
																    <div class="Clear">
																	    <h4>Use of results for improvement</h4>
																	    <p><strong>A. Improvement of programs regarding student learning and development</strong></p>
																	    <input class="star" type="radio" name="test-1-rating-11" value="Not Evident" title="Not Evident"/>
																	    <input class="star" type="radio" name="test-1-rating-11" value="Developing" title="Developing"/>
																	    <input class="star" type="radio" name="test-1-rating-11" value="Operational" title="Operational"/>
																	    <input class="star" type="radio" name="test-1-rating-11" value="Exemplary" title="Exemplary"/>
																   </div>
																   
															</form>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								


								<!---
								<div class="row-fluid margin-top">
									<div class="span12">
										<h4>Related outfits</h4>
										<ul class="shop-items">
											<li class="span3">
												<a href="more-shop-product.html">
													<img src="img/demo/shop/1.jpg" alt="">
													<div class="details">
														<div class="name">
															Simple jeans
														</div>
														<div class="price">
															$25.00
														</div>
													</div>
												</a>
												<div class="extended">
													<div class="pull-left">
														<ul class="colors small">
															<li class="red">
																<a href="#"></a>
															</li>
															<li class="pink">
																<a href="#"></a>
															</li>
															<li class="lightgrey">
																<a href="#"></a>
															</li>
														</ul>
													</div>
													<div class="pull-right">
														<a href="#" rel='tooltip' title="Add to cart"><i class="icon-shopping-cart"></i></a>
														<a href="#" rel='tooltip' title="Add to whishlist"><i class="icon-cloud"></i></a>
													</div>
												</div>
											</li>
											<li class="span3">
												<a href="more-shop-product.html">
													<img src="img/demo/shop/4.jpg" alt="">
													<div class="details">
														<div class="name">
															Simple jeans
														</div>
														<div class="price">
															$25.00
														</div>
													</div>
												</a>
												<div class="extended">
													<div class="pull-left">
														<ul class="colors small">
															<li class="red">
																<a href="#"></a>
															</li>
															<li class="pink">
																<a href="#"></a>
															</li>
															<li class="lightgrey">
																<a href="#"></a>
															</li>
														</ul>
													</div>
													<div class="pull-right">
														<a href="#" rel='tooltip' title="Add to cart"><i class="icon-shopping-cart"></i></a>
														<a href="#" rel='tooltip' title="Add to whishlist"><i class="icon-cloud"></i></a>
													</div>
												</div>
											</li>
											<li class="span3">
												<a href="more-shop-product.html">
													<img src="img/demo/shop/4.jpg" alt="">
													<div class="details">
														<div class="name">
															Simple jeans
														</div>
														<div class="price">
															$25.00
														</div>
													</div>
												</a>
												<div class="extended">
													<div class="pull-left">
														<ul class="colors small">
															<li class="red">
																<a href="#"></a>
															</li>
															<li class="pink">
																<a href="#"></a>
															</li>
															<li class="lightgrey">
																<a href="#"></a>
															</li>
														</ul>
													</div>
													<div class="pull-right">
														<a href="#" rel='tooltip' title="Add to cart"><i class="icon-shopping-cart"></i></a>
														<a href="#" rel='tooltip' title="Add to whishlist"><i class="icon-cloud"></i></a>
													</div>
												</div>
											</li>
											<li class="span3">
												<a href="more-shop-product.html">
													<img src="img/demo/shop/6.jpg" alt="">
													<div class="details">
														<div class="name">
															Simple jeans
														</div>
														<div class="price">
															$25.00
														</div>
													</div>
												</a>
												<div class="extended">
													<div class="pull-left">
														<ul class="colors small">
															<li class="red">
																<a href="#"></a>
															</li>
															<li class="pink">
																<a href="#"></a>
															</li>
															<li class="lightgrey">
																<a href="#"></a>
															</li>
														</ul>
													</div>
													<div class="pull-right">
														<a href="#" rel='tooltip' title="Add to cart"><i class="icon-shopping-cart"></i></a>
														<a href="#" rel='tooltip' title="Add to whishlist"><i class="icon-cloud"></i></a>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</div>
								--->
							</div>
						</div>
					</div>
				</div>


</div></div>

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

<script type="text/javascript" language="javascript">
$(function(){ 
 $('#form1 :radio.star').rating(); 
 	//$('#form2 :radio.star').rating({cancel: 'Cancel', cancelValue: '0'}); 
 });
</script>