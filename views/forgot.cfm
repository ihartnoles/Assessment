<body class='login'>
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
			
			<h2>LOG IN RECOVERY</h2>
			<form action="index.cfm?event=sendlogin" method='post' class='form-validate' id="loginform">
				<div class="control-group">
					<div class="controls">
						<input type="text" name="username" placeholder="Enter your FAU email address" class='input-block-level' data-rule-required="true">
					</div>
				</div>
				<div class="submit">
					<input type="submit" value="Send Login Information" class='btn btn-primary'>
				</div>
			</form>
			<div class="forget">
				<br>
			</div>
		</div>
	</div>
</body>