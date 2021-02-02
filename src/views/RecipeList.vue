<template>
  <div>
    <v-list>
      <div v-for="recipe in recipes" :key="recipe._id">
        <v-list-item two-line @click="recipeClicked(recipe)">
          <v-list-item-content>
            <v-list-item-title>{{ recipe.title }}</v-list-item-title>
            <v-list-item-subtitle>{{
              formatTags(recipe.tags)
            }}</v-list-item-subtitle>
          </v-list-item-content>
        </v-list-item>
        <v-divider />
      </div>
    </v-list>
    <v-dialog
      v-model="recipeDialog"
      persistent
      scrollable
      content-class="full-height"
    >
      <RecipeDialog />
    </v-dialog>
  </div>
</template>

<style scoped>
.theme--light.v-list {
  background: #f7f7f7;
}
</style>

<script lang="ts">
import Vue from "vue";
import { Recipe } from "@/scripts/types.ts";
import RecipeDialog from "@/components/recipe/RecipeDialog.vue";

export default Vue.extend({
  components: {
    RecipeDialog
  },
  watch: {
    "$route.query": {
      handler(query, oldQuery) {
        if (query !== undefined && query.recipe !== undefined) {
          this.recipeDialog = true;
        } else {
          this.recipeDialog = false;
          this.$store.dispatch("fetchRecipes");
        }
      },
      immediate: true
    }
  },
  computed: {
    recipes(): Recipe[] {
      return this.$store.getters.recipes.filter((r: Recipe) =>
        this.recipeVisible(r)
      );
    },
    filter(): string {
      return this.$store.getters.filter;
    }
  },
  methods: {
    formatTags(tags: string[]) {
      let res = "";
      for (let tag of tags) {
        res += `${tag}, `;
      }
      if (res.length > 0) {
        res = res.slice(0, -2);
      }
      return res.toUpperCase();
    },
    recipeVisible(recipe: Recipe): boolean {
      if (!recipe.visible) {
        return false;
      }
      if (this.filter === "") {
        return true;
      }
      let stringsToSearch = [recipe.title, ...recipe.tags];
      for (let s of stringsToSearch) {
        if (s.toUpperCase().includes(this.filter.toUpperCase())) {
          return true;
        }
      }
      return false;
    },
    recipeClicked(recipe: Recipe) {
      this.$router.push({ path: "/", query: { recipe: recipe._id } });
    }
  },
  data: (): {
    recipeDialog: boolean;
  } => ({
    recipeDialog: false
  })
});
</script>
