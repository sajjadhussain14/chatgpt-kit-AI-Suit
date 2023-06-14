                    <h4 class="p-2 w-100 text-center mt-1">
                        Product Recommandation
                    </h4>

                    <section class="mb-3 prompt-screen row p-2">
                        <div class="col-lg-10 col-md-12">
                            <label for="prompt" class="form-label"> Prompt ("Please Enter a Customer ID. ChatGPT will analyze customer'scale order history and compare it with the new arrivals in the database. Based on previous purchases and the latest products, ChatGPT will send the customer personalized product recommendations to help discover new items that may interest him/her.")</label>
                            <input type="text" class="form-control" id="product-prompt" rows="4"
                                placeholder="Enter Customer ID to Generate product Recommandations"></input>
                        <div id="prompt-help" class="form-text">
                            Phrase your request in a manner that elicits a precise and
                            tailored response.
                        </div>
                        
                        </div>
                        <div class="col-lg-2 col-md-12">
                            <label for="prompt" class="form-label fake-lbl"> </label>

                            <button class="btn generate-btn col-12 mt-4 form-control" onclick="productRecommandations()">
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
                            <label for="description" class="form-label">Product Recommandations</label>
                            <div contenteditable="true" class="form-control div-textarea reviews-feedback" id="description"
                                aria-describedby="descriptionHelp"></div>
                        </div>

                    </section>

