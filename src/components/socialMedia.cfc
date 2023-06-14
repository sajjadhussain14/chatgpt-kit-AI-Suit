<cfcomponent name="productdata">
	<cffunction name="generateSocialMediaContent" access="remote" returnFormat="plain">
		<cfargument name="prompts" type="any" required="false" />
		<cfargument name="maxTokens" type="any" required="false" />
		<cfargument name="model" type="any" required="false" />
		<cfargument name="mode" type="any" required="false" />
		<cfargument name="temperature" type="any" required="false" />
		<cfargument name="maxLen" type="any" required="false" />
		<cfargument name="topP" type="any" required="false" />
		<cfargument name="frequencyPenalty" type="any" required="false" />
		<cfargument name="presencePanalty" type="any" required="false" />
        <cfscript>
            // INIT VALUES FOR REQUEST
            rquestURL=application.apiURL&model&"/"&mode
            promptValue=arguments.prompts
            api_key=application.api_key
            model=arguments.model
            mode=arguments.mode
            temperatureValue=arguments.temperature
            frequencyPenaltyValue=arguments.frequencyPenalty
            presencePanaltyValue=arguments.presencePanalty
            topPValue=arguments.topP
            maxLenVlaue=int(arguments.maxLen)
            maxTokenValue=maxLenVlaue/4.7
            // CREATE PAYLOAD FOR REQUEST
            payload={"prompt": promptValue, 
            "temperature":LSParseNumber(temperatureValue),
            "max_tokens": int(maxTokenValue),
            "frequency_penalty":LSParseNumber(frequencyPenaltyValue),
            "presence_penalty":LSParseNumber(presencePanaltyValue)
            }
            // REQUEST FOR API CALL
            cfhttp(method="POST", charset="utf-8", url=rquestURL, result="result") {
                cfhttpparam(name="Content-Type", type="header", value="application/json");
                cfhttpparam(name="Authorization", type="header", value="Bearer " &api_key);
                cfhttpparam( type="body", value=serializeJSON(payload));
            }
            jsonResponse = deserializeJSON(result.fileContent)
        </cfscript>
        <!-----RETURN RESPONSE---->
        <cfreturn jsonResponse.choices[1].text >
    </cffunction>  



    <cffunction name="reviewsFeedback" access="remote" returnFormat="plain">
		<cfargument name="prompts" type="any" required="false" />
		<cfargument name="maxTokens" type="any" required="false" />
		<cfargument name="model" type="any" required="false" />
		<cfargument name="mode" type="any" required="false" />
		<cfargument name="temperature" type="any" required="false" />
		<cfargument name="maxLen" type="any" required="false" />
		<cfargument name="topP" type="any" required="false" />
		<cfargument name="frequencyPenalty" type="any" required="false" />
		<cfargument name="presencePanalty" type="any" required="false" />
        <cfscript>
            // INIT VALUES FOR REQUEST
            rquestURL=application.apiURL&model&"/"&mode
            promptValue=arguments.prompts
            api_key=application.api_key
            model=arguments.model
            mode=arguments.mode
            temperatureValue=arguments.temperature
            frequencyPenaltyValue=arguments.frequencyPenalty
            presencePanaltyValue=arguments.presencePanalty
            topPValue=arguments.topP
            maxLenVlaue=int(arguments.maxLen)
            maxTokenValue=maxLenVlaue/4.7
            // CREATE PAYLOAD FOR REQUEST
            payload={"prompt": promptValue, 
            "temperature":LSParseNumber(temperatureValue),
            "max_tokens": int(maxTokenValue),
            "frequency_penalty":LSParseNumber(frequencyPenaltyValue),
            "presence_penalty":LSParseNumber(presencePanaltyValue)
            }
            // REQUEST FOR API CALL
            cfhttp(method="POST", charset="utf-8", url=rquestURL, result="result") {
                cfhttpparam(name="Content-Type", type="header", value="application/json");
                cfhttpparam(name="Authorization", type="header", value="Bearer " &api_key);
                cfhttpparam( type="body", value=serializeJSON(payload));
            }
            jsonResponse = deserializeJSON(result.fileContent)
        </cfscript>
		
        <!-----RETURN RESPONSE---->
        <cfreturn jsonResponse.choices[1].text >
    </cffunction>  

     <cffunction name="emailResponser" access="remote" returnFormat="plain">
		<cfargument name="prompts" type="any" required="false" />
		<cfargument name="maxTokens" type="any" required="false" />
		<cfargument name="model" type="any" required="false" />
		<cfargument name="mode" type="any" required="false" />
		<cfargument name="temperature" type="any" required="false" />
		<cfargument name="maxLen" type="any" required="false" />
		<cfargument name="topP" type="any" required="false" />
		<cfargument name="frequencyPenalty" type="any" required="false" />
		<cfargument name="presencePanalty" type="any" required="false" />
        <cfscript>
            // INIT VALUES FOR REQUEST
            rquestURL=application.apiURL&model&"/"&mode
            promptValue=arguments.prompts
            api_key=application.api_key
            model=arguments.model
            mode=arguments.mode
            temperatureValue=arguments.temperature
            frequencyPenaltyValue=arguments.frequencyPenalty
            presencePanaltyValue=arguments.presencePanalty
            topPValue=arguments.topP
            maxLenVlaue=int(arguments.maxLen)
            maxTokenValue=maxLenVlaue/4.7
            // CREATE PAYLOAD FOR REQUEST
            payload={"prompt": promptValue, 
            "temperature":LSParseNumber(temperatureValue),
            "max_tokens": int(maxTokenValue),
            "frequency_penalty":LSParseNumber(frequencyPenaltyValue),
            "presence_penalty":LSParseNumber(presencePanaltyValue)
            }
            // REQUEST FOR API CALL
            cfhttp(method="POST", charset="utf-8", url=rquestURL, result="result") {
                cfhttpparam(name="Content-Type", type="header", value="application/json");
                cfhttpparam(name="Authorization", type="header", value="Bearer " &api_key);
                cfhttpparam( type="body", value=serializeJSON(payload));
            }
            jsonResponse = deserializeJSON(result.fileContent)
        </cfscript>
        <!-----RETURN RESPONSE---->
        <cfreturn jsonResponse.choices[1].text >
    </cffunction>  
</cfcomponent>