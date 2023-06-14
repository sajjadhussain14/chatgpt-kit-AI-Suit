// ChatGPT   Integration
// Version : 1.0.2
// author: Sajjad Hussain

let maxTokens = 2000;
let model = "text-davinci-003";
let mode = "completions";
let temperature = 0.7;
let maxLen = 2048;
let topP = 1;
let frequencyPenalty = 0;
let presencePanalty = 0;

let blogFor = "local";

// CHANGE TEMPERATURE CONTROLS
const changeTemperature = () => {
  temperature = document.getElementById("gpt-temperature").value;
  document.getElementById("out-temperature").innerHTML = temperature;
};

// CHANGE MAXIMUM LENGTH CONTROLS
const changeMaxLen = () => {
  maxLen = document.getElementById("gpt-maxLen").value;
  document.getElementById("out-maxLen").innerHTML = maxLen;
};

//CHANGE TOP P cONTRAOLS
const changeTopP = () => {
  topP = document.getElementById("gpt-topP").value;
  document.getElementById("out-topP").innerHTML = topP;
};

// CHNAGE FREQUENCE PENALTY CONTROLS
const changeFrequency = () => {
  frequencyPenalty = document.getElementById("gpt-frequency").value;
  document.getElementById("out-frequency").innerHTML = frequencyPenalty;
};

// CHANGE PRESENCE PENALTY CONTROLS
const changePresence = () => {
  presencePanalty = document.getElementById("gpt-presence").value;
  document.getElementById("out-presence").innerHTML = presencePanalty;
};

// SHOW LOADER
const showLoder = () => {
  document.getElementById("spinner").style.visibility = "visible";
  document.getElementById("spinner").style.opacity = 1;
};

// HIDE LOADER
const hideLoder = () => {
  document.getElementById("spinner").style.visibility = "hidden";
  document.getElementById("spinner").style.opacity = 0;
};

// GENERATE DATA REQUEST
const generateProductData = () => {
  showLoder();
  const targets = [
    "title",
    "description",
    "comma separated keywords",
    "long description",
    "short description",
  ];

  let productName = document.getElementById("product-prompt").value.trim();
  if (productName == "") {
    alert("Please enter a product name");
    hideLoder();
    return;
  }

  // RESET IMPUTS BEFORE REQUEST
  targets.map((param) => {
    let paramID = param.replaceAll(" ", "-").trim();
    document.getElementById(paramID).innerHTML = "";
  });

  // ITERATE FOR ALL FIELDS
  targets.map((param) => {
    let paramID = param.replaceAll(" ", "-").trim();
    let textPosition = 0;
    let speed = 5;

    // CONSTRUCTING PROMPT
    let prompts = "";
    let agent = "Prompt: \n";
    agent += agent +=
      "You are an SEO expert. create below for online shop website. \n";

    let action =
      " dont reply anything, just  generate " +
      " '" +
      param.toUpperCase() +
      "' ";
    let intent = "";

    let hardRules = "";
    if (param == "title") {
      hardRules =
        "Please generate title within 90 characters and dont use heading title: ";
    } else if (param == "description") {
      hardRules =
        "Please generate description within 160 characters and please dont use words Description: ";
    } else if (param == "comma separated keywords") {
      hardRules = " generate only 5 keywords";
    } else if (param == "short description") {
      hardRules = "";
    } else if (param == "long description") {
      hardRules = "";
    }

    let adittionalInfo = "";
    try {
      adittionalInfo = document.getElementById("a" + paramID).value;
    } catch (err) {}
    if (adittionalInfo && adittionalInfo.trim().length > 0) {
      adittionalInfo = " and also in " + param + " " + adittionalInfo + " ";
      prompts =
        agent +
        action +
        intent +
        " of product " +
        productName +
        adittionalInfo +
        hardRules;
    } else {
      prompts =
        agent + action + intent + " of product " + productName + hardRules;
    }

    // REQUEST SETTINGS
    let settings = {
      async: true,
      crossDomain: true,
      url: "src/components/productData.cfc?method=generateData",
      method: "POST",
      data: {
        prompts: prompts,
        maxTokens: maxTokens,
        model: model,
        mode: mode,
        temperature: temperature,
        maxLen: maxLen,
        topP: topP,
        frequencyPenalty: frequencyPenalty,
        presencePanalty: presencePanalty,
      },
    };

    // MAKING REQUEST WITH PARAMS
    $.ajax(settings).done(function (response) {
      // START TYPE WRITE FUNCTION
      const typeWriter = () => {
        let res = [];
        res.push(response);
        let spanID = paramID + "span";
        document.getElementById(paramID).innerHTML =
          res[0].substring(0, textPosition) +
          `<span id=${spanID} class='blinkMe'>\u25ae</span>`;
        if (textPosition++ < res[0].length) {
          setTimeout(typeWriter, speed);
        } else {
          setTimeout(() => {
            try {
              document.getElementById(spanID).remove();
            } catch (err) {}
          }, 3000);
        }
      };
      // END TYPE WRITE FUNCTION
      response = response.replaceAll('"', "").trim();
      try {
        typeWriter();
      } catch (err) {
        typeWriter();
      }
      hideLoder();
    });
  });
};

