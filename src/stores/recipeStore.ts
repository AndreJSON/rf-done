import axios from "axios";
import { handleApiError } from "@/scripts/utils";
import { defineStore } from "pinia";
import type { Recipe } from "@/scripts/types";

export const useRecipeStore = defineStore({
  id: "recipe",
  state: (): {
    recipes: Recipe[];
    filter: string;
  } => ({
    recipes: [],
    filter: "",
  }),
  actions: {
    fetchRecipes() {
      axios
        .get<{ recipes: Recipe[] }>("/api/recipes")
        .then((res) => {
          this.recipes = res.data.recipes;
        })
        .catch((error) => {
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
