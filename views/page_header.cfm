<div class="page-header">
					<div class="pull-left">
						<h1><cfoutput>#title#</cfoutput></h1>
					</div>
					<div class="pull-right">
						<!--- 
						<ul class="minitiles">
							<li class='grey'>
								<a href="#"><i class="icon-cogs"></i></a>
							</li>							
						</ul>
						--->
						<ul class="stats">
							
							<li class='lightred'>
								<i class="icon-calendar"></i>
								<div class="details">
									<span class="big"><cfoutput>#DateFormat(now(),"long")#</cfoutput></span>
									<span>
										<cfoutput>#DateFormat(now(),"dddd")#, #TimeFormat(now(), "hh:mm tt")# </cfoutput>
									</span>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<!---
				<div class="breadcrumbs">
					<ul>
						<li>
							<a href="more-login.html">Home</a>
							<i class="icon-angle-right"></i>
						</li>
						<li>
							<a href="more-files.html">Pages</a>
							<i class="icon-angle-right"></i>
						</li>
						<li>
							<a href="more-blank.html">Blank page</a>
						</li>
					</ul>
					<div class="close-bread">
						<a href="#"><i class="icon-remove"></i></a>
					</div>
				</div>
				--->