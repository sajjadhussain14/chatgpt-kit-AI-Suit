<cfoutput>
    
    
    <cfif structKeyExists(form, "DisconnectButton")>
        <cfset postedValue = form.postedValue>
        <cfif postedValue eq "Disconnect Now">
            <cfset application.session.longLivedCode=''>
        </cfif>
    </cfif>


    <cfscript>
    connectInitiate=false
    connectObj = createObject("component","src.components.facebook.connect")
    fbConnectedStatus=connectObj.isConnected()
    //connectObj.redirecteMe(fbConnectedStatus)
</cfscript>

connect Status is #fbConnectedStatus#

                    <h4 class="p-2 w-100 text-center mt-1">
                        Social Media Content
                    </h4>

                    <section class="mb-3 prompt-screen row p-2">


                        <div class="col-lg-12 col-md-12">

                    <h6 for="prompt" class="form-label"> Add & Remove Networks</h6>

                            <div class="row text-center m-2">

                                <cfif fbConnectedStatus eq 'yes'>
                                <form class="col-3 m-2"  action="#application.secureurl#?action=socialmedia-content" method="post">
                                    <input type="hidden" name="postedValue" value="Disconnect Now">

                                <button type="submit" class="btn   fb-btn w-100  " name="DisconnectButton" onclick="connectToFB('#fbConnectedStatus#')">
                                  Connected &nbsp; <i class="fa-brands fa-facebook-f"></i>
                                     <span class="remove-social-icon  text-end " aria-hidden="true">&times;</span>

                                </button>
                                </form>

                                <cfelse>
                                <button class="btn  col-3 fb-btn m-2" onclick="connectToFB('#fbConnectedStatus#')">
                                    + Add <i class="fa-brands fa-facebook-f "></i>
                                </button>
                                </cfif>


                                <button disabled class="btn  col-3 fb-btn m-2" onclick="">
                                    + Add Twitter
                                </button>
                                <button disabled class="btn  col-3 fb-btn m-2" onclick="">
                                    + Add LinkedIn
                                </button>
                                <button disabled class="btn  col-3 fb-btn m-2" onclick="">
                                    + Add Instagram
                                </button>
                                <button disabled class="btn  col-3 fb-btn m-2" onclick="">
                                    + Add Pinterest
                                </button>





                            </div>

                        </div>
<hr class="mt-2 w-100" />

                        <div class="col-lg-12 col-md-12">
                        <div class="row">
                                                    <label for="prompt" class="form-label"> Prompt (Context of post for social Media)</label>

                        <div class="col-lg-8 col-md-12">


                            <textarea class="form-control" id="prompt" rows="4"
                                placeholder="Add Context of post for social Media and Press Enter "></textarea>
                        <div id="prompt-help" class="form-text">
                            Phrase your request in a manner that elicits a precise and
                            tailored response.
                        </div>
                        
                        </div>

                        <div class="col-lg-4 col-md-12 text-center  ">
 

                            <button class="btn generate-btn   form-control socialmedia-gereate-button" onclick="generateSocialMediaContentRequest()">
                                Generate Data
                            </button>

                        </div>
                    </div>
                    
                    </div>


                    </section>
<hr class="mt-2 w-100" />

<section class="row m-2 mb-3">
    <div class="col-10">
    <label for="title" class="col-12 form-label">Select the Social Meida Platforms</label>
</div>

<div class="row">

<ul class="nav nav-tabs" id="myTab" role="tablist">

<cfif fbConnectedStatus eq 'yes'>

  <li class="nav-item" role="presentation">
    <button onclick="setNetwork('fb')" class="nav-link active" id="facebook-tab" data-bs-toggle="tab" data-bs-target="##facebook-content" type="button" role="tab" aria-controls="facebook" aria-selected="true">Facebook</button>
  
  </li>
</cfif>
<!----- for twitter----
  <li class="nav-item" role="presentation">
    <button onclick="setNetwork('twitter')" class="nav-link" id="twitter-tab" data-bs-toggle="tab" data-bs-target="##twitter-content" type="button" role="tab" aria-controls="twitter" aria-selected="false">Twitter</button>
  </li>---->
</ul>
<div class="tab-content bg-light border p-0" id="myTabContent">
<cfif fbConnectedStatus eq 'yes'>

  <textarea class=" p-2 tab-pane fade show active div-textarea w-100 border-0" rows="12" id="facebook-content" role="tabpanel" aria-labelledby="facebook-tab"></textarea>
</cfif>  
<!----for twitter
  <textarea class=" p-2 tab-pane fade show  div-textarea w-100 border-0" rows="12" id="twitter-content" role="tabpanel" aria-labelledby="twitter-tab"></textarea>
---->


</div>


<cfif fbConnectedStatus eq 'yes'>

 <div class=" col-12  px-5 post-holder">
    <div class="row text-end" >
        <div class=" offset-7 col-lg-3 col-md-12">
        <select class="form-select form-control " aria-label=".form-select-lg example">
        <option selected>Now</option>
        <option value="1">Shedule</option>
        <option value="3">Save Draft</option>
        </select>
        </div>
        <button id="social-poster" class=" btn post-btn col-lg-2 col-md-12  " onclick="postToFB()">
        Post Now
        </button>
        </div>
    </div>

</cfif>


</div>






</section>

</cfoutput>    



 
