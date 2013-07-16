
<cfcomponent name="assessmentPlanSupportingDocumentsService" output="false">

	<cffunction name="init" access="public" output="false" returntype="assessmentPlanSupportingDocumentsService">
		<cfargument name="assessmentPlanSupportingDocumentsDAO" type="assessmentPlanSupportingDocumentsDAO" required="true" />
		<cfargument name="assessmentPlanSupportingDocumentsGateway" type="assessmentPlanSupportingDocumentsGateway" required="true" />

		<cfset variables.assessmentPlanSupportingDocumentsDAO = arguments.assessmentPlanSupportingDocumentsDAO />
		<cfset variables.assessmentPlanSupportingDocumentsGateway = arguments.assessmentPlanSupportingDocumentsGateway />

		<cfreturn this/>
	</cffunction>

	<cffunction name="createassessmentPlanSupportingDocuments" access="public" output="false" returntype="assessmentPlanSupportingDocuments">
		<cfargument name="RecordID" type="numeric" required="true" />
		<cfargument name="OutcomeID" type="numeric" required="false" />
		<cfargument name="FileName" type="string" required="false" />
		<cfargument name="FileNameUploaded" type="string" required="false" />
		<cfargument name="FileDescription" type="string" required="false" />
		<cfargument name="FileUserID" type="numeric" required="false" />
		<cfargument name="DateInserted" type="date" required="false" />
		
			
		<cfset var assessmentPlanSupportingDocuments = createObject("component","assessmentPlanSupportingDocuments").init(argumentCollection=arguments) />
		<cfreturn assessmentPlanSupportingDocuments />
	</cffunction>

	<cffunction name="getassessmentPlanSupportingDocuments" access="public" output="false" returntype="assessmentPlanSupportingDocuments">
		<cfargument name="RecordID" type="numeric" required="true" />
		
		<cfset var assessmentPlanSupportingDocuments = createassessmentPlanSupportingDocuments(argumentCollection=arguments) />
		<cfset variables.assessmentPlanSupportingDocumentsDAO.read(assessmentPlanSupportingDocuments) />
		<cfreturn assessmentPlanSupportingDocuments />
	</cffunction>

	<cffunction name="getassessmentPlanSupportingDocumentss" access="public" output="false" returntype="array">
		<cfargument name="RecordID" type="numeric" required="false" />
		<cfargument name="OutcomeID" type="numeric" required="false" />
		<cfargument name="FileName" type="string" required="false" />
		<cfargument name="FileNameUploaded" type="string" required="false" />
		<cfargument name="FileDescription" type="string" required="false" />
		<cfargument name="FileUserID" type="numeric" required="false" />
		<cfargument name="DateInserted" type="date" required="false" />
		
		<cfreturn variables.assessmentPlanSupportingDocumentsGateway.getByAttributes(argumentCollection=arguments) />
	</cffunction>

	<cffunction name="saveassessmentPlanSupportingDocuments" access="public" output="false" returntype="boolean">
		<cfargument name="assessmentPlanSupportingDocuments" type="assessmentPlanSupportingDocuments" required="true" />

		<cfreturn variables.assessmentPlanSupportingDocumentsDAO.save(assessmentPlanSupportingDocuments) />
	</cffunction>

	<cffunction name="deleteassessmentPlanSupportingDocuments" access="public" output="false" returntype="boolean">
		<cfargument name="RecordID" type="numeric" required="true" />
		
		<cfset var assessmentPlanSupportingDocuments = createassessmentPlanSupportingDocuments(argumentCollection=arguments) />
		<cfreturn variables.assessmentPlanSupportingDocumentsDAO.delete(assessmentPlanSupportingDocuments) />
	</cffunction>

	<cffunction name="onMissingMethod" access="public" output="false" >
		<cfargument name="missingMethodName" type="string" hint="Name of missing method" />
		<cfargument name="missingMethodArguments" type="any" hint="Arguments passed to the missing method, maybe a named arg set or a numerically indexed set" />

		<cfset var ret = ""/>
		<cfinvoke component="#variables.assessmentPlanSupportingDocumentsGateway#" 
				  method="#arguments.missingMethodName#" 
				  argumentcollection="#arguments.missingMethodArguments#" 
				  returnvariable="ret"/>
		<cfreturn ret />
	</cffunction>
</cfcomponent>
