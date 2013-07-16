<!---
	COMPONENT: AssessmentPlanSupportingDocumentsListener
--->

<cfcomponent name="AssessmentPlanSupportingDocumentsListener" displayname="AssessmentPlanSupportingDocumentsListener" output="false" 
		extends="MachII.framework.Listener" 
		hint="AssessmentPlanSupportingDocumentsListener">
	
	<cffunction name="configure" access="public" output="false" 
			returntype="void" 
			hint="Configures this listener as part of the Mach-II framework">
		<!--- do nothing for now --->
		<cfset var sf = getProperty("ServiceFactory")>
		

		 <cfset variables.AssessmentPlanSupportingDocumentsService 	= sf.getBean('AssessmentPlanSupportingDocumentsService') /> 
	</cffunction>

	
	<cffunction name="getOutcomeSupportingDocs" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfreturn variables.AssessmentPlanSupportingDocumentsService.getOutcomeSupportingDocs(outcomeID=arguments.event.getArg("outcomeID")) >
	</cffunction>


	<cffunction name="uploaddocument" access="public" output="false" returntype="void" hint="I save a positionAttachment object" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		
		<cfset local.successEvent = 'outcomeDetails' />
		<!---
		<cfset local.failEvent    = arguments.event.getArg('failEvent','receiverPositions.listAttachments') />
		--->

		<cfset local.aErrors      = [] />
		<cfset local.errorMsg     = "" />
		
		<cfset local.outcomeID = isNumeric(arguments.event.getArg('outcomeID')) ? arguments.event.getArg('outcomeID') : 0 />
		
		<cfset local.DocumentBean = variables.AssessmentPlanSupportingDocumentsService.createassessmentPlanSupportingDocuments(	recordID=0,
																																outcomeID	= local.outcomeID) />
		<!---
		<cfset local.destination = getTempDirectory() & createUUID() />
		--->

		<!--- TO DO: Deterine where files should go when on server--->
		<cfset local.destination = "C:\test_uploads" />

		

		 <cfif len(arguments.event.getArg('file'))> 
			
			<!--- set documentbean properties --->
			<cfset local.DocumentBean.setFileName(arguments.event.getArg('file')) />
			<cfset local.DocumentBean.setFileNameUploaded(arguments.event.getArg('name')) />
			<cfset local.DocumentBean.setFileUserID(session.userID) />
			<cfset local.DocumentBean.setDateInserted(now()) />

			

			<!--- upload the file --->
			<cffile action		= "upload"
				    filefield	= "file"
				    destination	= "#local.destination#"
			        nameconflict= "makeunique"
				    result		= "local.res">
			

			<!--- save the bean / commit to the DB--->
			<cfset local.DocumentBeanSave = variables.AssessmentPlanSupportingDocumentsService.saveassessmentPlanSupportingDocuments(local.DocumentBean) />

			<!---
			<cfdump var="#request.event.getArgs()#" abort="false" label="@@uploaddocument_1" />
			<cfdump var="#local#" abort="true" label="@@uploaddocument_2" />
			--->

			<!---
			<cfset session.layout_message = "Attachment Saved!" />
			<cfset redirectEvent(local.successEvent, {outcomeID 		= arguments.event.getArg('outcomeID'),
													  reportingUnitID	= arguments.event.getArg('reportingUnitID'),
													  planID 			= arguments.event.getArg('planID')}) />
			--->
			<!---
			<cfset local.serverFile = local.res.serverdirectory & "\" & local.res.serverfile />
			 <cfset local.DocumentBean.setExtension(local.res.clientfileExt) /> 
			--->
		</cfif>

		
		<!---
		<cfif local.DocumentBean.isValid(doValidateFileExtension=true) >

			<cfset local.attachmentArgs = {	localFile	= local.serverFile,
											position_id	= local.DocumentBean.getposition_id(),
											title 		= local.DocumentBean.gettitle(),
											extension	= local.DocumentBean.getExtension(),
											uploaded_by	= session.pid} />

			<cfif isNumeric(local.DocumentBean.getposition_attachment_id())>
				<cfset local.attachmentArgs.position_attachment_id = local.DocumentBean.getposition_attachment_id() />
			</cfif>
			
			<cfset local.DocumentBean = variables.positionAttachmentService.uploadPositionAttachment(argumentCollection = local.attachmentArgs) />
			<cfset fileDelete(local.serverFile) />
			<cfset session.layout_message = "Attachment Saved!" />
			<cfset redirectEvent(local.successEvent, {position_id = arguments.event.getArg('position_id')}) />
		<cfelse>
			<cfset local.aErrors = local.DocumentBean.validate() />
			<cfset local.errorMsg = "Please fix the following errors:<ul>" />
			<cfloop from="1" to="#arrayLen( local.aErrors )#" index="local.i">
				<cfset local.errorMsg &= "<li>" & local.aErrors[local.i].message & "</li>" />
			</cfloop>
			<cfset local.errorMsg &= "</ul>"/>
			<cfset session.layout_error = local.errorMsg />
			<cfset redirectEvent(local.failEvent, {position_id = arguments.event.getArg('position_id')}) />
		</cfif>
		--->
	</cffunction>


</cfcomponent>