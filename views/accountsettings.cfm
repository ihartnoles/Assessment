<cfscript>
title 			= "My Account Settings";
qUserDetails 	= request.event.getArg('qUserDetails');
qUserRoles	= request.event.getArg('qUserRoles');
</cfscript>

<!------>
<cfdump var="#session#"/>

<!--- <cfdump var="#qUserRoles#"/> --->

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

									<form action="##" class="form-horizontal">
									<cfloop query="qUserDetails">
									<cfoutput>
										<div class="row-fluid">
											<div class="span2">
												
											</div>
											<div class="span10">
												<div class="control-group">
													<label for="name" class="control-label right">Name:</label>
													<div class="controls">
														<input type="text" name="name" class='input-xlarge' value="#qUserDetails.UserFname# #qUserDetails.UserLname#">
													</div>
												</div>												
												
												<div class="control-group">
													<label for="name" class="control-label right">Address:</label>
													<div class="controls">
														<div class="span12"><input type="text" name="textfield" id="textfield" class="tagsinput" value="#qUserDetails.UserAddress#"></div>
													</div>
												</div>
												<div class="control-group">
													<label for="name" class="control-label right">Campus:</label>
													<div class="controls">
														<div class="span12"><input type="text" name="campus" id="textfield" class="tagsinput" value="#qUserDetails.campusdescription#"></div>
													</div>
												</div>
												<div class="control-group">
													<label for="phone" class="control-label right">Phone:</label>
													<div class="controls">
														<div class="span12">
															<input type="text" name="phone" id="phone" class="input-xlarge mask_phone">
															<span class="help-block">Format: (999) 999-9999</span>
														</div>
													</div>
												</div>
												<div class="control-group">
													<label for="email" class="control-label right">Email:</label>
													<div class="controls">
														<input type="text" name="email" class='input-xlarge' value="#qUserDetails.UserEmail#">
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
									</cfoutput>
									</cfloop>
									</form>
								</div>
								<div class="tab-pane" id="notifications">
									
									<form action="index.cfm?event=updateUserRole" method="post" class="form-horizontal">
										<div class="control-group">
											<label for="asdf" class="control-label">Roles</label>
											<div class="controls">
												
												
												<cfoutput query="qUserRoles">
													<label class="radio"><input type="radio" name="roleID" id="#qUserRoles.AssessmentRoleDescription#" value="#qUserRoles.RecordID#@#qUserRoles.RoleID#" <cfif session.user.userroleid EQ qUserRoles.roleID>
														checked
													</cfif>/>#qUserRoles.AssessmentRoleDescription# <cfif qUserRoles.defaultrole > [default] </cfif></label>
												</cfoutput>												
												<!---
												<label class="checkbox"><input type="checkbox" name="defaultrole" id="Default" selected/>Make this my default role</label>
												--->
											</div>
										</div>
										<div class="form-actions">
											<input type="submit" class='btn btn-primary' value="Save">										
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

