<body class='login theme-darkblue' >
	<div class="wrapper">
		<h1><a href="index.cfm"><img src="img/logo-big.png" alt="" class='retina-ready' width="59" height="49">FAU Assessment</a></h1>
		<div class="login-body">
			
			<cfoutput>
				<cfif  structKeyExists(session, "message") AND len(trim(session.message))>
					<div class="alert dismissible alert_red">
						#session.message#										
					</div>
				</cfif>
			</cfoutput>	
			
			<h2>SIGN IN</h2>
			<form action="index.cfm?event=validateLogin" method='post' class='form-validate' id="loginform">
				<div class="control-group">
					<div class="controls">
						<input type="text" name="username" placeholder="Username" class='input-block-level' data-rule-required="true">
					</div>
				</div>
				<div class="control-group">
					<div class="pw controls">
						<input type="password" name="password" placeholder="Password" class='input-block-level' data-rule-required="true">
					</div>
				</div>
				<div class="submit">
					<div class="remember">
						<input type="checkbox" name="remember" class='icheck-me' data-skin="square" data-color="blue" id="remember"> <label for="remember">Remember me</label>
					</div>
					<input type="submit" value="Sign me in" class='btn btn-primary'>
				</div>
			</form>
			<div class="forget">
				<a href="index.cfm?event=forgot"><span>Forgot password?</span></a>
			</div>
		</div>
	</div>
</body>