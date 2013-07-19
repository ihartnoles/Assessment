<cfscript>
		qPlanGrid = request.event.getArg('qPlanGrid');
</cfscript>

<div class="box-content nopadding">
		<table class="table table-hover table-nomargin">
			<thead>
				<tr>
					<th>Super-Division</th>
					<th>Division</th>
					<th class='hidden-350'>Department</th>
					<th class='hidden-1024'>Program</th>
					<th class='hidden-480'>Plan Type</th>
				</tr>
			</thead>
			<tbody>
				<cfoutput query="qPlanGrid" group="programname">
					<tr>
						<td>#qPlanGrid.SuperDivisionName#</td>
						<td>#qPlanGrid.DivisionName#</td>
						<td class='hidden-350'>#qPlanGrid.DeptName#</td>
						<td class='hidden-1024'>#qPlanGrid.programname#</td>
						<td class='hidden-480'>#qPlanGrid.PlanTypeDescription#</td>
					</tr>
				</cfoutput>
				<!---
				<tr>
					<td>Trident</td>
					<td>
						Internet
						Explorer 4.0
					</td>
					<td class='hidden-350'>Win 95+</td>
					<td class='hidden-1024'>4</td>
					<td class='hidden-480'>X</td>
				</tr>
				<tr>
					<td>Presto</td>
					<td>Nokia N800</td>
					<td class='hidden-350'>N800</td>
					<td class='hidden-1024'>-</td>
					<td class='hidden-480'>A</td>
				</tr>
				<tr>
					<td>Misc</td>
					<td>NetFront 3.4</td>
					<td class='hidden-350'>Embedded devices</td>
					<td class='hidden-1024'>-</td>
					<td class='hidden-480'>A</td>
				</tr>
				<tr>
					<td>Misc</td>
					<td>Dillo 0.8</td>
					<td class='hidden-350'>Embedded devices</td>
					<td class='hidden-1024'>-</td>
					<td class='hidden-480'>X</td>
				</tr>
				<tr>
					<td>Misc</td>
					<td>Links</td>
					<td class='hidden-350'>Text only</td>
					<td class='hidden-1024'>-</td>
					<td class='hidden-480'>X</td>
				</tr>
				<tr>
					<td>Misc</td>
					<td>Lynx</td>
					<td class='hidden-350'>Text only</td>
					<td class='hidden-1024'>-</td>
					<td class='hidden-480'>X</td>
				</tr>
				--->
			</tbody>
		</table>
</div>