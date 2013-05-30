<cfscript>
title = "Reporting/Statistics";
</cfscript>
<div id="main" style="margin-left: 0px;">
				<div class="container-fluid">
					<cfinclude template="/Assessment/views/page_header.cfm">			
				<div class="row-fluid">
					<div class="span12">
						<div class="box">
							<div class="box-title">
								<h3>
									<i class="icon-bar-chart"></i>
									Bar charts
								</h3>
							</div>
							<div class="box-content">
								<div class="btn-toolbar" style="margin-top:0;">
									<div class="btn-group stackControls">
										<input type="button" value="With stacking" class='btn'>
										<input type="button" value="Without stacking" class='btn'>
									</div>
									<div class="btn-group graphControls">
										<input type="button" value="Bars" class='btn'>
										<input type="button" value="Lines" class='btn'>
										<input type="button" value="Lines with steps" class='btn'>
									</div>
								</div>
								<div id="flot-4" class='flot'></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span6">
						<div class="box">
							<div class="box-title">
								<h3>
									<i class="icon-bar-chart"></i>
									Pie with legend
								</h3>
							</div>
							<div class="box-content">
								<div id="flot-5" class='flot'></div>
							</div>
						</div>
					</div>
					<div class="span6">
						<div class="box">
							<div class="box-title">
								<h3>
									<i class="icon-bar-chart"></i>
									Pie without legend
								</h3>
							</div>
							<div class="box-content">
								<div id="flot-6" class='flot'></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span6">
						<div class="box">
							<div class="box-title">
								<h3>
									<i class="icon-bar-chart"></i>
									Labels within pie
								</h3>
							</div>
							<div class="box-content">
								<div id="flot-7" class='flot'></div>
							</div>
						</div>
					</div>
					<div class="span6">
						<div class="box">
							<div class="box-title">
								<h3>
									<i class="icon-bar-chart"></i>
									Donut
								</h3>
							</div>
							<div class="box-content">
								<div id="flot-8" class='flot'></div>
							</div>
						</div>
					</div>
				</div>



					
				</div>
			</div></div>