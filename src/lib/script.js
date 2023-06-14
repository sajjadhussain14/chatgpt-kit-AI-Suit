const pageTransition = () => {
  document.getElementById("container").style.filter = "blur(5px)";
  document.getElementById("loaderIMG").src = "./images/loader2.gif";
  showLoder();
  setTimeout(() => {
    document.getElementById("container").style.filter = "none";
    hideLoder();
  }, 500);
};
