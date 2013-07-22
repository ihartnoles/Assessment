<cfscript>
title = "Write Message";
</cfscript>
<div id="main" style="margin-left: 0px;">
				<div class="container-fluid">
					<cfinclude template="/Assessment/views/page_header.cfm">
					<div class="row-fluid">
						<div class="span12">
							<div class="box box-bordered box-color">
								<div class="box-title">
									<h3>
										<i class="icon-envelope"></i>
										Write Message
									</h3>
								</div>
								<div class="box-content padding">
									<form action="#" method="POST" class='form-wysiwyg'>
										<div class="box-content nopadding">
											<label>Send To:</label>
											<div class="controls">
												<input type="text" name="sendToUserID" class="input-xlarge">
											</div>
											<label>Subject:</label>
											<div class="controls">
												<input type="text" name="subject" class="input-xlarge">
											</div>

										</div>
										<div class="box-content nopadding">
												<textarea name="ck" class='ckeditor span12' rows="5"></textarea>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					
				</div>
			</div></div>