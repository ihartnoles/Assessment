
<cfcomponent name="tasksService" output="false">

	<cffunction name="init" access="public" output="false" returntype="tasksService">
		<cfargument name="tasksDAO" type="tasksDAO" required="true" />
		<cfargument name="tasksGateway" type="tasksGateway" required="true" />

		<cfset variables.tasksDAO = arguments.tasksDAO />
		<cfset variables.tasksGateway = arguments.tasksGateway />

		<cfreturn this/>
	</cffunction>

	<cffunction name="createtasks" access="public" output="false" returntype="tasks">
		<cfargument name="TaskID" type="numeric" required="false" />
		<cfargument name="userID" type="numeric" required="false" />
		<cfargument name="task_text" type="string" required="false" />
		<cfargument name="done" type="numeric" required="false" />
		<cfargument name="bookmarked" type="numeric" required="false" />
		
			
		<cfset var tasks = createObject("component","tasks").init(argumentCollection=arguments) />
		<cfreturn tasks />
	</cffunction>

	<cffunction name="gettasks" access="public" output="false" returntype="tasks">
		
		<cfset var tasks = createtasks(argumentCollection=arguments) />
		<cfset variables.tasksDAO.read(tasks) />
		<cfreturn tasks />
	</cffunction>

	<cffunction name="gettaskss" access="public" output="false" returntype="array">
		<cfargument name="TaskID" type="numeric" required="false" />
		<cfargument name="userID" type="numeric" required="false" />
		<cfargument name="task_text" type="string" required="false" />
		<cfargument name="done" type="numeric" required="false" />
		<cfargument name="bookmarked" type="numeric" required="false" />
		
		<cfreturn variables.tasksGateway.getByAttributes(argumentCollection=arguments) />
	</cffunction>

	<cffunction name="savetasks" access="public" output="false" returntype="boolean">
		<cfargument name="tasks" type="tasks" required="true" />

		<cfreturn variables.tasksDAO.save(tasks) />
	</cffunction>

	<cffunction name="deletetasks" access="public" output="false" returntype="boolean">
		
		<cfset var tasks = createtasks(argumentCollection=arguments) />
		<cfreturn variables.tasksDAO.delete(tasks) />
	</cffunction>

	<cffunction name="onMissingMethod" access="public" output="false" >
		<cfargument name="missingMethodName" type="string" hint="Name of missing method" />
		<cfargument name="missingMethodArguments" type="any" hint="Arguments passed to the missing method, maybe a named arg set or a numerically indexed set" />

		<cfset var ret = ""/>
		<cfinvoke component="#variables.tasksGateway#" 
				  method="#arguments.missingMethodName#" 
				  argumentcollection="#arguments.missingMethodArguments#" 
				  returnvariable="ret"/>
		<cfreturn ret />
	</cffunction>
</cfcomponent>
