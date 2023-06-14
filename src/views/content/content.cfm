<cfoutput>

    <div class=" content p-3 mt-50 d-block">
        <cfif structKeyExists(url, "action")>
            <cfset action = url.action>
        <cfelse>
            <cfset action = 'none'>
        </cfif>

        <cfswitch expression="#action#">
            <cfcase value="product-data">
                <cfinclude template = "../content/product-data.cfm">
            </cfcase>
            <cfcase value="category-data">
                <cfinclude template = "../content/category-data.cfm">
            </cfcase>
            <cfcase value="reviews-feedback">
                <cfinclude template = "../content/reviews-feedback.cfm">
            </cfcase>
            <cfcase value="email-responder">
                <cfinclude template = "../content/email-responder.cfm">
            </cfcase>
            <cfcase value="email-marketing">
                <cfinclude template = "../content/email-marketing.cfm">
            </cfcase>
            <cfcase value="product-recommandations">
                <cfinclude template = "../content/product-recommandations.cfm">
            </cfcase>

            <cfcase value="socialmedia-content">
                <cfinclude template = "../content/socialmedia-content.cfm">
            </cfcase>

            <cfcase value="blog-post">
                <cfinclude template = "../content/blog-post.cfm">
            </cfcase>

            <cfcase value="seo-tool-kit">
                <cfinclude template = "../content/seo-tool-kit.cfm">
            </cfcase>


            <cfdefaultcase>
                <cfinclude template = "../content/home.cfm">
            </cfdefaultcase>
        </cfswitch>
    </div>
</cfoutput>
