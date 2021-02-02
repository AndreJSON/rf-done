import Vue from "vue";
import Vuex from "vuex";
import { State, Recipe } from "@/scripts/types.ts";
import axios from "axios";

Vue.use(Vuex);

export default new Vuex.Store({
  state: new State(),
  getters: {
    globalError: state => {
      return state.globalError;
    },
    recipes: state => {
      return state.recipes;
    },
    recipe: state => (val: string) => {
      let recipe = state.recipes.find((r: Recipe) => r._id === val);
      if (recipe !== undefined) {
        recipe = new Recipe(recipe);
      }
      return recipe;
    },
    filter: state => {
      return state.filter;
    }
  },
  mutations: {
    setGlobalError: (state, error) => {
      state.globalError = error;
    },
    setRecipes: (state, recipes) => {
      state.recipes = recipes;
    },
    setFilter: (state, filter) => {
      state.filter = filter ? filter : "";
    }
  },
  actions: {
    fetchRecipes: context => {
      return axios
        .get("/api/recipes")
        .then(res => {
          const recipes: Recipe[] = [];
          for (const recipe of res.data.recipes) {
            recipes.push(new Recipe(recipe));
          }
          context.commit("setRecipes", recipes);
        })
        .catch(error => {
          context.dispatch("handleApiError", error);
        });
    },
    storeRecipe: (context, recipe: Recipe) => {
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
    },
    handleApiError: (context, error) => {
      console.log(JSON.stringify(error));
      const formattedMessage =
        error.message +
        " | HTTP-Status: " +
        error.status +
        " | Headers: " +
        JSON.stringify(error.headers);
      context.dispatch("handleBasicError", formattedMessage);
    },
    handleBasicError: (context, message: string) => {
      message = "ERROR: " + message;
      console.log(message);
      context.commit("setGlobalError", {
        show: true,
        message: message,
        closable: true
      });
    }
  }
});
