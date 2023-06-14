let currentSelectedNetwork = "fb";

const connectToFB = (status) => {
  let settings = {
    async: true,
    crossDomain: true,
    xhrFields: {
      withCredentials: true,
    },

    url: "src/components/facebook/connect.cfc?method=redirecteMe",
    method: "POST",
    data: {
      status: status,
    },
  };

  $.ajax(settings).done(function (rURL) {
    console.log(rURL);
    window.location = rURL;
  });
};

const postToFB = () => {
  if (currentSelectedNetwork == "fb") {
    let content = document.getElementById("facebook-content").value;

    if (content.trim() != "") {
      showSocialLoader();

      let settings = {
        async: true,
        crossDomain: true,
        xhrFields: {
          withCredentials: true,
        },

        url: "src/components/facebook/post.cfc?method=postOnFB",
        method: "POST",
        data: {
          message: content,
        },
      };

      $.ajax(settings).done(function (response) {
        let res = JSON.parse(response);
        hideLoder();

        if (res.Statuscode == "200 OK") {
          alert("Posted Successfully");
          document.getElementById("facebook-content").value = "";
          hideSocialLoader();
        } else {
          alert("Post Failed");
        }
      });
    } else {
      alert("There is not Content Added to Post");
    }
  }
};

const setNetwork = (network) => {
  currentSelectedNetwork = network;
};

const showSocialLoader = () => {
  let loaderContent = `<div class="spinner-grow text-primary" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-grow text-secondary" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-grow text-success" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
`;
  document.getElementById("social-poster").innerHTML = loaderContent;
};

const hideSocialLoader = () => {
  document.getElementById("social-poster").innerHTML = "Post Now";
};
