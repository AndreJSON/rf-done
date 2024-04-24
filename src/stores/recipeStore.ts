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
    }
  },
});
