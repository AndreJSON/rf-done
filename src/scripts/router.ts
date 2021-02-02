import Vue from "vue";
import Router from "vue-router";

import PageNotFound from "@/views/PageNotFound.vue";
import RecipeList from "@/views/RecipeList.vue";

Vue.use(Router);

const router = new Router({
  mode: "history",
  base: process.env.BASE_URL,
  routes: [
    {
      path: "*",
      component: PageNotFound,
      name: "404"
    },
    {
      path: "/",
      component: RecipeList
    }
  ]
});

router.beforeEach((to, from, next) => {
  next();
});

export default router;
