<cfscript>
title 	=  "View Message";
qViewMessage 	=	request.event.getArg('qViewMessage');
</cfscript>


<div id="main" style="margin-left: 0px;">
				<div class="container-fluid">
					<cfinclude template="/Assessment/views/page_header.cfm">
					<div class="row-fluid">
						<div class="span12">
							<div class="box box-color">
								<div class="box-title">
									<h3>
										<i class="icon-envelope"></i>
										View Message
									</h3>
								</div>
								<div class="box-content nopadding">
									<form action="index.cfm?event=sendmessage" method="POST" class='form-vertical form-wysiwyg'>
										<div class="box-content nopadding">
												<!---
												<div class="control-group">
													<label>Subject:</label>
													<div class="controls">
														<input type="text" name="subject" class="input-xlarge">
													</div>
												</div>
												--->
												<cfloop query="qViewMessage">
													<cfoutput>
													<div class="control-group">
														<label for="sendToUserID">Send To:</label>
														<div class="controls">
															<input type="text" name="subject" id="subject" class="input-xlarge" value="#qViewMessage.UserFname# #qViewMessage.UserLname#" readonly>										
														</div>
													</div>
													
													<div class="control-group">
														<label for="subject">Subject:</label>
														<div class="controls">
															<input type="text" name="subject" id="subject" class="input-xlarge" value="#qViewMessage.subject#" readonly>
														</div>
													</div>
												
													
													<div class="control-group">
														<label>Message:</label>
														<div class="controls">
															#qViewMessage.message#
														</div>
													</div>
													</cfoutput>
												</cfloop>
												
										</div>
										<div class="form-actions text-right">
											<input type="submit" id="sendMessage" value="Send Message" class="btn btn-red">
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					
				</div>
			</div></div>