const generateCategoryData = () => {
  showLoder();
  const targets = [
    "title",
    "description",
    "comma separated keywords",
    "short description",
    "long description",
  ];

  let productName = document.getElementById("category-prompt").value.trim();
  if (productName == "") {
    alert("Please enter a product name");
    hideLoder();
    return;
  }

  // RESET IMPUTS BEFORE REQUEST
  targets.map((param) => {
    let paramID = param.replaceAll(" ", "-").trim();
    document.getElementById(paramID).innerHTML = "";
  });

  // ITERATE FOR ALL FIELDS
  targets.map((param) => {
    let paramID = param.replaceAll(" ", "-").trim();
    let textPosition = 0;
    let speed = 5;

    // CONSTRUCTING PROMPT
    let prompts = "";
    let agent = "Prompt: \n";
    agent += "You are an SEO expert. create below for online shop website. \n";

    let action =
      " dont reply anything, just  generate " +
      " '" +
      param.toUpperCase() +
      "' ";

    let hardRules = "";
    if (param == "title") {
      hardRules =
        "Please generate title within 90 characters and dont use heading title: ";
    } else if (param == "description") {
      hardRules =
        "Please generate description within 160 characters and please dont use words Description: ";
    } else if (param == "comma separated keywords") {
      hardRules = " generate only 5 keywords";
    } else if (param == "short description") {
      hardRules = "";
    } else if (param == "long description") {
      hardRules = "";
    }

    let intent = "";
    let adittionalInfo = "";
    try {
      adittionalInfo = document.getElementById("a" + paramID).value;
    } catch (err) {}

    if (adittionalInfo && adittionalInfo.trim().length > 0) {
      adittionalInfo =
        " and also in " + param + " " + adittionalInfo + " " + hardRules;
      prompts =
        agent +
        action +
        intent +
        " of category " +
        productName +
        adittionalInfo;
    } else {
      prompts =
        agent +
        action +
        intent +
        " of category " +
        productName +
        " " +
        hardRules;
    }

    // REQUEST SETTINGS
    let settings = {
      async: true,
      crossDomain: true,
      url: "src/components/productData.cfc?method=generateData",
      method: "POST",
      data: {
        prompts: prompts,
        maxTokens: maxTokens,
        model: model,
        mode: mode,
        temperature: temperature,
        maxLen: maxLen,
        topP: topP,
        frequencyPenalty: frequencyPenalty,
        presencePanalty: presencePanalty,
      },
    };

    // MAKING REQUEST WITH PARAMS
    $.ajax(settings).done(function (response) {
      // START TYPE WRITE FUNCTION
      const typeWriter = () => {
        let res = [];
        res.push(response);
        let spanID = paramID + "span";
        document.getElementById(paramID).innerHTML =
          res[0].substring(0, textPosition) +
          `<span id=${spanID} class='blinkMe'>\u25ae</span>`;
        if (textPosition++ < res[0].length) {
          setTimeout(typeWriter, speed);
        } else {
          setTimeout(() => {
            document.getElementById(spanID).remove();
          }, 3000);
        }
      };
      // END TYPE WRITE FUNCTION
      response = response.replaceAll('"', "").trim();
      try {
        typeWriter();
      } catch (err) {
        typeWriter();
      }
      hideLoder();
    });
  });
};

