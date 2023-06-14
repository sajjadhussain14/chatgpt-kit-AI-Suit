                    <h4 class="p-2 w-100 text-center mt-1">
                        Reviews Feedback Creator
                    </h4>

                    <section class="mb-3 prompt-screen row p-2">
                        <div class="col-lg-10 col-md-12">
                            <label for="prompt" class="form-label"> Prompt (Enter Reviews here)</label>
                            <textarea class="form-control" id="reviews-prompt" rows="4"
                                placeholder="Add Review here to Generate feedback"></textarea>
                        <div id="prompt-help" class="form-text">
                            Phrase your request in a manner that elicits a precise and
                            tailored response.
                        </div>
                        
                        </div>
                        <div class="col-lg-2 col-md-12">
                            <label for="prompt" class="form-label fake-lbl"> </label>

                            <button class="btn generate-btn col-12 mt-4 form-control" onclick="reviewsFeedback()">
                                Generate Data
                            </button>
                        </div>

                    </section>


                    <section class="mb-3 product-description-holder row">
                        <div class="col-lg-12 col-md-12">
                            <label for="description" class="form-label">Reviews Feedback</label>
                            <div contenteditable="true" class="form-control div-textarea reviews-feedback" id="review-feedback-holder"
                                aria-describedby="descriptionHelp"></div>
                        </div>

                    </section>

