<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="author" content="Sajjad Hussain" />
    <title>ChatGPT AI Kit</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <link rel="shortcut icon" href="./images/chatgpt-favicon.png" type="image/x-icon" />
    <link rel="stylesheet" href="css/style.css" />

    <style>
.no-arrow  {
}

.no-arrow .btn-toggle::before {
  display: none !important;
  margin-left:20px;
}

</style>
    <cfoutput>

  <script src="#application.secureurl#/src/ckeditor/ckeditor.js"></script>

    <script src="#application.secureurl#//src/lib/script.js"></script>

    </cfoutput>

</head>

<body>
<cfoutput>
    
    <div id="spinner">
        <img id="loaderIMG" src="./images/ajax-loader.gif" />
    </div>
    <!-- START MAIN CONTAINER -->
    <div class="container-fluid" id="container">
        <section class="data-screen col-12">
            <div class="row"> 
                <div class="col-12">
                    <div class="row mb-2">
                        <div class="col-3 "> 
                           <a href="#application.secureurl#" class="logo">LOGO</a> 
                        </div>
                        <div class="col-9"> 

                            <h3 class=" text-center  "> Celerant AI Suit </h3>
                        </div>

                    </div>

                </div>
                <cfinclude template = "./src/views/sidebar.cfm">
                <div class="col-lg-9 col-md-8 col-sm-12">
                    <cfinclude template = "./src/views/open-close-button.cfm">
                    <cfinclude template = "./src/views/content/content.cfm">
                </div>
            </div>
            <cfinclude template = "./src/views/footer.cfm">
        </section>
    </div>
</cfoutput>

    <!-- START EXTERNAL JS RESOURCES -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.bundle.min.js"></script>
    <cfinclude template = "./src/views/tool-panel.cfm">
    <cfoutput>
        <script src="#application.secureurl#/src/lib/chatGPT.js"></script>

    <script src="#application.secureurl#/src/lib/socialmedia.js"></script>


   <script>
   pageTransition()
   </script>
    </cfoutput>


</body>

</html>