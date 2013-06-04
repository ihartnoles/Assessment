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
												 Administrative Support Plan
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
														<li>
															<a href="#thirds3322" data-toggle='tab'><i class="icon-tag"></i> Lorem Ipsum</a>
														</li>
														<li>
															<a href="#thirds33" data-toggle='tab'><i class="icon-trash"></i> Lorem Ipsum</a>
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
															<div class="row-fluid sortable-box">
																<div class="span6">
																	<div class="box box-color box-bordered blue">
																			<div class="box-title">
																				<h3>
																					<i class="icon-file"></i>
																					Outcome #1
																				</h3>
																				<div class="actions">
																					<a href="#" class="btn btn-mini this-content-slideUp"><i class="icon-angle-down"></i></a>
																				</div>
																			</div>
																			<div class="box-content">
																				<h4>Description and Methodology</h4>
																				<p><strong>Outcome Description </strong><br>
																				Demonstrate knowledge of the major concepts, theories, and methods of anthropology: archaeology, biological anthropology, and cultural anthropology. Demonstrate knowledge of the major vocabulary, concepts, theories and arguments associated with a research question or topics.</p>

																				<p><strong>Academic Learning Compact (ALC) Categories related to this outcome:</strong></p>
																				
																				    <br>
																				    <div class="row-fluid sortable-box">
																					<div class="span3">
																						<strong><em>Content Knowledge</em></strong>
																						    <br><br> 
																						    
																						     <div class="check-line">
																								<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue" checked> <label class='inline' for="c6">Declarative Knowledge </label>
																							</div>

																						    <div class="check-line">
																								<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue" > <label class='inline' for="c6">Procedural Knowledge (Research skills)</label>
																							</div>

																							<div class="check-line">
																								<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue" checked> <label class='inline' for="c6">Procedural Knowledge (Technical Skills)</label>
																							</div>
																					</div>

																					<div class="span3">
																						<strong><em>Communication</em></strong>
																						    <br><br> 
																						    
																						     <div class="check-line">
																								<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue" checked> <label class='inline' for="c6">Written Communication </label>
																							</div>

																						    <div class="check-line">
																								<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue" > <label class='inline' for="c6">Oral Communication</label>
																							</div>

																							<div class="check-line">
																								<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue" > <label class='inline' for="c6">Multimedia/Graphic communication</label>
																							</div>

																							<div class="check-line">
																								<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue" > <label class='inline' for="c6">Team/Collaborative communication</label>
																							</div>
																					</div>

																					<div class="span3">
																						<strong><em>Critical Thinking</em></strong>
																						    <br><br> 
																						    
																						     <div class="check-line">
																								<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue"> <label class='inline' for="c6">Analytical Skills</label>
																							</div>

																						    <div class="check-line">
																								<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue" > <label class='inline' for="c6">Creative Skills</label>
																							</div>

																							<div class="check-line">
																								<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue" > <label class='inline' for="c6">Practical Skils</label>
																							</div>
																							
																					</div>
																				</div>


																				<p><strong>QEP/URI Related</strong></p>

																				<div class="check-line">
																						<input type="checkbox" id="c6" class='icheck-me' data-skin="square" data-color="blue" checked> <label class='inline' for="c6">QEP/URI Related</label>
																					</div>
																				<div align="right">
																					<a href="index.cfm?event=outcomedetails">See More ...</a>
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
																	</div>
																</div>
														</div>
														<div class="tab-pane" id="thirds3322">
															Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque ipsum ab odio accusamus similique dicta ipsam dolor magni nemo? Laudantium numquam consectetur maiores quaerat totam cupiditate error repellendus eos quibusdam dolore ipsum sequi illo blanditiis voluptatibus veniam dicta alias tempore consequuntur reprehenderit dignissimos iste sit perferendis possimus quisquam id voluptatum explicabo ut ad accusamus neque. Commodi ipsam quia aperiam nisi id unde sapiente magnam reiciendis voluptate placeat in optio consequuntur culpa magni repudiandae veniam aut. Magni sed asperiores omnis error nemo cum minima illum rerum assumenda ipsa excepturi odit laborum doloremque iure temporibus consectetur in culpa libero iusto repellendus. Culpa perspiciatis nesciunt explicabo officiis beatae ipsam qui odio architecto asperiores ad amet aspernatur veniam ex voluptates cumque expedita reiciendis nobis incidunt harum praesentium a totam ut cum corrupti quia rem provident delectus fuga deserunt itaque aut fugiat veritatis necessitatibus inventore nisi enim aliquid quibusdam! Nihil ratione laboriosam accusamus. Iure sapiente iste odit voluptas sit reiciendis. Cum voluptatibus quia cupiditate cumque eveniet mollitia unde adipisci vel itaque ipsa est iste ducimus sed consequuntur ratione eaque voluptates et odit quod nemo quis aut repudiandae ipsum nostrum deserunt! Excepturi cum eos ut labore debitis facilis ipsum! Fugit eos dicta amet neque qui deserunt!
														</div>
														<div class="tab-pane" id="thirds33">
															Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem tempore accusamus officiis et nihil qui ea voluptatem itaque enim obcaecati iure distinctio quam molestiae deleniti iste necessitatibus dolorem quos rerum inventore suscipit! Temporibus suscipit excepturi molestias harum tempora nihil sed placeat atque nobis a minima sit id deserunt expedita ex! Tempore incidunt animi iste vitae dignissimos adipisci nisi impedit doloribus blanditiis unde nobis totam laboriosam maxime in quam repudiandae eos atque illum. Eaque facilis voluptates architecto suscipit sed dolor possimus earum molestiae ratione porro necessitatibus nihil sint recusandae optio eligendi ipsum maiores cum impedit dolores soluta ullam similique quas quod assumenda laudantium unde excepturi sequi hic aperiam tenetur explicabo laboriosam maxime perspiciatis placeat commodi illo dolorem corporis tempora voluptatem culpa nobis veritatis consequatur veniam mollitia ex animi qui omnis dolore et quae. Natus itaque quisquam repellat enim accusamus vel deserunt veniam vitae earum nostrum nulla maxime quas ipsa cum rem ut fugiat repellendus quis voluptates eligendi voluptatibus animi obcaecati esse illo incidunt? Amet repudiandae ducimus vel sit neque magni optio eveniet ut eum adipisci incidunt laudantium consectetur debitis veniam tempore temporibus maiores inventore! Libero hic quisquam nihil pariatur perspiciatis beatae non at commodi sint dolore tempora corporis explicabo quam saepe? 
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