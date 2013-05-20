<cfscript>
title = "My Account Settings";
</cfscript>

<div id="main" style="margin-left: 0px;">
			<div class="container-fluid">
				<cfinclude template="/Assessment/views/page_header.cfm">
				<div class="row-fluid">
				<div class="span12">
					<div class="box box-color box-bordered">
						<div class="box-title">
							<h3>
								<i class="icon-user"></i>
								Edit user profile
							</h3>
						</div>
						<div class="box-content nopadding">
							<ul class="tabs tabs-inline tabs-top">
								<li class='active'>
									<a href="#profile" data-toggle='tab'><i class="icon-user"></i> Profile</a>
								</li>
								<li>
									<a href="#notifications" data-toggle='tab'><i class="icon-bullhorn"></i> User Roles</a>
								</li>
								<li>
									<a href="#security" data-toggle='tab'><i class="icon-lock"></i> Change Password</a>
								</li>
							</ul>
							<div class="tab-content padding tab-content-inline tab-content-bottom">
								<div class="tab-pane active" id="profile">
									<form action="#" class="form-horizontal">
										<div class="row-fluid">
											<div class="span2">
												
											</div>
											<div class="span10">
												<div class="control-group">
													<label for="name" class="control-label right">Name:</label>
													<div class="controls">
														<input type="text" name="name" class='input-xlarge' value="John Doe">
													</div>
												</div>												
												
												<div class="control-group">
													<label for="name" class="control-label right">Address:</label>
													<div class="controls">
														<div class="span12"><input type="text" name="textfield" id="textfield" class="tagsinput" value="777 Glades Road"></div>
													</div>
												</div>
												<div class="control-group">
													<label for="name" class="control-label right">Campus:</label>
													<div class="controls">
														<div class="span12"><input type="text" name="campus" id="textfield" class="tagsinput" value="Boca Raton"></div>
													</div>
												</div>
												<div class="control-group">
													<label for="name" class="control-label right">Phone:</label>
													<div class="controls">
														<div class="span12"><input type="text" name="phone" id="textfield" class="tagsinput" value="(561)297-1111"></div>
													</div>
												</div>
												<div class="control-group">
													<label for="email" class="control-label right">Email:</label>
													<div class="controls">
														<input type="text" name="email" class='input-xlarge' value="jdoe@fau.edu">
														<!---
														<div class="form-button">
															<a href="#" class="btn btn-grey-4 change-input">Change</a>
														</div>
														--->
													</div>
												</div>
												
												<div class="form-actions">
													<input type="submit" class='btn btn-primary' value="Save">
													<input type="reset" class='btn' value="Discard changes">
												</div>
											</div>
										</div>
									</form>
								</div>
								<div class="tab-pane" id="notifications">
									
									<form action="#" class="form-horizontal">
										<div class="control-group">
											<label for="asdf" class="control-label">Roles</label>
											<div class="controls">
												<label class="radio"><input type="radio" name="role" id="Administrator" value="1"/>Administrator</label>
												<label class="radio"><input type="radio" name="role" id="Reporter" value="2"/>Reporter</label>
												<label class="radio"><input type="radio" name="role" id="Reviewer" value="3"/>Reviewer</label>
												<label class="checkbox"><input type="checkbox" name="UpdateDefaultCheckbox" id="Default"/>Make this my default role</label>
											</div>
										</div>
										<div class="form-actions">
											<input type="submit" class='btn btn-primary' value="Save">
											<input type="reset" class='btn' value="Discard changes">
										</div>
									</form>
										
								</div>
								<div class="tab-pane" id="security">
									<form action="#" class="form-horizontal">
										<div class="control-group">
											<label for="password" class="control-label">Enter new password:</label>
											<div class="controls">
														<input type="password" name="pw" class='input-xlarge' value="********">
														<!---
														<div class="form-button">
															<a href="#" class="btn btn-grey-4 change-input">Change</a>
														</div>
														--->
													</div>
											
										</div>
										<div class="control-group">
											<label for="password_conf" class="control-label">Re-enter new password:</label>
											<div class="controls">
														<input type="password" name="pw" class='input-xlarge' value="********">
														<!---
														<div class="form-button">
															<a href="#" class="btn btn-grey-4 change-input">Change</a>
														</div>
														--->
													</div>
											
										</div>
										
										<div class="form-actions">
											<input type="submit" class='btn btn-primary' value="Save">
											<input type="reset" class='btn' value="Discard changes">
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div><!--- end of container-fluid --->
</div><!--- end of main --->