// REVIEWS FEEDBACK REQUEST

const reviewsFeedback = () => {
  showLoder();
  let reviewtxt = document.getElementById("reviews-prompt").value.trim();
  if (reviewtxt == "") {
    alert("Please enter a product name");
    hideLoder();
    return;
  }
  let textPosition = 0;
  let speed = 5;
  // CONSTRUCTING PROMPT
  let prompts = "";
  let agent = "Prompt: \n";
  agent += "You are a best professional content writer. \n";

  let action =
    " dont reply anything, just  generate Review Feedback reply for the review" +
    " '" +
    reviewtxt +
    "' ";

  let intent = "";

  prompts = agent + action;

  // REQUEST SETTINGS
  let settings = {
    async: true,
    crossDomain: true,
    url: "src/components/productData.cfc?method=reviewsFeedback",
    method: "POST",
    data: {
      prompts: prompts,
      maxTokens: maxTokens,
      model: model,
      mode: mode,
      temperature: temperature,
      maxLen: maxLen,
      topP: topP,
      frequencyPenalty: frequencyPenalty,
      presencePanalty: presencePanalty,
    },
  };

  // MAKING REQUEST WITH PARAMS
  $.ajax(settings).done(function (response) {
    // START TYPE WRITE FUNCTION
    const typeWriter = () => {
      let res = [];
      res.push(response);
      let spanID = "review-blinker";
      document.getElementById("review-feedback-holder").innerHTML =
        res[0].substring(0, textPosition) +
        `<span id=${spanID} class='blinkMe'>\u25ae</span>`;
      if (textPosition++ < res[0].length) {
        setTimeout(typeWriter, speed);
      } else {
        setTimeout(() => {
          document.getElementById(spanID).remove();
        }, 3000);
      }
    };
    // END TYPE WRITE FUNCTION
    response = response.replaceAll('"', "").trim();
    try {
      typeWriter();
    } catch (err) {
      typeWriter();
    }
    hideLoder();
  });
};

const emailResponsderRequest = () => {
  showLoder();
  let emailtxt = document.getElementById("received-email").value.trim();
  let promptTxt = document.getElementById("received-email-prompt").value.trim();
  if (emailtxt == "" || promptTxt == "") {
    alert("The email or propmt is missing");
    hideLoder();
    return;
  }
  let textPosition = 0;
  let speed = 5;
  // CONSTRUCTING PROMPT
  let prompts = "";
  let agent = "Prompt: \n";
  agent += "You are a best professional  content writer. \n";

  let action =
    " dont reply anything, just  generate a very professional and a high quality detailed email reply. Below is the below email I received from someone" +
    " '" +
    emailtxt +
    "' " +
    "write reply email using my feedback below " +
    " '" +
    promptTxt +
    " '";

  let intent = "";

  prompts = agent + action;

  // REQUEST SETTINGS
  let settings = {
    async: true,
    crossDomain: true,
    url: "src/components/productData.cfc?method=emailResponser",
    method: "POST",
    data: {
      prompts: prompts,
      maxTokens: maxTokens,
      model: model,
      mode: mode,
      temperature: temperature,
      maxLen: maxLen,
      topP: topP,
      frequencyPenalty: frequencyPenalty,
      presencePanalty: presencePanalty,
    },
  };

  // MAKING REQUEST WITH PARAMS
  $.ajax(settings).done(function (response) {
    // START TYPE WRITE FUNCTION
    const typeWriter = () => {
      let res = [];
      res.push(response);
      let spanID = "emailReplyBlinker";
      document.getElementById("email-reply-holder").innerHTML =
        res[0].substring(0, textPosition) + `\u25ae`;
      if (textPosition++ < res[0].length) {
        setTimeout(typeWriter, speed);
      } else {
        setTimeout(() => {
          let txt = document.getElementById("email-reply-holder").innerHTML;
          let newTxt = txt.replace("\u25ae", "");
          document.getElementById("email-reply-holder").innerHTML = newTxt;
        }, 3000);
      }
    };
    // END TYPE WRITE FUNCTION
    response = response.replaceAll('"', "").trim();
    try {
      typeWriter();
    } catch (err) {
      typeWriter();
    }
    hideLoder();
  });
};

