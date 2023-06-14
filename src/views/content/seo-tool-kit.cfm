<style>
h1{font-size:20px;margin-top: 10px;margin-bottom: 30px;}
span{font-size: 18px;margin-bottom: 10px;}
p{font-size: 16px;margin-bottom: 10px;}
a{font-size: 16px;text-decoration: none;}
table{margin-bottom: 10px;}
.progress{
    width: 150px;
    height: 150px;
    line-height: 150px;
    background: none;
    margin: 0 auto;
    box-shadow: none;
    position: relative;
}
.progress:after{
    content: "";
    width: 100%;
    height: 100%;
    border-radius: 50%;
    border: 12px solid #fff;
    position: absolute;
    top: 0;
    left: 0;
}
.progress > span{
    width: 50%;
    height: 100%;
    overflow: hidden;
    position: absolute;
    top: 0;
    z-index: 1;
}
.progress .progress-left{
    left: 0;
}
.progress .progress-bar{
    width: 100%;
    height: 100%;
    background: none;
    border-width: 12px;
    border-style: solid;
    position: absolute;
    top: 0;
}
.progress .progress-left .progress-bar{
    left: 100%;
    border-top-right-radius: 80px;
    border-bottom-right-radius: 80px;
    border-left: 0;
    -webkit-transform-origin: center left;
    transform-origin: center left;
}
.progress .progress-right{
    right: 0;
}
.progress .progress-right .progress-bar{
    left: -100%;
    border-top-left-radius: 80px;
    border-bottom-left-radius: 80px;
    border-right: 0;
    -webkit-transform-origin: center right;
    transform-origin: center right;
    animation: loading-1 1.8s linear forwards;
}
.progress .progress-value{
    width: 90%;
    height: 90%;
    border-radius: 50%;
    background: #ffffff;
    font-size: 24px;
    color: green;
    line-height: 135px;
    text-align: center;
    position: absolute;
    top: 5%;
    left: 5%;
}
.progress.blue .progress-bar{
    border-color: Green;
}
.progress.blue .progress-left .progress-bar{
    animation: loading-2 1.5s linear forwards 1.8s;
}
@keyframes loading-1{
    0%{
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
    }
    100%{
        -webkit-transform: rotate(180deg);
        transform: rotate(180deg);
    }
}
@keyframes loading-2{
    0%{
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
    }
    100%{
        -webkit-transform: rotate(144deg);
        transform: rotate(144deg);
    }
}
@keyframes loading-3{
    0%{
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
    }
    100%{
        -webkit-transform: rotate(90deg);
        transform: rotate(90deg);
    }
}
@keyframes loading-4{
    0%{
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
    }
    100%{
        -webkit-transform: rotate(36deg);
        transform: rotate(36deg);
    }
}
@keyframes loading-5{
    0%{
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
    }
    100%{
        -webkit-transform: rotate(126deg);
        transform: rotate(126deg);
    }
}
@media only screen and (max-width: 990px){
    .progress{ margin-bottom: 20px; }
}

