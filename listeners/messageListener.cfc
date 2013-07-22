<!---
	COMPONENT: messageListener
--->

<cfcomponent name="messageListener" displayname="messageListener" output="false" 
		extends="MachII.framework.Listener" 
		hint="messageListener">
	
	<cffunction name="configure" access="public" output="false" 
			returntype="void" 
			hint="Configures this listener as part of the Mach-II framework">
		<!--- do nothing for now --->
		<cfset var sf = getProperty("ServiceFactory")>
		

		 <cfset variables.messagesService 	= sf.getBean('messagesService') /> 
	</cffunction>


	<cffunction name="sendMessage" access="public" output="false" 
			returntype="boolean" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<!---
		<cfdump var="#arguments.event.getArgs()#" abort="true" label="@@messageListener" />
		--->
		<!--- save the message here --->
		<cfset MessageSaved = variables.messagesService.sendMessage(sendToUserID = request.event.getArg('sendToUserID'),
														Subject		 = request.event.getArg('Subject'),
														Message 	 = request.event.getArg('CK')) />

		<!--- to do: mail out the message --->

		<!--- If the message was successfully saved AND sent let's return a message --->
		<cfif MessageSaved>
			<cfset request.event.setArg('layout_message','Message Sent!') />
		<cfelse>
			<cfset request.event.setArg('layout_message','Sorry there was a problem sending your message') />
		</cfif>
		

		<cfreturn MessageSaved />
	</cffunction>

	<cffunction name="getInboxMessages" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfreturn variables.messagesService.getInboxMessages(SendToUserID	= session.user.userID,
														     MessageTypeID	= 1) />
	</cffunction>


	<cffunction name="getSentMessages" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfreturn variables.messagesService.getSentMessages(createdby 		= session.user.userID,
															MessageTypeID	= 2) />
	</cffunction>

	<cffunction name="deletemessage" access="public" output="false" 
			returntype="boolean" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfreturn variables.messagesService.deletemessage(MessageID	= request.event.getArgs('MessageID'),
														 MessageTypeID	= 3) />
	</cffunction>

	<cffunction name="viewmessage" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfreturn variables.messagesService.viewmessage(MessageID	= request.event.getArgs('MessageID')) />
	</cffunction>

	
	<cffunction name="getDeletedMessages" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfreturn variables.messagesService.getDeletedMessages(SendToUserID	= session.user.userID,
														       MessageTypeID	= 3) />
	</cffunction>
	<!---
	<cffunction name="getDepartments" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfreturn variables.messagesService.getDepartments(divisionid = request.event.getArg('divisionid')) />
	</cffunction>
	--->

</cfcomponent>