const emailMarketingRequest = () => {
  showLoder();
  let promptTxt = document.getElementById("prompt-text").value.trim();
  if (promptTxt == "") {
    alert("The propmt is missing");
    hideLoder();
    return;
  }
  let textPosition = 0;
  let speed = 5;
  // CONSTRUCTING PROMPT
  let prompts = "";
  let agent = "Prompt: \n";
  agent += "write a best professional email marketing content for someone \n";

  let action =
    " dont reply anything, dont mention you as professional email marketing expert, just  generate a very professional and a high quality detailed email on " +
    " '" +
    promptTxt +
    "' ";
  let intent = "";

  prompts = agent + action;

  // REQUEST SETTINGS
  let settings = {
    async: true,
    crossDomain: true,
    url: "src/components/productData.cfc?method=emailResponser",
    method: "POST",
    data: {
      prompts: prompts,
      maxTokens: maxTokens,
      model: model,
      mode: mode,
      temperature: temperature,
      maxLen: maxLen,
      topP: topP,
      frequencyPenalty: frequencyPenalty,
      presencePanalty: presencePanalty,
    },
  };

  // MAKING REQUEST WITH PARAMS
  $.ajax(settings).done(function (response) {
    // START TYPE WRITE FUNCTION
    const typeWriter = () => {
      let res = [];
      res.push(response);
      let spanID = "emailMarketingBlinker";
      document.getElementById("email-marketing-content-holder").innerHTML =
        res[0].substring(0, textPosition) + `\u25ae`;
      if (textPosition++ < res[0].length) {
        setTimeout(typeWriter, speed);
      } else {
        setTimeout(() => {
          let txt = document.getElementById(
            "email-marketing-content-holder"
          ).innerHTML;
          let newTxt = txt.replace("\u25ae", "");
          document.getElementById("email-marketing-content-holder").innerHTML =
            newTxt;
        }, 3000);
      }
    };
    // END TYPE WRITE FUNCTION
    response = response.replaceAll('"', "").trim();
    try {
      typeWriter();
    } catch (err) {
      typeWriter();
    }
    hideLoder();
  });
};

// Social Content Switcher

const socialContentSwiter = (platform) => {
  let switchValue = document.getElementById(platform + "Switch").checked;

  if (switchValue == true) {
    document.getElementById(platform + "-holder").classList.remove("d-none");
  } else {
    document.getElementById(platform + "-holder").classList.add("d-none");
  }
};

// ON KEY PRESS EVENTS
try {
  // CALLING API ON ENTER
  let productPromptBox = document.getElementById("product-prompt");
  productPromptBox.addEventListener("keyup", (e) => {
    if (e.key === "Enter") {
      if (e.shiftKey) {
      } else {
        generateProductData();
      }
    }
  });
} catch (err) {}

try {
  let categoryPromptBox = document.getElementById("category-prompt");
  categoryPromptBox.addEventListener("keyup", (e) => {
    if (e.key === "Enter") {
      if (e.shiftKey) {
      } else {
        generateCategoryData();
      }
    }
  });
} catch (err) {}

