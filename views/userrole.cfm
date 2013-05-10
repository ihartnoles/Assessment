<cfscript>
	session.userBean = request.event.getArg('userBean');
</cfscript>

<div id="pjax">
		<div id="wrapper" data-adminica-nav-top="4" data-adminica-nav-inner="1">
			<div id="topbar" class="clearfix">

	<!---
	<cfdump var="#session#" />
    --->

	<a href="dashboard_sorter.php" class="logo"><span>Adminica</span></a>

	<div class="user_box dark_box clearfix">
		<img src="images/interface/profile.jpg" width="55" alt="Profile Pic" />
		<h2>Administrator</h2>
		<h3><a class="text_shadow" href="#">
			<cfoutput>
				#session.userBean.getUserFName()# #session.userBean.getUserLName()#
			</cfoutput>			
			</a>
		</h3>
		<ul>
			<li><a href="#">profile</a><span class="divider">|</span></li>
			<li><a href="#">settings</a><span class="divider">|</span></li>
			<li><a href="login_slide.php" class="dialog_button" data-dialog="dialog_logout">Logout</a></li>
		</ul>
	</div><!-- #user_box -->
</div><!-- #topbar -->			
		
			<div id="main_container" class="main_container container_16 clearfix">
			<div id="nav_top" class="dropdown_menu clearfix round_top">
	

	

</div><!-- #nav_top -->
				<div class="flat_area grid_16">
					<h2>My System Roles</h2>					
				</div>
				
				
			<form action="index.cfm?event=SetUserRoleForSession" method="post" class="validate_form" name="userroleform" id="userroleform">
							

				<div class="box grid_16">
					<div class="toggle_container">
						<h2 class="section"> <small>Please select a role for your current session</small></h2>
							<fieldset class="label_side top">
								<label>Roles</label>
								<div class="uniform">
									<label for="Administrator"><input type="radio" name="role" id="Administrator" value="1"/>Administrator</label>
									<label for="Reporter"><input type="radio" name="role" id="Reporter" value="2"/>Reporter</label>
									<label for="Reviewer"><input type="radio" name="role" id="Reviewer" value="3"/>Reviewer</label>
									<label for="Default"><input type="checkbox" name="UpdateDefaultCheckbox" id="Default"/>Make this my default role</label>
								</div>
							</fieldset>				

							<div class="button_bar clearfix">								
								<button class="dark green" type="submit">
									<div class="ui-icon ui-icon-check"></div>
									<span>Submit</span>
								</button>
								<button class="dark red">
									<div class="ui-icon ui-icon-closethick"></div>
									<span>Cancel</span>
								</button>
							</div>			

					</div>
				</div>	
				</form>
				
			</div>
		</div>
		
<div class="display_none">						
	<div id="dialog_logout" class="dialog_content narrow" title="Logout">
		<div class="block">
			<div class="section">
				<h1>Thank you</h1>
				<div class="dashed_line"></div>	
				<p>We will now log you out of Adminica in a 10 seconds...</p>
			</div>
			<div class="button_bar clearfix">
				<button class="dark blue no_margin_bottom link_button" data-link="login_slide.php">
					<div class="ui-icon ui-icon-check"></div>
					<span>Ok</span>
				</button>
				<button class="light send_right close_dialog">
					<div class="ui-icon ui-icon-closethick"></div>
					<span>Cancel</span>
				</button>
			</div>
		</div>
	</div>
</div> 
		