<!---
	COMPONENT: ALCDocumentsListener
--->

<cfcomponent name="ALCDocumentsListener" displayname="ALCDocumentsListener" output="false" 
		extends="MachII.framework.Listener" 
		hint="ALCDocumentsListener">
	
	<cffunction name="configure" access="public" output="false" 
			returntype="void" 
			hint="Configures this listener as part of the Mach-II framework">
		<!--- do nothing for now --->
		<cfset var sf = getProperty("ServiceFactory")>
		

		 <cfset variables.ALCDocumentsService 	= sf.getBean('ALCDocumentsService') /> 
	</cffunction>

	<cffunction name="getALCDocs" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfreturn variables.ALCDocumentsService.getALCDocs(reportingUnitID=request.event.getArg('reportingUnitID')) />
	</cffunction>

	<cffunction name="uploadALCdocument" access="public" output="false" returntype="void" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfset local.successEvent = 'viewALC' />
		<cfset local.destination = "C:\IEAHome\ALC" />

		<cfset local.aErrors      = [] />
		<cfset local.errorMsg     = "" />

		<cfset local.documentID =  0 />
		<cfset local.reportingUnitID = request.event.getArg('reportingUnitID') />
		<cfset local.name 			 = request.event.getArg('name') />
		<cfset local.tmp 		 = listlast(local.name,'.') />
		<cfset local.fileext     = "." & local.tmp />

		<cfset local.ALCDocumentBean = variables.ALCDocumentsService.createALCDocuments( documentID 			= local.documentID,
																						 reportingUnitID		= local.reportingUnitID,
																						 uploadeddocumentname	= local.name,
																						 uploadUserID			= session.user.userID,
																						 uploadDate				= now()
																						  ) />
		
		<!---
		<cfdump var="#local#" abort="true" label="@@ALCDocumentsListener_2" />
		<cfdump var="#request.event.getArgs()#" abort="true" label="@@ALCDocumentsListener" />
		--->

		
		<!--- save the bean / commit to the DB--->
		<cfset local.docID = variables.ALCDocumentsService.saveALCDocuments(local.ALCDocumentBean) />

		<!--- zero will be returned if it DIDN'T SAVE properly --->
		<cfif local.docID NEQ 0>
			<!--- TO DO: Generate the DocumentName (Filename in display) 
				ALC_#ReportingUnitID#_#DocumentID#.#fileext#
		     --->
		     <cfset local.calculated_filename = "ALC_" & local.reportingUnitID & "_" & local.docID & local.fileext />

		     <cfset local.DocBean = variables.ALCDocumentsService.getALCDocuments(local.docID) />

			 <cfset local.DocBean.setDocumentName(local.calculated_filename) />

			 <!--- upload the file --->
			 <cffile action		= "upload"
				    filefield	= "file"
				    destination	= "#local.destination#"
			        nameconflict= "makeunique"
				    result		= "local.res">

			<!--- rename the file --->
			<cffile action="rename" source="#local.res.serverdirectory#\#local.res.serverfile#" destination="#local.res.serverdirectory#\#local.calculated_filename#">
			
			<cfset local.finalSave = variables.ALCDocumentsService.saveALCDocuments(local.DocBean) />
		</cfif>	

	</cffunction>
    
</cfcomponent>