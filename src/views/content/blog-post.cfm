
                    <h4 class="p-2 w-100 text-center mt-1">
                        Blog Post Creator
                    </h4>

                    <section class="mb-3 prompt-screen row p-4 blog-prompt-area " >
<h6 class="w-100 text-center border-bottom  mt-0 pt-0 pb-2 mb-3"> Prompt Area </h6>
                        <div class="col-lg-6 col-md-12">
                        <input onchange="setBlogFor('local')" class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked>
                        <label class="form-check-label" >
                            Blog for Same Site
                        </label>
                        </div>
                        <div class="col-lg-6 col-md-12">
                        <input onchange="setBlogFor('guest')" class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" >
                        <label class="form-check-label" for="flexRadioDefault2">
                            Guest Blogging (for external Site)
                        </label>
                        </div>
                        <div class="col-lg-12 col-md-12 mt-3">
                            <label for="title" class="form-label">Title</label>
                            <input type="text" class="form-control" id="blog-prompt"
                        placeholder="Enter the Title here" ></input>
                        </div>


                        <div class="col-lg-12 col-md-12 mt-3">
                            <label for="title" class="form-label">Number of keywords Required</label>
                            <input type="number" value="5" class="form-control" id="keywords-numb" placeholder="e.g 5">
                        </div>


                        <div class="col-lg-12 col-md-12 mt-3">
                            <label for="title" class="form-label">Number of Headings Required</label>
                        
                            <div class="row m-1">      
                                <div class="col-6 border p-2">
                                    <div class="row">
                                        <label class=" col-1"> H1 </label>
                                        <input id="h1-numb" readonly class=" col-5 bg-light mb-2"  type="text" id="h1-numb" name="h1-numb" min="1" max="100" value="1">

                                        <label class=" col-1"> H2 </label>
                                        <input id="h2-numb" class=" col-5 mb-2" type="number" id="h1-numb" name="h1-numb" min="1" max="100" value="3">

                                        <label class=" col-1 "> H5 </label>
                                        <input id="h5-numb" class=" col-5 mb-2" type="number" id="h1-numb" name="h1-numb" min="1" max="100" value="3">
                                    
                                    </div>
                                </div>
                                <div  class="col-6  border p-2">
                                    <div class="row">

                                        <label class=" col-1"> H3 </label>
                                        <input id="h3-numb" class=" col-5 mb-2" type="number" id="h1-numb" name="h1-numb" min="1" max="100" value="3">

                                        <label class=" col-1"> H4 </label>
                                        <input id="h4-numb" class=" col-5 mb-2" type="number" id="h1-numb" name="h1-numb" min="1" max="100" value="3">

                                        <label class=" col-1"> H6 </label>
                                        <input id="h6-numb" class=" col-5 mb-2" type="number" id="h1-numb" name="h1-numb" min="1" max="100" value="3">
                                </div>

                                </div>


                            </div>
                        
                        
                        </div>


                        <div class="col-lg-12 col-md-12 mt-3">
                            <label   class="form-label" >Key Points of Blog </label>
                            <textarea rows="4" type="number" class="form-control" id="key-points" placeholder="Entert Key Points here"></textarea>
                        </div>

                        <div class="col-lg-12 col-md-12 mt-3 p-2  rounded text-center d-flex justify-content-center align-content-center p-0">
                            <button class="btn generate-btn p-0 col-12  form-control socialmedia-gereate-button" onclick="generateBlogDataRequest()">
                                Generate Data
                            </button>

                        </div>



                    </section>

<div class="border blog-container p-2">
                    <section class="mb-3 product-title-holder row">
                        <div class="col-lg-12 col-md-12">
                            <label for="title" class="form-label">Title</label>
                            <div id="title" contenteditable="true" type="text" class="form-control" 
                                ></div>
                        </div>

                    </section>

                    <section class="mb-3 product-description-holder row">
                        <div class="col-lg-12 col-md-12">
                            <label for="description" class="form-label">Description</label>
                            <div  contenteditable="true" class="form-control div-textarea" id="description"
                                ></div>
                        </div>

                    </section>

                    <section class="mb-3 product-keywords-holder row">
                        <div class="col-lg-12 col-md-12">
                            <label for="keywords" class="form-label">Keywords</label>
                            <textarea contenteditable="true" type="text" class="form-control div-textarea"
                                id="comma-separated-keywords" aria-describedby="keywordsHelp"></textarea>
                        </div>
                    </section>

                    <section class="mb-3 product-longDescription-holder row">
                        <div class="col-lg-12 col-md-12">
                            <label for="longDescription" class="form-label ">Content 
                           <i> Max Length &nbsp; &nbsp;</i><input type="text" id="max-Len" value="5000" >
                            </label>

                            <textarea rows="30" contenteditable="true" type="text" class="form-control div-textarea"
                                id="content" aria-describedby="longDescriptionHelp"></textarea>
                        </div>
                    </section>

<div id="post-env" class="">
                    <section class="mb-3 product-shortDescription-holder row">
                        <div class="col-lg-12 col-md-12">
                            <label for="shortDescription" class="form-label">Category</label>
                                <select class="form-select" aria-label="Default select example">
                                <option selected>Selct a Category</option>
                                <option value="1">Apparel</option>
                                <option value="2">Shoes</option>
                                <option value="3">Firearms</option>
                                </select>                        
                        </div>
                    </section>


                    <section  class="action-buttons m-2 border row pt-5 mt-2 d-block">
                        <div class="row d-flex justify-content-around">
                            <button class="btn generate-btn col-4 btns"
                                onclick="alert('This button is for saving data to the database.')">
                                Submit Blog
                            </button>

                            <button class="btn generate-btn col-4 btns" onclick="javascript:location.reload();">
                                Cancel
                            </button>

                        </div>
                    </section>
</div>





</div>
