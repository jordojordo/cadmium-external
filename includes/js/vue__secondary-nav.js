var app = new Vue({
  el: "#secondary-nav",
  data() {
    return {
      secondaryNavContent: {},
      loading: false,
    };
  },
  beforeCreate() {
    this.loading = true;
    // jsonURL declared before secondary-nav-foot.asp include
    fetch(jsonURL != undefined ? jsonURL : null)
      .then((response) => response.json())
      .then((data) => (this.secondaryNavContent = data))
      .then(() => (this.loading = false));
  },
});
