// Make script links
var scriptLoader = function (path, callback) {
  var script = document.createElement("script");
  script.type = "text/javascript";
  script.async = true;
  script.src = path;
  script.referrerpolicy = "strict-origin";
  script.onload = function () {
    if (typeof callback == "function") {
      callback();
    } else {
      return false;
    }
  };
  try {
    var scriptOne = document.getElementsByTagName("script")[0];
    if (!scriptOne) {
      return false;
    } else {
      scriptOne.parentNode.insertBefore(script, scriptOne);
    }
  } catch (e) {
    document.getElementsByTagName("head")[0].appendChild(script);
  }
};
scriptLoader(
  "https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"
);
scriptLoader(
  "https://eventscribe.com/main/includes/css/bootstrap/js/mdb.min.js",
  function () {
    $(document).ready(function () {
      $(".mdb-select").materialSelect();
    });
  }
);

scriptLoader("https://kit.fontawesome.com/cd347917e9.js");

var classAdd = function (hashElement, className) {
  var elementSource = document.getElementById(hashElement);
  if (!elementSource) {
    return false;
  } else {
    elementSource.classList.add(className);
  }
};

window.onload = function () {
  classAdd("7ddf32e17a6ac5ce04a8ecbf782ca509", "d-none");
  classAdd("15bbb9d0bbf25e8d2978de1168c749dc", "d-none");
};

// App overview 'attendee everything platform' section
$(".toggle-section .panel-description").not(".active").hide();
$("body").on("click", ".toggle-links .nav-link", function (i) {
  var $this = $(this),
    id = $this.data("toggle");
  $(".toggle-links .nav-link").removeClass("active");
  $this.addClass("active");
  $(".toggle-section .panel-description, .toggle-section .tab-pane")
    .removeClass("active")
    .hide();
  $(".toggle-section [data-toggleid='" + id + "']")
    .addClass("active")
    .fadeIn();
});
