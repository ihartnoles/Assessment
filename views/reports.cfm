<cfscript>
title 			= "Reporting/Statistics";
qSuperDivisions = request.event.getArg('qSuperDivisions');
superdivisionID = 0;
divisionID 		= 0;
departmentID	= 0;
</cfscript>

<!---
<cfdump var="#qSuperDivisions#" />
--->
<div id="main" style="margin-left: 0px;">
				<div class="container-fluid">
					<cfinclude template="/Assessment/views/page_header.cfm">		

				<div class="row-fluid">
					<form action="##" method="post">
						Super-Division
						<!---
						<select id="mark" name="mark">
						  <option value="">--</option>
						  <option value="bmw">BMW</option>
						  <option value="audi">Audi</option>
						</select>
						--->
						<select id="superdivisionID" name="superdivisionID">
							<option value="0" <cfif superdivisionid eq false>selected</cfif>>-- Choose One --</option>
							<cfloop query="qSuperDivisions">
								<cfoutput>
									<option value="#qSuperDivisions.SuperDivisionID#">#qSuperDivisions.SuperDivisionName#</option>
								</cfoutput>
							</cfloop>
						</select>

						Division
						<select id="divisionID" name="divisionID">
						  <option value="0"  <cfif divisionid eq false>selected</cfif>>--</option>
						</select>
						Department
						<select id="departmentID" name="departmentID">
						  <option value="0" <cfif departmentid eq false>selected</cfif>>--</option>   
						</select>
					
					<br>

						<input type="submit" id="assBut" value="List Assessment Plans" class="btn btn-primary">
					</form>
				</div>

				<div class="row-fluid">
					<div id="grid" class="row-fluid">
						
					</div>
				</div>

				<hr>

				<div class="row-fluid">
					<div class="box box-color box-bordered">
							<div class="box-title">
								<h3>
									<i class="icon-bar-chart"></i>
									Student Learning Outcomes - BA Anthropology (2011 - 2012)
								</h3>
								<div class="actions">
									<a href="#" class="btn btn-mini content-refresh"><i class="icon-refresh"></i></a>
									<a href="#" class="btn btn-mini content-remove"><i class="icon-remove"></i></a>
									<a href="#" class="btn btn-mini content-slideUp"><i class="icon-angle-down"></i></a>
								</div>
							</div>
							<div class="box-content">
								<div id="flot-2" class='flot'></div>
							</div>
						</div>
				</div>	
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

<script type="text/javascript">
	$(function() {

		$("#divisionID").remoteChained("#superdivisionID", "index.cfm?event=getDivisionjson" );
		$("#departmentID").remoteChained("#superdivisionID ,#divisionID", "index.cfm?event=getDeptjson");
		//$("#engine").remoteChained("#series, #model", "index.cfm?event=json");

		
		$("#assBut").click(function(e) {
			e.preventDefault();
			//alert('MAMBO JAMBO!');
			//alert( $("#superdivisionID").val() );
			//alert( $("#divisionID").val() );
			//alert( $("#departmentID").val() );

			var superdivID   = $('#superdivisionID').val();
			var divisionID   = $('#divisionID').val();
			var departmentID = $("#departmentID").val()

			var postString = "index.cfm?event=getPlanGrid&";

			//alert( postString );

			jQuery.post(
				postString,
				{
					superdivisionID: $('#superdivisionID').val(),
					divisionID: $('#divisionID').val(),
					departmentID:$('#departmentID').val()
				},
				//callback function
				function(data){
					//$('#grid').removeClass('hidden');
					//alert(data);
					//var content = $(data).find('#content');
					$('#grid').empty().append(data);
				}
			)


			});//end of button click
		

	});
</script>