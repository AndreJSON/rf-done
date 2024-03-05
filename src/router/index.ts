import { createRouter, createWebHistory } from "vue-router";
import RecipeList from "../views/RecipeList.vue";
import PageNotFound from "../views/PageNotFound.vue";

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: "/",
      components: {
        default: RecipeList,
      },
    },
    {
      path: "/:catchAll(.*)",
      components: {
        default: PageNotFound,
      },
    },
  ],
});

export default router;
