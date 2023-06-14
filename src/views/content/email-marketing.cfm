                    <h4 class="p-2 w-100 text-center mt-1">
                        Email Marketing
                    </h4>

                    <section class="mb-3 prompt-screen row p-2">
                        <div class="col-lg-10 col-md-12">
                            <label for="prompt" class="form-label"> Prompt (Enter The context here to generate marketing content )</label>
                            <textarea class="form-control" id="prompt-text" rows="4"
                                placeholder="Add propmt to generate content for digital marketing"></textarea>
                        <div id="prompt-help" class="form-text">
                            Phrase your request in a manner that elicits a precise and
                            tailored response.
                        </div>
                        
                        </div>
                        <div class="col-lg-2 col-md-12">
                            <label for="prompt" class="form-label fake-lbl"> </label>

                            <button class="btn generate-btn col-12 mt-4 form-control" onclick="emailMarketingRequest()">
                                Generate Data
                            </button>
                        </div>

                    </section>


                    <section class="mb-3 product-description-holder row">
                        <div class="col-lg-12 col-md-12">
                            <div class="row">
                            <div class="col-lg-2 col-md-12">
                                <label for="description" class="form-label">Email Lists</label>
                            </div>
                            <div class="col-lg-7 col-md-12">
                                <select class="form-select" aria-label="Default select example">
                                <option selected>Please select an Email List</option>
                                <option value="1">Client List 1</option>
                                <option value="2">Client List 2</option>
                                <option value="3">Celerant Global</option>
                                </select>                           
                            </div>
                            <div class="col-lg-3 col-md-12 ">
                                <button class="btn  form-control">Send</button>
                            </div>

                            </div>

                        </div>

                        <div class="col-lg-12 col-md-12">
                            <label for="description" class="form-label">Email marketing Content</label>
                            <textarea contenteditable="true" class="form-control div-textarea reviews-feedback" id="email-marketing-content-holder"
                                aria-describedby="descriptionHelp"></textarea>
                        </div>

                    </section>

      <script>
    CKEDITOR.replace('editor', {
      // Set the editor height
      height: 400,
      
      // Set the toolbar configuration
      toolbar: [
        { name: 'document', items: [ 'NewPage', 'Preview', '-', 'Templates' ] },
        { name: 'clipboard', items: [ 'Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo' ] },
        { name: 'editing', items: [ 'Find', 'Replace', '-', 'SelectAll', '-', 'Scayt' ] },
        { name: 'forms', items: [ 'Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField' ] },
        '/',
        { name: 'basicstyles', items: [ 'Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'RemoveFormat' ] },
        { name: 'paragraph', items: [ 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', 'CreateDiv', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-', 'BidiLtr', 'BidiRtl' ] },
        { name: 'links', items: [ 'Link', 'Unlink', 'Anchor' ] },
        { name: 'insert', items: [ 'Image', 'Flash', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar', 'PageBreak', 'Iframe' ] },
        '/',
        { name: 'styles', items: [ 'Styles', 'Format', 'Font', 'FontSize' ] },
        { name: 'colors', items: [ 'TextColor', 'BGColor' ] },
        { name: 'tools', items: [ 'Maximize', 'ShowBlocks' ] },
        { name: 'about', items: [ 'About' ] }
      ],
      
      // Set the skin to use
      skin: 'moono-lisa',
      
      // Enable spell checking
      scayt_autoStartup: true,
      scayt_sLang: 'en_US',
      
      // Set the font sizes to use
      fontSize_sizes: '8/8px;9/9px;10/10px;11/11px;12/12px;13/13px;14/14px;15/15px;16/16px;17/17px;18/18px;19/19px;20/20px;21/21px;22/22px;23/23px;24/24px;25/25px;26/26px;27/27px;28/28px;29/29px;30/30px;31/31px;32/32px;33/33px;34/34px;35/35px;36/36px;37/37px;38/38px;39/39px;40/40px;41/41px;42/42px;43/43px;44/44px;45/45px;46/46px;47/47px;48/48px;49/49px;50/50px;',
      
      // Set the
// font families to use
font_names: 'Arial/Arial, Helvetica, sans-serif;' +
'Comic Sans MS/Comic Sans MS, cursive;' +
'Courier New/Courier New, Courier, monospace;' +
'Georgia/Georgia, serif;' +
'Lucida Sans Unicode/Lucida Sans Unicode, Lucida Grande, sans-serif;' +
'Tahoma/Tahoma, Geneva, sans-serif;' +
'Times New Roman/Times New Roman, Times, serif;' +
'Trebuchet MS/Trebuchet MS, Helvetica, sans-serif;' +
'Verdana/Verdana, Geneva, sans-serif;',
  // Enable file browser
  filebrowserBrowseUrl: '/path/to/browser/browse.php',
  filebrowserUploadUrl: '/path/to/browser/upload.php',
  filebrowserImageBrowseUrl: '/path/to/browser/browse.php?type=Images',
  filebrowserImageUploadUrl: '/path/to/browser/upload.php?type=Images',
  filebrowserFlashBrowseUrl: '/path/to/browser/browse.php?type=Flash',
  filebrowserFlashUploadUrl: '/path/to/browser/upload.php?type=Flash'
});
  </script>
