<cfscript>
title = "Plan Period: 2012-2013";
</cfscript>

<div id="main" style="margin-left: 0px;">
			<div class="container-fluid">

				<cfinclude template="/Assessment/views/page_header.cfm">
	

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
										<form action="#" method="POST" class='form-horizontal form-column form-bordered'>
									<div class="span6">
										<div class="control-group">
											<label for="textfield" class="control-label">College/Division</label>
											<div class="controls">
												Arts & Letters
											</div>
										</div>
										<div class="control-group">
											<label for="password" class="control-label">Department</label>
											<div class="controls">
												Anthropology
											</div>
										</div>
										<div class="control-group">
											<label class="control-label">Program<small>More information here</small></label>
											<div class="controls">
												BA Anthropology
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
												Learning Outcome Plan
											</div>
										</div>
										<div class="control-group">
											<label for="password" class="control-label">Plan Status</label>
											<div class="controls">
												Report approved (complete)
											</div>
										</div>
										<div class="control-group">
											<label class="control-label">Updated<small>More information here</small></label>
											<div class="controls">
												<cfoutput>
													#DateFormat(now(),'mm/dd/yyyy')#
												</cfoutput>
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
													<td>Eddie Murphy</td>
												</tr>
												<tr>
													<td>Contact Person(s):</td>
													<td>Deborah Minney </td>
												</tr>
											</table>										
										</center>
									</div>
									<div class="span12 alert alert-warning alert-nomargin">
										<center>
											<table class="alert alert-warning alert-nomargin">
												<tr>
													<td>This plan currently has 2 outcomes.</td>													
												</tr>
												<tr>
													<td>All steps in the plan have been completed.</td>													
												</tr>											
											</table>										
										</center>
									</div>
								</form>
								
							</div>





									</div>									
								</div>
							
								<div class="row-fluid margin-top">
									<div class="span12">
										<div class="box box-bordered ">
											<div class="box-title">
												<h3><i class="icon-reorder"></i>Learning Outcome #1 Details</h3>
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
																				Demonstrate knowledge of the major concepts, theories, and methods of anthropology: archaeology, biological anthropology, and cultural anthropology. Demonstrate knowledge of the major vocabulary, concepts, theories and arguments associated with a research question or topics.</p>

																				<HR>

																				<p><strong>Academic Learning Category related to this outcome:</strong></p>

																				<div class="row-fluid sortable-box">
																					<div class="span3">
																						<!--- <strong><em>Content Knowledge</em></strong> --->
																						    <br><br> 
																						    
																						     <div class="check-line">
																								<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue" checked> <label class='inline' for="c6">Content Knowledge</label>
																							</div>

																							<!---
																						    <div class="check-line">
																								<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue" > <label class='inline' for="c6">Procedural Knowledge (Research skills)</label>
																							</div>

																							<div class="check-line">
																								<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue" checked> <label class='inline' for="c6">Procedural Knowledge (Technical Skills)</label>
																							</div>
																							--->
																					</div>


																					<div class="span3">
																						<!--- <strong><em>Communication</em></strong> --->
																						    <br><br> 
																						    
																						     <div class="check-line">
																								<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue" checked> <label class='inline' for="c6">Communication </label>
																							</div>

																					</div>

																					

																				<br>

																				<div class="span3">
																						<!--- <strong><em>Critical Thinking</em></strong> --->
																						    <br> 
																						    
																						     <div class="check-line">
																								<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue"> <label class='inline' for="c6">Critical Thinking</label>
																							</div>

																							<!---
																						    <div class="check-line">
																								<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue" > <label class='inline' for="c6">Creative Skills</label>
																							</div>

																							<div class="check-line">
																								<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue" > <label class='inline' for="c6">Practical Skils</label>
																							</div>
																							--->																
																					</div>

																					<div class="span3">
																						<!--- <strong><em>Critical Thinking</em></strong> --->
																						    <br> 
																						    
																						     <div class="check-line">
																								<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue"> <label class='inline' for="c6">Does Not Apply</label>
																							</div>

																							<!---
																						    <div class="check-line">
																								<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue" > <label class='inline' for="c6">Creative Skills</label>
																							</div>

																							<div class="check-line">
																								<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue" > <label class='inline' for="c6">Practical Skils</label>
																							</div>
																							--->																
																					</div>

																					
																					</div>
																				
																				<!---
																				<div align="right">
																					<a href="index.cfm?event=outcomedetails">See More ...</a>
																				</div>
																				--->
																				<br>

																				<HR>

																				<p><strong>QEP/URI Related</strong></p>

																						<div class="check-line">
																						<input type="radio" id="c6" class='icheck-me' data-skin="square" data-color="blue" checked> <label class='inline' for="c6">Yes</label>


																					</div>

																				<div class="check-line">
																					<input type="radio" id="c6" class='icheck-me' data-skin="square" data-color="blue"> <label class='inline' for="c6">No</label>
																				</div>

																				<br>

																				<HR>

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
																					<p>Ten final research papers from two courses (Archaeological Research Methods and Social/Cultural Research Methods) were evaluated according to the attached rubric for content knowledge. Papers were randomly selected from each course. Faculty reviewers met and discussed the evaluation process. One faculty member scored the ARM material. Two faculty members scored the SCRM material. For the SCRM results, scores provided by the two reviewers were averaged. Standard rounding was used for fractional scores. The overall results for Content Knowledge are below:</p>
																					ARM
																					<ul>																					
																						<li>42.5% Excellent</li>
																						<li>22.5% Above satisfactory</li>
																						<li>35.0% Satisfactory</li>
																					</ul>

																					SCRM
																					<ul>
																						<li>45.0% Excellent</li>
																						<li>22.5% Above satisfactory</li>
																						<li>30.0% Satisfactory</li>
																						<li>2.5% Needs work</li>
																					</ul>

																					<p>Content knowledge score satisfy the standards set by the department.</p>

																					<HR>

																					<p><strong>Program Improvement</strong></p>
																					<p>The detailed results for the SCRM course (attached) indicate that students could benefit from stronger guidance in linking their ethnographic research to a theoretical perspective. This will be stressed more in the course next spring.</p>

																					<p>The review process itself should be carried out on the biological research methods course as well next year</p>

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