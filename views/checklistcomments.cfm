<cfscript>
	qChecklistComments = request.event.getArg('qChecklistcomments');
	writedump(var= qChecklistcomments );

	qChecklistCommentDetails	= request.event.getArg('qChecklistCommentDetails');
	writedump(var= qChecklistCommentDetails );
</cfscript>

<cfif qChecklistCommentDetails.recordcount >
	<cfoutput query="qChecklistCommentDetails" group="category">
		<h3>#qChecklistCommentDetails.category#</h3>
		<h4>#qChecklistCommentDetails.subcategory#</h4>
		<cfoutput group="comment">
			#qChecklistCommentDetails.comment#<hr>
		</cfoutput>
		
	</cfoutput>
<cfelse>
	Sorry! Ain't nobody got time for that!
</cfif>
