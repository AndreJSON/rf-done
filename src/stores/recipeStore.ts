import axios from "axios";
import { handleApiError } from "@/scripts/utils";
import { defineStore } from "pinia";

export const useRecipeStore = defineStore({
  id: "recipe",
  state: (): {
    recipes: any[];
  } => ({
    recipes: [],
  }),
  actions: {
    fetchRecipes() {
      axios
        .get("/api/recipes")
        .then(res => {
          console.log(res);
          /*const recipes: Recipe[] = [];
          for (const recipe of res.data.recipes) {
            recipes.push(new Recipe(recipe));
          }
          context.commit("setRecipes", recipes);*/
        })
        .catch(error => {
          handleApiError(error);
        });
    },
    /*storeRecipe: (context, recipe: Recipe) => {
      return axios
        .post("/api/recipe", recipe)
        .then(() => {
          return context.dispatch("fetchRecipes");
        })
        .catch(error => {
          context.dispatch("handleApiError", error);
        });
    },
    storeImage: (context, formData: FormData) => {
      const config = {
        headers: {
          "content-type": "multipart/form-data"
        }
      };
      return axios.post("/api/images", formData, config).catch(error => {
        context.dispatch("handleApiError", error);
      });
    },*/
  },
});
