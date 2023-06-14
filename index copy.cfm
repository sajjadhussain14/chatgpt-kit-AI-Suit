<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="author" content="Sajjad Hussain" />
    <title>ChatGPT Product Data Kit</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet" />
    <link rel="shortcut icon" href="./images/chatgpt-favicon.png" type="image/x-icon" />
    <link rel="stylesheet" href="css/style.css" />
</head>

<body>
    <div id="spinner">
        <img src="./images/ajax-loader.gif" />
    </div>
    <!-- START MAIN CONTAINER -->
    <div class="container-fluid">
        <section class="data-screen col-12">
            <div class="row"> 
                <h5 class="w-100 text-center"> ChatGPT Data Creator Kit in Coldfusion, ES6 & Bootstrap 5 </h5>

                <div class="col-lg-8 col-md-8 col-sm-12 content">
                    <h6 class="p-2 w-100 text-center mt-5">
                        Enter Product Name in Propmt and Press Generate Button. Thats it!
                    </h6>

                    <section class="mb-3 prompt-screen row p-2">
                        <div class="col-lg-10 col-md-12">
                            <label for="prompt" class="form-label"> Prompt </label>
                            <textarea class="form-control" id="prompt" rows="4"
                                placeholder="Add Product name (e.g iPhone 14 pro max ) and Press Enter "></textarea>
                        <div id="prompt-help" class="form-text">
                            Phrase your request in a manner that elicits a precise and
                            tailored response.
                        </div>
                        
                        </div>
                        <div class="col-lg-2 col-md-12">
                            <label for="prompt" class="form-label fake-lbl"> </label>

                            <button class="btn generate-btn col-12 mt-4 form-control" onclick="generateData()">
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
                                aria-describedby="akeywordsHelp"></textarea>
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
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 sidenav">
                    <!-- START MODELS -->
                    <section class="row p-2">
                        <label for="gpt-model" class="form-label">Model</label>
                        <select name="gpt-model" id="gpt-model" class="form-select text-light gpt-model form-control">
                            <option value="text-davinci-003" selected>
                                text-davinci-003
                            </option>
                            <option value="text-curie-001">text-curie-001</option>
                            <option value="text-curie-001">text-babbage-001</option>
                            <option value="text-curie-001">text-ada-001</option>
                        </select>
                        <out class="form-text">Text-Davinci-003 is a highly advanced language model capable of
                            natural language generation and understanding with human-like
                            fluency and coherence.
                        </out>
                    </section>
                    <hr />
                    <!-- START TEMPERATURE -->
                    <section class="row p-2">
                        <div class="col-12">
                            <p class="form-label">Temperature</p>
                        </div>
                        <div class="col-10">
                            <input  onchange="changeTemperature()" type="range" class="form-range w-100 sliderControl" min="0" max="1"
                                step="0.1" id="gpt-temperature" name="gpt-temperature" value="0.7" />
                        </div>
                        <div class="col-2 text-end">
                            <output id="out-temperature">0.7</output>
                        </div>
                        <out class="form-text">A higher temperature value will result in more diverse and
                            creative responses. Conversely, a lower temperature value will
                            produce more conservative and predictable responses, but may
                            also be more coherent and on-topic.</out>
                    </section>
                    <hr />

                    <!-- START MAXIMUM LENGTH -->
                    <section class="row p-2">
                        <div class="col-12">
                            <p class="form-label">Maximum Length</p>
                        </div>
                        <div class="col-10">
                            <input onchange="changeMaxLen()" type="range" class="form-range w-100" min="0" max="2048"
                                step="14" id="gpt-maxLen" name="gpt-max-len" value="2048" />
                        </div>
                        <div class="col-2 text-end">
                            <output id="out-maxLen">2048</output>
                        </div>
                        <out class="form-text">
                            Setting a higher max length may result in more comprehensive and
                            detailed responses, but may also increase the likelihood of
                            generating irrelevant or redundant text. Conversely, setting a
                            lower max length may produce more concise and focused responses,
                            but may also omit important information or context.</out>
                    </section>
                    <hr />

                    <!-- START TOP P -->
                    <section class="row p-2">
                        <div class="col-12">
                            <p class="form-label">TopP</p>
                        </div>
                        <div class="col-10">
                            <input onchange="changeTopP()" type="range" class="form-range w-100" min="0" max="1"
                                step="0.01" id="gpt-topP" name="gpt-topP" value="1" />
                        </div>
                        <div class="col-2 text-end">
                            <output id="out-topP">1</output>
                        </div>
                    </section>
                    <out class="form-text">
                        Increasing the TopP value (e.g., from 0.5 to 0.9) can result in
                        more diverse and creative responses. Conversely, decreasing the
                        TopP value (e.g., from 0.9 to 0.5) can lead to more conservative
                        and predictable responses. This may improve the coherence and
                        relevance of the generated text</out>

                    <hr />

                    <!-- START FREQUENCY PENALTY -->
                    <section class="row p-2">
                        <div class="col-12">
                            <p class="form-label">Frequency Penalty</p>
                        </div>
                        <div class="col-10">
                            <input onchange="changeFrequency()" type="range" class="form-range w-100" min="0" max="2"
                                step="0.01" id="gpt-frequency" name="gpt-frequency" value="0" />
                        </div>
                        <div class="col-2 text-end">
                            <output id="out-frequency">0</output>
                        </div>
                        <out class="form-text">
                            A frequency penalty decreases word or phrase repetition in a
                            text.
                        </out>
                    </section>
                    <hr />

                    <!-- START PRESENCE PENALTY -->
                    <section class="row p-2">
                        <div class="col-12">
                            <p class="form-label">Presence Penalty</p>
                        </div>
                        <div class="col-10">
                            <input onchange="changePresence()" type="range" class="form-range w-100" min="0" max="2"
                                step="0.01" id="gpt-presence" name="gpt-presence" value="0" />
                        </div>
                        <div class="col-2 text-end">
                            <output id="out-presence">0</output>
                        </div>
                        <out class="form-text">Presence penalty decreases the repetition of text in the
                            generated output of language models like ChatGPT-3. By
                            penalizing the model's probability distribution for tokens that
                            have already been generated in the previous context, the model
                            is encouraged to generate more diverse and novel responses that
                            avoid repeating the same information.</out>
                    </section>
                </div>
            </div>
            <div class="w-100 p-1 text-center d-block pt-2">
                Copyright @ 2023. Sajjad Hussain
            </div>
        </section>
    </div>
  <cfoutput>
      <script src="#application.secureurl#/src/lib/chatGPT.js"></script>
  </cfoutput>

    <!-- START EXTERNAL JS RESOURCES -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/material-ui/5.0.0-beta.5/index.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/material-ui/5.0.0-beta.5/index.js"></script>
</body>

</html>