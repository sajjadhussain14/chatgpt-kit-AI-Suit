<cfcomponent name ="oauth" >
    <cffunction name = "getUserShortLivedToken" access = "remote" returnFormat="plain">
        <cfhttp url="https://graph.facebook.com/v16.0/oauth/access_token" method="get" >
            <cfhttpparam type="url" name="client_id" value=#application.client_id#>
            <cfhttpparam type="url" name="client_secret" value=#application.client_secret#>
            <cfhttpparam type="url" name="redirect_uri" value=#application.redirect_uri#>
            <cfhttpparam type="url" name="scope" value=#application.scope#>
            <cfhttpparam type="url" name="code" value="#url.code#">
        </cfhttp>

        <cftry>
            <cfset response = DeserializeJSON(cfhttp.filecontent)>
        <cfcatch type="any">
        The Token Generation Failed. Please try again!
        <cfoutput>
        <a href="#application.secureurl#" >OK</a>
        </cfoutput>
        <cfabort>

        </cfcatch>
        </cftry>

        <cfif structKeyExists(response, "access_token")>
        <cfelse>
        The Token Generation Failed. Please try again!
        <cfoutput>
        <a href="#application.secureurl#" >OK</a>
        </cfoutput>
        <cfabort>
        </cfif>
        <cfset shortLivedUserAccessToken = response.access_token>
        <cfreturn shortLivedUserAccessToken >
    </cffunction>

    <cffunction name = "getUserLongLivedToken" access = "remote" returnFormat="plain">
        <cfargument name="shortLivedUserAccessToken" type="any" required="yes" default="" >
        <cfhttp url="https://graph.facebook.com/v16.0/oauth/access_token" method="get">
        <cfhttpparam type="url" name="grant_type" value="fb_exchange_token">
        <cfhttpparam type="url" name="client_id" value="760733278890873">
        <cfhttpparam type="url" name="client_secret" value="2cc4fca04f1a5d0db93f0acb9fddc39f">
        <cfhttpparam type="url" name="fb_exchange_token" value="#arguments.shortLivedUserAccessToken#">
        </cfhttp>
        <cfset response = DeserializeJSON(cfhttp.filecontent)>
        <cfset longLivedUserAccessToken = response.access_token>
        <cfreturn longLivedUserAccessToken >
    </cffunction>

    <cffunction name = "getPageAccessToken" access = "remote" returnFormat="plain">
        <cfargument name="longLivedUserAccessToken" type="any" required="yes" default="" >
        <cfhttp url="https://graph.facebook.com/v16.0/me/accounts" method="get">
        <cfhttpparam type="url" name="access_token" value="#arguments.longLivedUserAccessToken#">
        </cfhttp>

        <cfset response = DeserializeJSON(cfhttp.filecontent)>
        <cfset pageAccessToken = "" />

        <!--- Find the page access token for the desired page ID --->
        <cfloop array="#response.data#" index="page">
        <cfif page.id EQ "107783502130330">
            <cfset pageAccessToken = page.access_token>
            <cfbreak>
        </cfif>
        </cfloop>
        <cfset application.session.longLivedCode=pageAccessToken> 
        <cfreturn pageAccessToken >
    </cffunction>

    <cffunction name = "getAccessToken" access = "remote" returnFormat="plain">
        <cfset shotLiveToken=getUserShortLivedToken()>
        <cfset longLivedToken=getUserLongLivedToken(shotLiveToken)>
        <cfset pageAccessToken=getPageAccessToken(longLivedToken)>
        <cfreturn pageAccessToken>
    </cffunction>


</cfcomponent>