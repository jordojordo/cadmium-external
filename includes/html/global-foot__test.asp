<!-- #include virtual="global/includes/html/main-nav__foot.asp" -->

<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"
></script>

<script type="text/javascript" src="/global/includes/js/intersectionObserver.js"></script>

<script type="text/javascript" src="/global/includes/js/app__test.js"></script>

<!-- Needed for Pagination classes -->
<script>
  let pageNav = document.getElementById("pageNav");
  let noRecord = document.getElementById("noRecord");
  if (typeof(noRecord) != 'undefined' && noRecord != null) {
    pageNav.classList.add("d-none");
  };
</script>