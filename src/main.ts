import "core-js";
import Vue from "vue";
import App from "@/App.vue";
import router from "@/scripts/router.ts";
import store from "@/scripts/store.ts";
import vuetify from "@/plugins/vuetify.ts";
import "overlayscrollbars/css/OverlayScrollbars.css";
import OverlayScrollbars from "overlayscrollbars";
import { OverlayScrollbarsPlugin } from "overlayscrollbars-vue";

Vue.config.productionTip = false;
Vue.use(OverlayScrollbarsPlugin);

new Vue({
  store,
  router,
  vuetify,
  render: h => h(App)
}).$mount("#app");

OverlayScrollbars(document.body, {
  nativeScrollbarsOverlaid: {
    initialize: false
  }
});
