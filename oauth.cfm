<cfoutput>

<cfif isdefined("url.error")>
    <cflocation url="#application.secureurl#?action=socialmedia-content" addtoken="no">
</cfif>

<cfscript>
  token=''
  oauthObj = createObject("component","src.components.facebook.oauth")
  token=oauthObj.getAccessToken()
</cfscript>

<cfset application.session.longLivedCode=token> 

<cflocation url="#application.secureurl#?action=socialmedia-content" addtoken="no">
</cfoutput>
