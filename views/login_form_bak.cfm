	<cfscript>		qSemesters = request.event.getArg('qSemesters');	</cfscript>		<div id="pjax">		<div id="wrapper">			<div class="isolate">				<!--- <div class="center narrow"> --->					<div class="main_container full_size container_16 clearfix">						<div class="box">							<div class="block">								<div class="section">									<a href="index.cfm" id="login_logo" width="154" height="80"><span>FAU</span></a>									<div class="alert dismissible alert_light">										<img width="24" height="24" src="images/icons/small/grey/locked.png">										<strong>Wizard.</strong> Please enter your details to login.									</div>								</div>						<form action="index.cfm?event=showDashboard" method="post" class="validate_form" name="loginform" id="loginform">								<fieldset class="label_side top">									<label for="username_field">Username</label>									<div>										<input type="text" id="username" name="username" class="required">									</div>								</fieldset>								<fieldset class="label_side top">									<label for="password_field">Password<span><a href="#">Do you remember?</a></span></label>									<div>										<input type="password" id="password" name="password" class="required">									</div>								</fieldset>								<fieldset class="label_side top">									<label for="semester_id">Semester</label>									<div>										<select id="semester_id" name="semester_id">											<cfoutput>												<cfloop query="#qSemesters#">													<option value="#qSemesters.id#">#qSemesters.name#</option>												</cfloop>											</cfoutput>																					</select>									</div>								</fieldset>								<fieldset class="label_side bottom">									<label for="semester_id">Reviewer<span>(FAU SACS Review Team Members)</span></label>									<div>										<select id="review" name="review">											<option>No</option>											<option>Yes</option>										</select>									</div>								</fieldset>																<div class="button_bar clearfix">									<button class="wide" type="submit">										<img src="images/icons/small/white/key_2.png">										<span>Login</span>									</button>								</div>						</form>					</div>				<!--- </div> --->			</div>					 <a href="index.php" id="login_logo"><span>FAU</span></a>									<button onclick="location.href='index.cfm?event=showRegistrationForm'" class="dialog_button send_right" style="margin-top:10px;">						<img src="images/icons/small/white/user.png">						<span>Not Registered ?</span>					</button>										<!--- 					<button data-dialog="dialog_register" class="dialog_button send_right" style="margin-top:10px;">						<img src="images/icons/small/white/user.png">						<span>Not Registered ?</span>					</button>					--->				</div>			</div><div class="display_none">	<div id="dialog_register" class="dialog_content narrow" title="Register for Wizard">		     <!--- <div class="box grid_16"> --->						<div class="block">							<h2 class="section">Wizard Registration Form</h2>							<h3>Please Select your Status, College or Department and click on 'Request Login Access'.We will email you back once your account is active</h3>							<form class="validate_form">														<fieldset class="label_side top">								<label for="username_field">FAU Username</label>								<div>									<input type="text" id="fauid" name="fauid" class="required text">									<div class="required_tag"></div>								</div>							</fieldset>								<fieldset class="label_side top">								<label for="dept">Dept.</label>								<div>									<select id="department" name="department">										<option value="17">Accounting</option>										<option value="3">Anthropology</option>										<option value="53">Architecture</option>										<option value="4">Arts & Letters Dean's Office</option>										<option value="44">Biological Sciences</option>										<option value="25">Biomedical Science</option>										<option value="18">Business Dean's Office</option>										<option value="45">Chemistry & Biochemistry</option>										<option value="35">Civil, Environmental & Geomatics Engineering</option>										<option value="5">Communication & Multimedia Studies</option>										<option value="27">Communication Science & Disorders</option>										<option value="36">Computer & Electrical Eng & Comp Science</option>										<option value="28">Counselor Education</option>										<option value="54">Criminology & Criminal Justice</option>										<option value="46">Ctr for Complex Systems & Brain Sciences</option>										<option value="6">Ctr for Women Gender & Sexuality Studies</option>										<option value="29">Curriculum, Culture & Educ Inquiry</option>										<option value="55">Design & Social Inquiry Dean's Office</option>										<option value="19">Economics</option>										<option value="30">Ed Leadership & Research Methodology</option>										<option value="31">Education Dean's Office</option>										<option value="37">Engineering Dean's Office</option>										<option value="7">English</option>										<option value="32">Exceptional Student Education</option>										<option value="33">Exercise Science & Health Promotion</option>										<option value="20">Finance</option>										<option value="1">Freshman Advising Services</option>										<option value="47">Geosciences</option>										<option value="8">History</option>										<option value="39">Honors College Dean's Office</option>										<option value="40">Honors College Humanities</option>										<option value="41">Honors College Math & Sciences</option>										<option value="42">Honors College Social Sciences</option>										<option value="21">Industry Studies</option>										<option value="22">Info Technology & Operations Mgmt</option>										<option value="26">Integrated Medical Science</option>										<option value="9">Jewish Studies</option>										<option value="10">Lang, Linguistics & Comp Lit</option>										<option value="23">Management</option>										<option value="24">Marketing</option>										<option value="48">Mathematical Sciences</option>										<option value="11">Music</option>										<option value="43">Nursing</option>										<option value="38">Ocean & Mechanical Engineering</option>										<option value="12">Philosophy</option>										<option value="49">Physics</option>										<option value="13">Political Science</option>										<option value="50">Psychology</option>										<option value="56">Public Administration</option>										<option value="51">Science Dean's Office</option>										<option value="52">Science Student Services</option>										<option value="57">Social Work</option>										<option value="14">Sociology</option>										<option value="34">Teaching and Learning</option>										<option value="15">Theatre & Dance</option>										<option value="2">Undergraduate Studies Dean's Office</option>										<option value="58">Urban & Regional Planning</option>										<option value="16">Visual Arts & Arts History</option>									</select>								</div>							</fieldset>							<fieldset class="label_side">								<label for="College">College</label>								<div class="clearfix">									<select disabled="disabled" id="school" name="school">									<option value="11">00 - No College Designated</option>									<option value="15">AL - D. F. Schmidt Col Arts Letters</option>									<option value="13">BA - College of Business</option>									<option value="21">BI - C.E. Schmidt Coll Med</option>									<option value="14">ED - College of Education</option>									<option value="16">EG - Coll Engineering Computer Sci</option>									<option value="4">HC - H.L. Wilkes Honors College</option>									<option value="8">NU - C.E. Lynn Coll of Nursing</option>									<option value="17">SC - C.E. Schmidt Coll of Science</option>									<option value="3">UL - University Libraries</option>									<option value="1">UP - Coll Design and Social Inquiry</option>								</select>								</div>							</fieldset>							<!---							<fieldset class="label_side top">								<label for="required_field">Text Field<span>Regular field</span></label>								<div>									<input id="required_field" name="required_field" type="text" class="required">									<div class="required_tag"></div>								</div>							</fieldset>														<fieldset class="label_side">								<label for="required_textarea">Textarea<span>Autogrow Textarea</span></label>								<div class="clearfix">									<textarea id="required_textarea" name="required_textarea" class="autogrow required"></textarea>									<div class="required_tag"></div>								</div>							</fieldset>							<fieldset class="label_side">								<label for="required_email">Email Address</label>								<div>									<input type="text" id="required_email" name="required_email" class="required email">									<div class="required_tag"></div>								</div>							</fieldset>							--->							<div class="button_bar clearfix">								<button class="dark blue no_margin_bottom link_button" type="submit">									<div class="ui-icon ui-icon-check"></div>									<span>Ok</span>								</button>								<button class="light send_right close_dialog">									<div class="ui-icon ui-icon-closethick"></div>									<span>Cancel</span>								</button>							</div>							</form>						</div>					<!--- </div> --->	</div></div>