interface JQuery {
  materialSelect(): JQuery;
}

// Make script links
const scriptLoader = (path: string, callback?: Function | null) => {
  let script: HTMLScriptElement = document.createElement("script");
  script.type = "text/javascript";
  script.async = true;
  script.src = path;
  script.onload = function() {
    if (typeof callback == "function") {
      callback();
    } else {
      return false;
    }
  };
  try {
    let scriptOne: HTMLScriptElement = document.getElementsByTagName(
      "script"
    )[0];
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
  function() {
    $(document).ready(function() {
      $(".mdb-select").materialSelect();
    });
  }
);

scriptLoader("https://www.google.com/recaptcha/api.js");

scriptLoader("https://kit.fontawesome.com/cd347917e9.js");

const classAdd = (hashElement: string, className: string) => {
  let elementSource = <HTMLInputElement>document.getElementById(hashElement);
  if (!elementSource) {
    return false;
  } else {
    elementSource.classList.add(className);
  }
};

window.onload = () => {
  classAdd("7ddf32e17a6ac5ce04a8ecbf782ca509", "d-none");
  classAdd("15bbb9d0bbf25e8d2978de1168c749dc", "d-none");
};

// App overview 'attendee everything platform' section
$(".toggle-section .panel-description")
  .not(".active")
  .hide();
$("body").on("click", ".toggle-links .nav-link", function(i) {
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

// Request Info AJAX
$(function() {
  $("#contactForm").submit(function() {
    var data = $(this).serialize(),
      action = $(this).attr("action"),
      method = $(this).attr("method");

    $("#submitBtn")
      .html(
        '<span id="submitSpinner" class="spinner-border spinner-border-sm mr-2" role="status" aria-hidden="true"></span>Loading...'
      )
      .addClass("disabled");
    $.ajax({
      url: action,
      type: method,
      data: data,
      success: function(data) {
        $("#submitBtn")
          .html("Message Sent!")
          .addClass("bg-success");
      },
      error: function(err) {
        $("#submitBtn")
          .html("reCaptcha Failed")
          .addClass("bg-danger")
        $("#returnMessage")
          .html("Please refresh and try again.")
        console.log(`Recaptcha Error: ${err}`);
      }
    });

    return false; // don't let the form be submitted
  });
});
