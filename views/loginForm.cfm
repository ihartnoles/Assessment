<div id="pjax">
		<div id="wrapper">
			<div class="isolate">
				<div class="center narrow">
					<div class="main_container full_size container_8 clearfix">
						<div class="box">
							<div class="block">
								<div class="section">
									<!--- <a href="index.cfm" id="small_logo" width="144" height="80"><span>FAU</span></a> --->
									<div class="alert dismissible alert_light">
										<img width="24" height="24" src="images/icons/small/grey/locked.png">
										<strong>Assessment Database</strong> Please enter your details to login.
									</div>
								</div>
						
							<form action="index.cfm?event=validateLogin" method="post" class="validate_form" name="loginform" id="loginform">
								<fieldset class="label_side top">
									<label for="username_field">Username</label>
									<div>
										<input type="text" id="username" name="username" class="required">
									</div>
								</fieldset>
								<fieldset class="label_side top">
									<label for="password_field">Password<span><a href="#">Do you remember?</a></span></label>
									<div>
										<input type="password" id="password" name="password" class="required">
									</div>
								</fieldset>		
								

								<div class="button_bar clearfix">
									<button class="wide" type="submit">
										<img src="images/icons/small/white/key_2.png">
										<span>Login</span>
									</button>
								</div>
							</form>
					</div>
				</div>
			</div>

					 <a href="index.cfm" id="small_logo" width="144" height="80"><span>FAU</span></a>

					<button onclick="location.href='index.cfm?event=forgot'" class="dialog_button send_right" style="margin-top:10px;">

						<span>Forgot Your Username?</span>
					</button>

				
</div>
