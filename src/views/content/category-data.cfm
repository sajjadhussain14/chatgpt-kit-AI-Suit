                    <h4 class="p-2 w-100 text-center mt-1">
                        Category Data Creator
                    </h4>

                    <section class="mb-3 prompt-screen row p-2">
                        <div class="col-lg-10 col-md-12">
                            <label for="prompt" class="form-label"> Prompt (Enter Category Name here) </label>
                            <textarea class="form-control" id="category-prompt" rows="4"
                                placeholder="Add Category name (e.g Apparel ) and Press Enter "></textarea>
                        <div id="prompt-help" class="form-text">
                            Phrase your request in a manner that elicits a precise and
                            tailored response.
                        </div>
                        
                        </div>
                        <div class="col-lg-2 col-md-12">
                            <label for="prompt" class="form-label fake-lbl"> </label>

                            <button class="btn generate-btn col-12 mt-4 form-control" onclick="generateCategoryData()">
                                Generate Data
                            </button>
                        </div>

                    </section>

                    <section class="mb-3 product-title-holder row">
                        <div class="col-lg-8 col-md-12">
                            <label for="title" class="form-label">Title</label>
                            <div contenteditable="true" type="text" class="form-control" id="title"
                                aria-describedby="titleHelp"></div>
                        </div>

                        <div class="col-lg-4 col-md-12">
                            <label for="atitle" class="form-label">Additional Input for Title</label>
                            <textarea type="text" class="form-control" id="atitle"
                                aria-describedby="atitleHelp"></textarea>
                        </div>
                    </section>

                    <section class="mb-3 product-description-holder row">
                        <div class="col-lg-8 col-md-12">
                            <label for="description" class="form-label">Description</label>
                            <div contenteditable="true" class="form-control div-textarea" id="description"
                                aria-describedby="descriptionHelp"></div>
                        </div>

                        <div class="col-lg-4 col-md-12">
                            <label for="adescription" class="form-label ">Additional Input for Description</label>
                            <textarea type="text" class="form-control div-textarea" id="adescription"
                                aria-describedby="adescriptionHelp"></textarea>
                        </div>
                    </section>

                    <section class="mb-3 product-keywords-holder row">
                        <div class="col-lg-8 col-md-12">
                            <label for="keywords" class="form-label">Keywords</label>
                            <div contenteditable="true" type="text" class="form-control div-textarea"
                                id="comma-separated-keywords" aria-describedby="keywordsHelp"></div>
                        </div>
                        <div class="col-lg-4 col-md-12">
                            <label for="akeywords" class="form-label">Additional Input for Keywords</label>
                            <textarea type="text" class="form-control div-textarea" id="acomma-separated-keywords"
                                aria-describedby="akeywordsHelp">Please add only long tail keywords</textarea>
                        </div>
                    </section>

                    <section class="mb-3 product-shortDescription-holder row">
                        <div class="col-lg-8 col-md-12">
                            <label for="shortDescription" class="form-label">Short Description</label>
                            <div contenteditable="true" type="text" class="form-control div-textarea"
                                id="short-description" aria-describedby="shortDescriptionHelp"></div>
                        </div>
                        <div class="col-lg-4 col-md-12">
                            <label for="ashortDescription" class="form-label">Additional Input for
                                shortDescription</label>
                            <textarea type="text" class="form-control div-textarea" id="ashort-description"
                                aria-describedby="ashortDescriptionHelp"></textarea>
                        </div>
                    </section>

                    <section class="mb-3 product-longDescription-holder row">
                        <div class="col-lg-8 col-md-12">
                            <label for="longDescription" class="form-label">Long Description</label>
                            <div contenteditable="true" type="text" class="form-control div-textarea"
                                id="long-description" aria-describedby="longDescriptionHelp"></div>
                        </div>
                        <div class="col-lg-4 col-md-12">
                            <label for="alongDescription" class="form-label">Additional Input for Long
                                Description</label>
                            <textarea type="text" class="form-control div-textarea" id="along-description"
                                aria-describedby="alongDescriptionHelp"></textarea>
                        </div>
                    </section>

                    <section class="action-buttons m-2 border row pt-5 mt-2 d-block">
                        <div class="row d-flex justify-content-around">
                            <button class="btn generate-btn col-4 btns" onclick="javascript:location.reload();">
                                Cancel
                            </button>
                            <button class="btn generate-btn col-4 btns"
                                onclick="alert('This button is for saving data to the database.')">
                                Save
                            </button>
                        </div>
                    </section>
