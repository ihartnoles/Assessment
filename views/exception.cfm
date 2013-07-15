
<cfset variables.exception = request.event.getArg("exception") />
<cfset variables.stError = variables.exception.getCaughtException()>


<cfif variables.stError.type eq 'MachII.framework.EventHandlerNotDefined'>
	<cfset request.do404(arguments.event.getName())>
	<cfabort>
</cfif>


<h3>Exception</h3>


<cfset exception = request.event.getArg('exception') />

<cfoutput>
<table>
	<tr>
		<td valign="top"><b>Message</b></td>
		<td valign="top">#exception.getMessage()#</td>
	</tr>
	<tr>
		<td valign="top"><b>Detail</b></td>
		<td valign="top">#exception.getDetail()#</td>
	</tr>
	<tr>
		<td valign="top"><b>Extended Info</b></td>
		<td valign="top">#exception.getExtendedInfo()#</td>
	</tr>
	<tr>
		<td valign="top"><b>Tag Context</b></td>
		<td valign="top">
			<cfset tagCtxArr = exception.getTagContext() />
			<cfloop index="i" from="1" to="#ArrayLen(tagCtxArr)#">
				<cfset tagCtx = tagCtxArr[i] />
				#tagCtx['template']# (#tagCtx['line']#)<br>
			</cfloop>
		</td>
	</tr>
</table>
</cfoutput>