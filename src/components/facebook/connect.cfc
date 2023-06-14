<cfcomponent name = "connect">
    <cffunction name = "isConnected"  access = "remote" returnFormat = "plain">
        <cfset connectStatus='no' >
        <cfif  application.session.longLivedCode eq ''> 
            <cfset connectStatus='no' >
        <cfelse>
            <cfset connectStatus='yes' >
        </cfif>
        <cfreturn connectStatus >
    </cffunction>

    <cffunction name = "redirecteMe"  access = "remote" returnFormat = "plain">
        <cfargument name="status" type="any" required="yes" default="no" >
        <cfif  arguments.status eq 'no'> 
            <cfset rURL="https://www.facebook.com/v16.0/dialog/oauth?client_id=#application.client_id#&redirect_uri=#application.redirect_uri#&scope=#application.scope#&response_type=code">
        <cfelse>
        </cfif>
        <cfreturn rURL>    
    </cffunction>

</cfcomponent>