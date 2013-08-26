<cfcomponent extends="MachII.mach-ii" output="false">

	<cfscript>		
		this.Name = "Assessment";
		this.ApplicationTimeout = CreateTimeSpan( 1, 0, 0, 0);
		//this.SessionManagement = true;
		//this.SetClientCookies  = false;

		this.loginStorage 		= "session";
		this.sessionManagement 	= true;
		this.clientManagement   = true;
		this.setClientCookies 	= true;
		//this.setDomainCookies 	= false;
		this.applicationTimeOut = CreateTimeSpan(1,0,0,0);

		MACHII_CONFIG_PATH 	= ExpandPath("./config/mach-ii.xml");
		MACHII_CONFIG_MODE 	= 1;
		MACHII_APP_KEY 		= 'DEV';
		MACHII_DTD_PATH     = ExpandPath("/Mach-II/mach-ii_1_1_1.dtd");
		MACHII_VALIDATE_XML = false;
	</cfscript>


	<cffunction
		name="OnApplicationStart"
		access="public"
		returntype="void"
		output="false"
		hint="Fires when the application is first created.">
 		
 		<!--- Return out. 
		<cfreturn true />--->
	</cffunction>
 
 
	<cffunction
		name="OnSessionStart"
		access="public"
		returntype="void"
		output="false"
		hint="Fires when the session is first created.">
 		
 		<!---
 		<cfcookie name="JSESSIONID" value="#session.sessionid#" httponly="true">

		 Return out. 
		--->
		<cfreturn />
	</cffunction>
 
 
	<cffunction
		name="OnRequestStart"
		access="public"
		returntype="boolean"
		output="false"
		hint="Fires at first part of page processing.">
 
		<!--- Define arguments. --->
		<cfargument
			name="TargetPage"
			type="string"
			required="true"
			/>

		<!--- Request Scope Variable Defaults --->
		<cfset request.self = "index.cfm">

		<cfif StructKeyExists(url, "reinit")>
			<cfsetting requesttimeout="120"/>
			<cfset MACHII_CONFIG_MODE = 1 />
		</cfif>

		<cfset request.do404 = do404>
 
		<!--- Return out. --->
		<cfreturn true />
	</cffunction>
 
 <!---
	<cffunction
		name="OnRequest"
		access="public"
		returntype="void"
		output="true"
		hint="Fires after pre page processing is complete.">
 
		<!--- Define arguments. --->
		<cfargument
			name="TargetPage"
			type="string"
			required="true"
			/>
 
		<!--- Include the requested page. --->
		<cfinclude template="#ARGUMENTS.TargetPage#" />
 
		<!--- Return out. --->
		<cfreturn />
	</cffunction>
 
 
	<cffunction
		name="OnRequestEnd"
		access="public"
		returntype="void"
		output="true"
		hint="Fires after the page processing is complete.">
 
		<!--- Return out. --->
		<cfreturn />
	</cffunction>
 --->
 
	<cffunction
		name="OnSessionEnd"
		access="public"
		returntype="void"
		output="false"
		hint="Fires when the session is terminated.">
 
		<!--- Define arguments. --->
		<cfargument
			name="SessionScope"
			type="struct"
			required="true"
			/>
 	
 		<!---
		<cfargument
			name="ApplicationScope"
			type="struct"
			required="false"
			default="#StructNew()#"
			/>
 
		 Return out.
		<cfreturn /> --->
	</cffunction>
 
 
	<cffunction
		name="OnApplicationEnd"
		access="public"
		returntype="void"
		output="false"
		hint="Fires when the application is terminated.">
 
		<!--- Define arguments. --->
		<cfargument
			name="ApplicationScope"
			type="struct"
			required="false"
			default="#StructNew()#"
			/>
 
		<!--- Return out. --->
		<cfreturn />
	</cffunction>
 
 
	<cffunction
		name="OnError"
		access="public"
		returntype="void"
		output="true"
		hint="Fires when an exception occures that is not caught by a try/catch.">
 
		<!--- Define arguments. --->
		<cfargument
			name="Exception"
			type="any"
			required="true"
			/>
 
		<cfargument
			name="EventName"
			type="string"
			required="false"
			default=""
			/>
 
		<!--- Return out. --->
		<cfreturn />
	</cffunction>

	<cffunction name="onMissingTemplate"> 
		
		<cfset do404(arguments.targetPage)>
		
		
		<cfreturn true>
	</cffunction>
	


	<cffunction name="do404" access="private" output="true" returntype="boolean" hint="I display a 404 error">
	<cfargument name="targetPage" type="string" required="true">
	<cfset var private = {}>

		<!doctype html class="no-js">
		<html>
			<head>
				<meta charset="utf-8">
				<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
				<!-- Apple devices fullscreen -->
				<meta name="apple-mobile-web-app-capable" content="yes" />
				<!-- Apple devices fullscreen -->
				<meta names="apple-mobile-web-app-status-bar-style" content="black-translucent" />
				
				<title>FAU Assessment - Error page</title>

				<!-- Bootstrap -->
				<link rel="stylesheet" href="css/bootstrap.min.css">
				<!-- Bootstrap responsive -->
				<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
				<!-- jQuery UI -->
				<link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery-ui.css">
				<link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery.ui.theme.css">
				<!-- PageGuide -->
				<link rel="stylesheet" href="css/plugins/pageguide/pageguide.css">
				<!-- Fullcalendar -->
				<link rel="stylesheet" href="css/plugins/fullcalendar/fullcalendar.css">
				<link rel="stylesheet" href="css/plugins/fullcalendar/fullcalendar.print.css" media="print">
				<!-- chosen -->
				<link rel="stylesheet" href="css/plugins/chosen/chosen.css">
				<!-- select2 -->
				<link rel="stylesheet" href="css/plugins/select2/select2.css">
				<!-- icheck -->
				<link rel="stylesheet" href="css/plugins/icheck/all.css">
				<!-- Theme CSS -->
				<link rel="stylesheet" href="css/style.css">
				<!-- Color CSS -->
				<link rel="stylesheet" href="css/themes.css">

				<!-- rating CSS -->
				<link rel="stylesheet" href="css/jquery.rating.css">

				<!-- Plupload -->
				<link rel="stylesheet" href="css/plugins/plupload/jquery.plupload.queue.css">

				<!-- jQuery -->
				<script src="js/jquery.min.js"></script>


				<!--[if lte IE 9]>
					<script src="js/plugins/placeholder/jquery.placeholder.min.js"></script>
					<script>
						$(document).ready(function() {
							$('input, textarea').placeholder();
						});
					</script>
				<![endif]-->
				

				<!-- Favicon -->
				<link rel="shortcut icon" href="img/favicon.ico" />
				<!-- Apple devices Homescreen icon -->
				<link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-precomposed.png" />

			</head>

			<body class='error theme-darkblue'>
				<div class="wrapper">
					<div class="code"><span>404</span><i class="icon-warning-sign"></i></div>
					<div class="desc">Oops! Sorry, that page couldn't be found.</div>
					
					<div class="buttons">
						<div class="pull-left"><a href="index.cfm" class="btn"><i class="icon-arrow-left"></i> Back</a></div>
					</div>
				</div>
				
			</body>

		</html>
		
	<cfreturn true>
</cffunction>

</cfcomponent>