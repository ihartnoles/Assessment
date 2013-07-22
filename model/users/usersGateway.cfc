
<cfcomponent displayname="usersGateway" output="false">
	<cffunction name="init" access="public" output="false" returntype="usersGateway">
		<cfargument name="dsn" type="string" required="true" />
		<cfset variables.dsn = arguments.dsn />
		<cfreturn this />
	</cffunction>
	
	<cffunction name="getByAttributesQuery" access="public" output="false" returntype="query">
		<cfargument name="UserID" type="numeric" required="false" />
		<cfargument name="UserLname" type="string" required="false" />
		<cfargument name="UserFname" type="string" required="false" />
		<cfargument name="UserInitial" type="string" required="false" />
		<cfargument name="UserTitle" type="string" required="false" />
		<cfargument name="UserAddress" type="string" required="false" />
		<cfargument name="UserCampus" type="string" required="false" />
		<cfargument name="UserPhoneAcode" type="string" required="false" />
		<cfargument name="UserPhoneNumber" type="string" required="false" />
		<cfargument name="UserEmail" type="string" required="false" />
		<cfargument name="UserName" type="string" required="false" />
		<cfargument name="UserPassword" type="string" required="false" />
		<cfargument name="UserTrained" type="numeric" required="false" />
		<cfargument name="orderby" type="string" required="false" />
		
		<cfset var qList = "" />		
		<cfquery name="qList" datasource="#variables.dsn#">
			SELECT
				UserID,
				UserLname,
				UserFname,
				UserInitial,
				UserTitle,
				UserAddress,
				UserCampus,
				UserPhoneAcode,
				UserPhoneNumber,
				UserEmail,
				UserName,
				UserPassword,
				UserTrained
			FROM	Users
			WHERE	0=0
		
		<cfif structKeyExists(arguments,"UserID") and len(arguments.UserID)>
			AND	UserID = <cfqueryparam value="#arguments.UserID#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"UserLname") and len(arguments.UserLname)>
			AND	UserLname = <cfqueryparam value="#arguments.UserLname#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"UserFname") and len(arguments.UserFname)>
			AND	UserFname = <cfqueryparam value="#arguments.UserFname#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"UserInitial") and len(arguments.UserInitial)>
			AND	UserInitial = <cfqueryparam value="#arguments.UserInitial#" CFSQLType="cf_sql_char" />
		</cfif>
		<cfif structKeyExists(arguments,"UserTitle") and len(arguments.UserTitle)>
			AND	UserTitle = <cfqueryparam value="#arguments.UserTitle#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"UserAddress") and len(arguments.UserAddress)>
			AND	UserAddress = <cfqueryparam value="#arguments.UserAddress#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"UserCampus") and len(arguments.UserCampus)>
			AND	UserCampus = <cfqueryparam value="#arguments.UserCampus#" CFSQLType="cf_sql_char" />
		</cfif>
		<cfif structKeyExists(arguments,"UserPhoneAcode") and len(arguments.UserPhoneAcode)>
			AND	UserPhoneAcode = <cfqueryparam value="#arguments.UserPhoneAcode#" CFSQLType="cf_sql_char" />
		</cfif>
		<cfif structKeyExists(arguments,"UserPhoneNumber") and len(arguments.UserPhoneNumber)>
			AND	UserPhoneNumber = <cfqueryparam value="#arguments.UserPhoneNumber#" CFSQLType="cf_sql_char" />
		</cfif>
		<cfif structKeyExists(arguments,"UserEmail") and len(arguments.UserEmail)>
			AND	UserEmail = <cfqueryparam value="#arguments.UserEmail#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"UserName") and len(arguments.UserName)>
			AND	UserName = <cfqueryparam value="#arguments.UserName#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"UserPassword") and len(arguments.UserPassword)>
			AND	UserPassword = <cfqueryparam value="#arguments.UserPassword#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"UserTrained") and len(arguments.UserTrained)>
			AND	UserTrained = <cfqueryparam value="#arguments.UserTrained#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments, "orderby") and len(arguments.orderBy)>
			ORDER BY #arguments.orderby#
		</cfif>
		</cfquery>
		
		<cfreturn qList />
	</cffunction>

	<cffunction name="getByAttributes" access="public" output="false" returntype="array">
		<cfargument name="UserID" type="numeric" required="false" />
		<cfargument name="UserLname" type="string" required="false" />
		<cfargument name="UserFname" type="string" required="false" />
		<cfargument name="UserInitial" type="string" required="false" />
		<cfargument name="UserTitle" type="string" required="false" />
		<cfargument name="UserAddress" type="string" required="false" />
		<cfargument name="UserCampus" type="string" required="false" />
		<cfargument name="UserPhoneAcode" type="string" required="false" />
		<cfargument name="UserPhoneNumber" type="string" required="false" />
		<cfargument name="UserEmail" type="string" required="false" />
		<cfargument name="UserName" type="string" required="false" />
		<cfargument name="UserPassword" type="string" required="false" />
		<cfargument name="UserTrained" type="numeric" required="false" />
		<cfargument name="orderby" type="string" required="false" />
		
		<cfset var qList = getByAttributesQuery(argumentCollection=arguments) />		
		<cfset var arrObjects = arrayNew(1) />
		<cfset var tmpObj = "" />
		<cfset var i = 0 />
		<cfloop from="1" to="#qList.recordCount#" index="i">
			<cfset tmpObj = createObject("component","users").init(argumentCollection=queryRowToStruct(qList,i)) />
			<cfset arrayAppend(arrObjects,tmpObj) />
		</cfloop>
				
		<cfreturn arrObjects />
	</cffunction>



	<cffunction name="getUserList" access="public" output="false" returntype="query">
		<cfargument name="UserID" type="numeric" required="false" />
		<cfargument name="UserLname" type="string" required="false" />
		<cfargument name="UserFname" type="string" required="false" />
		<cfargument name="UserInitial" type="string" required="false" />
		<cfargument name="UserTitle" type="string" required="false" />
		<cfargument name="UserAddress" type="string" required="false" />
		<cfargument name="UserCampus" type="string" required="false" />
		<cfargument name="UserPhoneAcode" type="string" required="false" />
		<cfargument name="UserPhoneNumber" type="string" required="false" />
		<cfargument name="UserEmail" type="string" required="false" />
		<cfargument name="UserName" type="string" required="false" />
		<cfargument name="UserPassword" type="string" required="false" />
		<cfargument name="UserTrained" type="numeric" required="false" />
		<cfargument name="orderby" type="string" required="false" />

		<cfset var qList = "" />		
		<cfquery name="qList" datasource="#variables.dsn#">
			SELECT
				UserID,
				UserLname,
				UserFname,
				UserInitial,
				UserTitle,
				UserAddress,
				UserCampus,
				UserPhoneAcode,
				UserPhoneNumber,
				UserEmail,
				UserName,
				UserPassword,
				UserTrained
			FROM	Users
			WHERE	0=0
		
		<cfif structKeyExists(arguments,"UserID") and len(arguments.UserID)>
			AND	UserID = <cfqueryparam value="#arguments.UserID#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"UserLname") and len(arguments.UserLname)>
			AND	UserLname = <cfqueryparam value="#arguments.UserLname#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"UserFname") and len(arguments.UserFname)>
			AND	UserFname = <cfqueryparam value="#arguments.UserFname#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"UserInitial") and len(arguments.UserInitial)>
			AND	UserInitial = <cfqueryparam value="#arguments.UserInitial#" CFSQLType="cf_sql_char" />
		</cfif>
		<cfif structKeyExists(arguments,"UserTitle") and len(arguments.UserTitle)>
			AND	UserTitle = <cfqueryparam value="#arguments.UserTitle#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"UserAddress") and len(arguments.UserAddress)>
			AND	UserAddress = <cfqueryparam value="#arguments.UserAddress#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"UserCampus") and len(arguments.UserCampus)>
			AND	UserCampus = <cfqueryparam value="#arguments.UserCampus#" CFSQLType="cf_sql_char" />
		</cfif>
		<cfif structKeyExists(arguments,"UserPhoneAcode") and len(arguments.UserPhoneAcode)>
			AND	UserPhoneAcode = <cfqueryparam value="#arguments.UserPhoneAcode#" CFSQLType="cf_sql_char" />
		</cfif>
		<cfif structKeyExists(arguments,"UserPhoneNumber") and len(arguments.UserPhoneNumber)>
			AND	UserPhoneNumber = <cfqueryparam value="#arguments.UserPhoneNumber#" CFSQLType="cf_sql_char" />
		</cfif>
		<cfif structKeyExists(arguments,"UserEmail") and len(arguments.UserEmail)>
			AND	UserEmail = <cfqueryparam value="#arguments.UserEmail#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"UserName") and len(arguments.UserName)>
			AND	UserName = <cfqueryparam value="#arguments.UserName#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"UserPassword") and len(arguments.UserPassword)>
			AND	UserPassword = <cfqueryparam value="#arguments.UserPassword#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"UserTrained") and len(arguments.UserTrained)>
			AND	UserTrained = <cfqueryparam value="#arguments.UserTrained#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments, "orderby") and len(arguments.orderBy)>
			ORDER BY #arguments.orderby#
		</cfif>
		</cfquery>

		<cfreturn qList />
	</cffunction>

	<cffunction name="getUserDetails" access="public" output="false" returntype="query">
		<cfargument name="UserID" type="numeric" required="false" />
		

		<cfset var qList = "" />		
		
		<cfquery name="qList" datasource="#variables.dsn#">
			 SELECT u.*, campusdescription 
 			 FROM Users u, Campus c   
			 WHERE	0=0
			AND u.UserCampus=c.Campus
			<cfif structKeyExists(session.user,"userID") and len(session.user.UserID)>
				AND	UserID = <cfqueryparam value="#session.user.UserID#" CFSQLType="cf_sql_integer" />
			</cfif>		
		</cfquery>

		<cfreturn qList />
	</cffunction>

	<cffunction name="queryRowToStruct" access="private" output="false" returntype="struct">
		<cfargument name="qry" type="query" required="true">
		
		<cfscript>
			/**
			 * Makes a row of a query into a structure.
			 * 
			 * @param query 	 The query to work with. 
			 * @param row 	 Row number to check. Defaults to row 1. 
			 * @return Returns a structure. 
			 * @author Nathan Dintenfass (nathan@changemedia.com) 
			 * @version 1, December 11, 2001 
			 */
			//by default, do this to the first row of the query
			var row = 1;
			//a var for looping
			var ii = 1;
			//the cols to loop over
			var cols = listToArray(qry.columnList);
			//the struct to return
			var stReturn = structnew();
			//if there is a second argument, use that for the row number
			if(arrayLen(arguments) GT 1)
				row = arguments[2];
			//loop over the cols and build the struct from the query row
			for(ii = 1; ii lte arraylen(cols); ii = ii + 1){
				stReturn[cols[ii]] = qry[cols[ii]][row];
			}		
			//return the struct
			return stReturn;
		</cfscript>
	</cffunction>

</cfcomponent>