</style>
        <h1 class="text-center">SEO Toolkit
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-12">
                    <span class="text-start d-block">URL</span>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="https://www.desperate-measures.net/" aria-label="" aria-describedby="button-addon1">
                    </div>
                    <span class="text-start d-block">Prompt</span>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Add prompt" aria-label="" aria-describedby="button-addon2">
                        <button class="btn btn-outline-secondary" type="button" id="button-addon2">Generate Button</button>
                      </div>
                      <span class="text-start d-block">Title</span>
                      <div class="input-group mb-3">
                          <input type="text" class="form-control" placeholder="Auto Suggestion for title if not, this will be editable." aria-label="" aria-describedby="button-addon1">
                      </div>
                      <span class="text-start d-block">Meta Description</span>
                      <div class="input-group mb-3">
                          <textarea type="text" rows="3" class="form-control" placeholder="Place the text here or auto get here. We can auto suggest meta description. Editable mode." aria-label="" aria-describedby="button-addon1"></textarea>
                      </div>
                      <span class="text-start d-block">Image Name & Alt Attributes</span>
                      <table class="table table-striped">
                        <thead>
                          <tr>
                            <th scope="col">S#</th>
                            <th scope="col">Image URL</th>
                            <th scope="col">Image Name</th>
                            <th scope="col">Image Alt Attribute</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">1</th>
                            <td>Abc.com/images/logo.png</td>
                            <td>Logo</td>
                            <td>ABC @Logo</td>
                          </tr>
                          <tr>
                            <th scope="row">2</th>
                            <td>Abc.com/images/logo.png</td>
                            <td>Logo</td>
                            <td>ABC @Logo</td>
                          </tr>
                          <tr>
                            <th scope="row">3</th>
                            <td>Abc.com/images/logo.png</td>
                            <td>Logo</td>
                            <td>ABC @Logo</td>
                          </tr>
                        </tbody>
                      </table>

                      <span class="text-start d-block">H1</span>
                      <div class="input-group mb-3">
                          <input type="text" class="form-control" placeholder="Place H1 here.  Editable mode." aria-label="" aria-describedby="button-addon1">
                      </div>

                      <span class="text-start d-block">Other Headings</span>
                      <table class="table table-striped">
                        <thead>
                          <tr>
                            <th scope="col">S#</th>
                            <th scope="col">Heading</th>
                            <th scope="col">Text</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">1</th>
                            <td>H2</td>
                            <td>Get all H2 and show all H2</td>
                          </tr>
                          <tr>
                            <th scope="row">2</th>
                            <td>H3</td>
                            <td>Get h3 Headings</td>
                          </tr>
                          <tr>
                            <th scope="row">3</th>
                            <td>H4</td>
                            <td>Get h4 Headings</td>
                          </tr>
                        </tbody>
                      </table>
                      <span class="text-start d-block">Meta Keywords</span>
                      <div class="input-group mb-3">
                          <input type="text" class="form-control" placeholder="Keyword1, Keyword 2, Keyword 3, Keyword 4, Keyword 5" aria-label="" aria-describedby="button-addon1">
                      </div>

                      <span class="text-start d-block">Internal Links</span>
                      <table class="table table-striped">
                        <thead>
                          <tr>
                            <th scope="col">S#</th>
                            <th scope="col">Links</th>
                            <th scope="col">Text</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">1</th>
                            <td>ABC.com/services</td>
                            <td>Services</td>
                          </tr>
                          <tr>
                            <th scope="row">2</th>
                            <td>Abc.com/about</td>
                            <td>About ABC</td>
                          </tr>
                          <tr>
                            <th scope="row">3</th>
                            <td>Abc.com/contact</td>
                            <td>Contact ABC Company</td>
                          </tr>
                        </tbody>
                      </table>

                      <span class="text-start d-block">External Links</span>
                      <table class="table table-striped">
                        <thead>
                          <tr>
                            <th scope="col">S#</th>
                            <th scope="col">Links</th>
                            <th scope="col">Text</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">1</th>
                            <td>fb.com/abc</td>
                            <td>ABC FB</td>
                          </tr>
                          <tr>
                            <th scope="row">2</th>
                            <td>insta.com/abc</td>
                            <td>ABC Instagram</td>
                          </tr>
                          <tr>
                            <th scope="row">3</th>
                            <td>linkedin.com/abc</td>
                            <td>ABC Company</td>
                          </tr>
                        </tbody>
                      </table>

                      <span class="text-start d-block">Page Content</span>
                      <div class="input-group mb-3">
                          <textarea type="text" rows="15"  class="form-control" placeholder="This is dummy content for this page and we are writing the content with using keywords." aria-label="" aria-describedby="button-addon1"></textarea>
                          <div id="froala"></div>
                         
                      </div>
                      <span class="text-start d-block">Pingdom Speed Test</span>
                      <table class="table table-striped">
                        <thead>
                          <tr>
                            <th scope="col">Page Size</th>
                            <th scope="col">Page Speed</th>
                            <th scope="col">Page Request</th>
                            <th scope="col">Score</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td >1 MB</td>
                            <td>2.0 Sec</td>
                            <td>70</td>
                            <td>B</td>
                          </tr>
                        </tbody>
                      </table>
                      <a class="text-end d-block" href="#">More Details</a>

                      <span class="text-start d-block">Google Page Speed Insights (90 is green mark)</span>
                      <table class="table table-striped">
                        <thead>
                          <tr>
                            <th scope="col">Page Size</th>
                            <th scope="col">Performance</th>
                            <th scope="col">Accessibility</th>
                            <th scope="col">Best Practice</th>
                            <th scope="col">SEO</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td >Mobile</td>
                            <td>50</td>
                            <td>50</td>
                            <td>70</td>
                            <td>30</td>
                          </tr>
                          <tr>
                            <td >Desktop</td>
                            <td>20</td>
                            <td>80</td>
                            <td>89</td>
                            <td>56</td>
                          </tr>
                        </tbody>
                      </table>
                      <a class="text-end d-block" href="#">More Details</a>

                      <span class="text-start d-block">Is this Page added to Sitemap?</span>
                      <table class="table table-striped">
                        <tbody>
                          <tr>
                            <td >Yes</td>
                            <td>No</td>
                            <td><button class="btn btn-outline-secondary" type="button" id="button-addon2">Submit Page in Sitemap</button></td>
                          </tr>
                        </tbody>
                      </table>

                      <span class="text-start d-block">Is this Page indexed?</span>
                      <table class="table table-striped">
                        <tbody>
                          <tr>
                            <td >Yes</td>
                            <td>No</td>
                            <td><a class="text-end d-inline-block" href="#">More Details</a></td>
                          </tr>
                        </tbody>
                      </table>
                    


                      <span class="text-start d-block">How many backlinks for this page?</span>
                      <table class="table table-striped">
                        <thead>
                          <tr>
                            <th scope="col">Total Backlinks</th>
                            <th scope="col">Do-Follow</th>
                            <th scope="col">No-Follow</th>
                            <th scope="col"></th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td >10 Backlinks</td>
                            <td>7 Do-Follow</td>
                            <td>3 No-Follow</td>
                            <td><a class="text-end d-inline-block" href="#">More Details</a></td>
                          </tr>
                        </tbody>
                      </table>

                      <span class="text-start d-block">GA & GSC Check</span>

                      <table class="table table-striped">
                        <thead>
                          <tr>
                            <th scope="col">GA</th>
                            <th scope="col">GSC</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td >Yes</td>
                            <td>No</td>
                          </tr>
                        </tbody>
                      </table>
                      <span class="text-start d-block">Page Visitor Count</span>

                      <canvas id="myChart" style="width:100%;max-width:600px"></canvas>

                      <span class="text-start d-block">Readability Score (Grammar, Duplicate, Heading, Internal links, Sub-heading, Images, don’t use above 20 words in one sentence.)</span>
                      <table class="table table-striped">
                        <tbody>
                          <tr>
                            <td >50</td>
                            <td><a class="text-end d-inline-block" href="#">More Details</a></td>
                          </tr>
                        </tbody>
                      </table>
                    

                      <span class="text-start d-block">Keyword in the first Paragraph</span>
                      <table class="table table-striped">
                        <tbody>
                          <tr>
                            <td >Yes</td>
                            <td>No</td>
                          </tr>
                        </tbody>
                      </table>

                      <span class="text-start d-block">How many Sentences are long then 20 words.</span>
                      <table class="table table-striped">
                        <tbody>
                          <tr>
                            <td >90</td>
                          </tr>
                        </tbody>
                      </table>

                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 mt-4 mb-4">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3 col-sm-6">
                                <div class="progress blue">
                                    <span class="progress-left">
                                      <span class="progress-bar"></span>
                                    </span>
                                    <span class="progress-right">
                                        <span class="progress-bar"></span>
                                    </span>
                                    <div class="progress-value">90%</div>
                                </div>
                            </div>
                    </div>
                </div>
                <span class="text-start d-block mt-4 mb-4">SEO GRADE</span>
                      <table class="table table-striped">
                        <tbody>
                          <tr>
                            <td >A</td>
                            <td>Performance 90</td>
                          </tr>
                        </tbody>
                      </table>

                      <p style="font-size: 14px" class="d-inline-block"> <i style="color:green;" class="fas fa-check"></i> Seo Title length is 51 characters. It is in between 30 to 60</p>
            </div>
        </div>

    </body>
    </html>

    <script>
        var xValues = ["New Visitor", "Existing"];
        var yValues = [60, 40];
        var barColors = [
          "#b91d47",
          "#00aba9"
        ];
        
        new Chart("myChart", {
          type: "pie",
          data: {
            labels: xValues,
            datasets: [{
              backgroundColor: barColors,
              data: yValues
            }]
          },
          options: {
            title: {
              display: true,
              text: "Page Visitor Count"
            }
          }
        });
        </script>
        