<cfscript>
    title 			= "User Role";
    //#session.userBean.getUserFName()# #session.userBean.getUserLName()#
	session.userBean = request.event.getArg('userBean');
	qAllUserRoles		= request.event.getArg('qAllUserRoles');
</cfscript>

<cfdump var="#qAllUserRoles#" />

<div id="main" style="margin-left: 0px;">
			<div class="container-fluid">
				<cfinclude template="/Assessment/views/page_header.cfm">
				<div class="row-fluid">
				<div class="span12">

					
					<div class="box box-color darkblue box-bordered">
						<div class="box-title">
							<h3>
								<i class="icon-user"></i>
								Edit user profile
							</h3>
						</div>
						<div class="box-content nopadding">
							<form action="index.cfm?event=SetUserRoleForSession" method="post" class="form-horizontal">
								<div class="control-group">
									<label for="asdf" class="control-label">Roles</label>
									<div class="controls">
										
										
										<cfoutput query="qAllUserRoles">
											<label class="radio"><input type="radio" name="role" id="#qAllUserRoles.AssessmentRoleDescription#" value="#qAllUserRoles.AssessmentRoleID#">
											#qAllUserRoles.AssessmentRoleDescription# </label>
										</cfoutput>	
										
									</div>
								</div>
								<div class="form-actions">
									<input type="submit" class='btn btn-primary' value="Save">										
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			</div><!--- end of container-fluid --->
</div><!--- end of main --->