try {
  let categoryPromptBox = document.getElementById("reviews-prompt");
  categoryPromptBox.addEventListener("keyup", (e) => {
    if (e.key === "Enter") {
      if (e.shiftKey) {
      } else {
        reviewsFeedback();
      }
    }
  });
} catch (err) {}

const productRecommandations = () => {
  showLoder();
  setTimeout(() => {}, 2000);
  alert("The record of This ID does not exist!");
  hideLoder();
};

const generateSocialMediaContentRequest = () => {
  showLoder();
  const targets = ["facebook", "twitter"];

  let initialPropmt = document.getElementById("prompt").value.trim();
  if (initialPropmt == "") {
    alert("Please enter a prompt");
    hideLoder();
    return;
  }

  // RESET IMPUTS BEFORE REQUEST
  targets.map((param) => {
    let paramID = param.replaceAll(" ", "-").trim();
    document.getElementById(paramID + "-content").innerHTML = "";
  });

  // ITERATE FOR ALL FIELDS
  targets.map((param) => {
    let paramID = param.replaceAll(" ", "-").trim();
    let textPosition = 0;
    let speed = 5;

    // CONSTRUCTING PROMPT
    let prompts = "";
    let agent = "Prompt: \n";
    agent += agent += "You are an expert content writer for social media. \n";

    let action =
      " dont reply anything, just  generate a post for " +
      " '" +
      param.toUpperCase() +
      "' ";
    let intent = "";

    let hardRules =
      "Keep maximum length of text and other rules for all platforms. ";
    prompts =
      agent + action + intent + " of product " + initialPropmt + hardRules;

    // REQUEST SETTINGS
    let settings = {
      async: true,
      crossDomain: true,
      url: "src/components/socialMedia.cfc?method=generateSocialMediaContent",
      method: "POST",
      data: {
        prompts: prompts,
        maxTokens: maxTokens,
        model: model,
        mode: mode,
        temperature: temperature,
        maxLen: maxLen,
        topP: topP,
        frequencyPenalty: frequencyPenalty,
        presencePanalty: presencePanalty,
      },
    };

    // MAKING REQUEST WITH PARAMS
    $.ajax(settings).done(function (response) {
      // START TYPE WRITE FUNCTION
      const typeWriter = () => {
        let res = [];
        res.push(response);
        let spanID = paramID + "span";
        document.getElementById(paramID + "-content").innerHTML =
          res[0].substring(0, textPosition) + `\u25ae`;
        if (textPosition++ < res[0].length) {
          setTimeout(typeWriter, speed);
        } else {
          setTimeout(() => {
            try {
              let txt = document.getElementById(paramID + "-content").innerHTML;
              let newTxt = txt.replace("\u25ae", "");
              document.getElementById(paramID + "-content").innerHTML = newTxt;
            } catch (err) {}
          }, 3000);
        }
      };
      // END TYPE WRITE FUNCTION
      response = response.replaceAll('"', "").trim();
      try {
        typeWriter();
      } catch (err) {
        typeWriter();
      }
      hideLoder();
    });
  });
};

