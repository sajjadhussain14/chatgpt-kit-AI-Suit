<cfoutput>
<cfdirectory action="LIST" directory="C:\KnownDirectory" name="DirectoryContentsList" />
<ul>
<cfoutput query="DirectoryContentsList">
    <cfif DirectoryContentsList.TYPE eq "D">
        <li>#DirectoryContentsList.Name#</li>
    </cfif>
</cfoutput>
</ul>
</cfoutput>