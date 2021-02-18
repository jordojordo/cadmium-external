var app = new Vue({
  el: "#main-nav",
  data() {
    return {
      mainNavContent: {},
      loading: false,
    };
  },
  beforeCreate() {
    this.loading = true;
    fetch(/global/data/main-nav/main-nav.json)
      .then((response) => response.json())
      .then((data) => (this.mainNavContent = data))
      .then(() => (this.loading = false));
  },
});
