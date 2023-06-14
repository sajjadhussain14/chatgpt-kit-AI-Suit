<cfcomponent name ="post" >
    <cffunction name = "postOnFB" returnFormat = "plain" access = "remote" >
        <cfargument name="message" type="any" required="yes" default="" >
        <cfhttp method="post" url="https://graph.facebook.com/v16.0/107783502130330/feed" result="result">
            <cfhttpparam name="message" type="URL" value="#arguments.message#"> 
            <cfhttpparam name="access_token" type="URL" value="#application.session.longLivedCode#"> 
        </cfhttp>
        <cfreturn #serializeJson(result)#>
    </cffunction>
</cfcomponent>