
<cfcomponent name="ALCDocumentsService" output="false">

	<cffunction name="init" access="public" output="false" returntype="ALCDocumentsService">
		<cfargument name="ALCDocumentsDAO" type="ALCDocumentsDAO" required="true" />
		<cfargument name="ALCDocumentsGateway" type="ALCDocumentsGateway" required="true" />

		<cfset variables.ALCDocumentsDAO = arguments.ALCDocumentsDAO />
		<cfset variables.ALCDocumentsGateway = arguments.ALCDocumentsGateway />

		<cfreturn this/>
	</cffunction>

	<cffunction name="createALCDocuments" access="public" output="false" returntype="ALCDocuments">
		<cfargument name="DocumentID" type="numeric" required="true" />
		<cfargument name="ReportingUnitID" type="numeric" required="false" />
		<cfargument name="DocumentName" type="string" required="false" />
		<cfargument name="UploadedDocumentName" type="string" required="false" />
		<cfargument name="UploadUserID" type="numeric" required="false" />
		<cfargument name="UploadDate" type="date" required="false" />
		
			
		<cfset var ALCDocuments = createObject("component","ALCDocuments").init(argumentCollection=arguments) />
		<cfreturn ALCDocuments />
	</cffunction>

	<cffunction name="getALCDocuments" access="public" output="false" returntype="ALCDocuments">
		<cfargument name="DocumentID" type="numeric" required="true" />
		
		<cfset var ALCDocuments = createALCDocuments(argumentCollection=arguments) />
		<cfset variables.ALCDocumentsDAO.read(ALCDocuments) />
		<cfreturn ALCDocuments />
	</cffunction>

	<cffunction name="getALCDocumentss" access="public" output="false" returntype="array">
		<cfargument name="DocumentID" type="numeric" required="false" />
		<cfargument name="ReportingUnitID" type="numeric" required="false" />
		<cfargument name="DocumentName" type="string" required="false" />
		<cfargument name="UploadedDocumentName" type="string" required="false" />
		<cfargument name="UploadUserID" type="numeric" required="false" />
		<cfargument name="UploadDate" type="date" required="false" />
		
		<cfreturn variables.ALCDocumentsGateway.getByAttributes(argumentCollection=arguments) />
	</cffunction>

	<cffunction name="saveALCDocuments" access="public" output="false" returntype="boolean">
		<cfargument name="ALCDocuments" type="ALCDocuments" required="true" />

		<cfreturn variables.ALCDocumentsDAO.save(ALCDocuments) />
	</cffunction>

	<cffunction name="deleteALCDocuments" access="public" output="false" returntype="boolean">
		<cfargument name="DocumentID" type="numeric" required="true" />
		
		<cfset var ALCDocuments = createALCDocuments(argumentCollection=arguments) />
		<cfreturn variables.ALCDocumentsDAO.delete(ALCDocuments) />
	</cffunction>

	<cffunction name="onMissingMethod" access="public" output="false" >
		<cfargument name="missingMethodName" type="string" hint="Name of missing method" />
		<cfargument name="missingMethodArguments" type="any" hint="Arguments passed to the missing method, maybe a named arg set or a numerically indexed set" />

		<cfset var ret = ""/>
		<cfinvoke component="#variables.ALCDocumentsGateway#" 
				  method="#arguments.missingMethodName#" 
				  argumentcollection="#arguments.missingMethodArguments#" 
				  returnvariable="ret"/>
		<cfreturn ret />
	</cffunction>
</cfcomponent>