const generateBlogDataRequest = () => {
  showLoder();
  const targets = [
    "title",
    "description",
    "comma separated keywords",
    "content",
  ];

  let blogPrompt = document.getElementById("blog-prompt").value.trim();
  if (blogPrompt == "") {
    alert("Please enter the Title First");
    hideLoder();
    return;
  }

  // RESET IMPUTS BEFORE REQUEST
  targets.map((param) => {
    let paramID = param.replaceAll(" ", "-").trim();
    document.getElementById(paramID).innerHTML = "";
  });

  // ITERATE FOR ALL FIELDS
  targets.map((param) => {
    let paramID = param.replaceAll(" ", "-").trim();
    let textPosition = 0;
    let speed = 5;

    // CONSTRUCTING PROMPT
    let prompts = "";
    let agent = "Prompt: \n";

    let blogType = "";

    if (blogFor == "local") {
      blogFor = "";
    }
    blogType = blogFor;

    let keyPoints = "";
    keyPoints = document.getElementById("key-points").value;
    keyPoints = ` create blog according to the Key Points as ' ${keyPoints} ' `;
    agent +=
      agent += `You are an expert Content write. write professionally below for a ${blogType} blog . \n`;

    let action =
      " dont reply anything, just  generate " +
      " '" +
      param.toUpperCase() +
      "' ";
    let intent = "";
    let keywordsNumb = document.getElementById("keywords-numb").value;
    if (!keywordsNumb || keywordsNumb.trim() == "") {
      keywordsNumb = 5;
    }

    let h1Numb = document.getElementById("h1-numb").value;
    let h2Numb = document.getElementById("h2-numb").value;
    let h3Numb = document.getElementById("h3-numb").value;
    let h4Numb = document.getElementById("h4-numb").value;
    let h5Numb = document.getElementById("h5-numb").value;
    let h6Numb = document.getElementById("h6-numb").value;
    let maxLen = 1000;
    maxLen = document.getElementById("max-Len").value;

    let hardRules = "";
    if (param == "title") {
      hardRules =
        "Please generate title within 90 characters and dont use heading title: ";
    } else if (param == "description") {
      hardRules =
        "Please generate description within 160 characters and please dont use words Description: ";
    } else if (param == "comma separated keywords") {
      hardRules = ` generate only ${keywordsNumb} keywords. genrate keywords according to google seo rules`;
    } else if (param == "content") {
      hardRules = `Please generate blog article with min 300 words and maximum words ${maxLen}. use H1 ${h1Numb} time, H2 ${h2Numb} time, H3 ${h3Numb} time, H4 ${4} time, H5 ${h5Numb} time, H6 ${h6Numb} time. Morever, H1 will be main heading, h2 will be sub heading and h3 will be subheading of h2 and so on `;
    }

    prompts =
      agent +
      action +
      " for  blog with Title " +
      blogPrompt +
      hardRules +
      keyPoints;

    // REQUEST SETTINGS
    let settings = {
      async: true,
      crossDomain: true,
      url: "src/components/productData.cfc?method=generateBlogData",
      method: "POST",
      data: {
        prompts: prompts,
        maxTokens: maxTokens,
        model: model,
        mode: mode,
        temperature: temperature,
        maxLen: maxLen,
        topP: topP,
        frequencyPenalty: frequencyPenalty,
        presencePanalty: presencePanalty,
      },
    };

    // MAKING REQUEST WITH PARAMS
    $.ajax(settings).done(function (response) {
      // START TYPE WRITE FUNCTION
      const typeWriter = () => {
        let res = [];
        res.push(response);
        let spanID = paramID + "span";
        document.getElementById(paramID).innerHTML =
          res[0].substring(0, textPosition) + `\u25ae`;
        if (textPosition++ < res[0].length) {
          setTimeout(typeWriter, speed);
        } else {
          setTimeout(() => {
            try {
              let txt = document.getElementById(paramID).innerHTML;
              let newTxt = txt.replace("\u25ae", "");
              document.getElementById(paramID).innerHTML = newTxt;
            } catch (err) {}
          }, 3000);
        }
      };
      // END TYPE WRITE FUNCTION
      response = response.replaceAll('"', "").trim();
      try {
        typeWriter();
      } catch (err) {
        typeWriter();
      }
      hideLoder();
    });
  });
};

const setBlogFor = (value) => {
  alert();
  let postEnv = document.getElementById("post-env");
  if (value == "local") {
    blogFor = "local";
    try {
      postEnv.classList.remove("d-none");
    } catch (err) {}
    postEnv.classList.add("d-block");
  } else {
    blogFor = "guest";
    try {
      postEnv.classList.remove("d-block");
    } catch (err) {}

    postEnv.classList.add("d-none");
  }
};
