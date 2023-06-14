                    <h4 class="p-2 w-100 text-center mt-1">
                        Email Responder
                    </h4>

                    <section class="mb-3 prompt-screen row p-2">

                        <div class="col-lg-12 col-md-12">
                            <label for="prompt" class="form-label"> Enter Email here</label>
                            <textarea class="form-control" id="received-email" rows="8"
                                placeholder="Add Email here to Generate Response"></textarea>
                        </div>


                        <div class="col-lg-10 col-md-12">
                            <label for="prompt" class="form-label"> Prompt </label>
                            <textarea class="form-control" id="received-email-prompt" rows="4"
                                placeholder="Add prompt here"></textarea>
                        <div id="prompt-help" class="form-text">
                            Phrase your request in a manner that elicits a precise and
                            tailored response.
                        </div>
                        
                        </div>
                        <div class="col-lg-2 col-md-12">
                            <label for="prompt" class="form-label fake-lbl"> </label>

                            <button class="btn generate-btn col-12 mt-4 form-control" onclick="emailResponsderRequest()">
                                Generate Data
                            </button>
                        </div>

                    </section>


                    <section class="mb-3 product-description-holder row">
                        <div class="col-lg-12 col-md-12">
                            <div class="row">
                            <div class="col-lg-2 col-md-12">
                                <label for="description" class="form-label">Email Address</label>
                            </div>
                            <div class="col-lg-7 col-md-12">
                                <input type="email" class="form-control" id="receiver-email" >
                            </div>
                            <div class="col-lg-3 col-md-12 ">
                                <button class="btn  form-control">Send</button>
                            </div>

                            </div>

                        </div>

                        <div class="col-lg-12 col-md-12">
                            <label for="description" class="form-label">Email Response</label>
                            <textarea contenteditable="true" class="form-control div-textarea reviews-feedback" id="email-reply-holder"
                                aria-describedby="descriptionHelp"></textarea>
                        </div>

                    </section>

