<template>
  <v-list lines="one">
    <v-list-item
      v-for="recipe of filteredRecipes"
      :key="recipe.id"
      :title="recipe.title"
      :subtitle="recipe.tags"
      @click="editRecipe(recipe)"
    />
  </v-list>
  <RecipeDialog
    v-if="selectedRecipe"
    :recipe="selectedRecipe"
    @close="closeDialog"
  />
</template>

<style scoped>
.v-list :deep(div) {
  user-select: none !important;
}
</style>

<script lang="ts">
import { defineComponent } from "vue";
import { useUiStore } from "@/stores/uiStore";
import { useRecipeStore } from "@/stores/recipeStore";
import type { Recipe } from "@/scripts/types";
import RecipeDialog from "@/components/RecipeDialog.vue";

export default defineComponent({
  components: {
    RecipeDialog,
  },
  computed: {
    queryStringId(): string | undefined {
      const id = this.$route.query.id;
      if (!id) {
        return undefined;
      }
      return String(id);
    },
    selectedRecipe(): Recipe | undefined {
      return this.recipeStore.recipes.find(
        (r) => r.id.toString() === this.queryStringId
      );
    },
    filteredRecipes(): Recipe[] {
      const filter = this.recipeStore.filter.toLocaleUpperCase();
      return this.recipeStore.recipes.filter(
        (r) =>
          !filter ||
          r.title.toLocaleUpperCase().includes(filter) ||
          r.tags.includes(filter)
      );
    },
  },
  methods: {
    editRecipe(recipe: Recipe) {
      this.$router.push({ path: "/", query: { id: recipe.id } });
    },
    closeDialog() {
      this.$router.push("/");
    },
  },
  mounted() {
    this.recipeStore.fetchRecipes();
  },
  setup() {
    return { uiStore: useUiStore(), recipeStore: useRecipeStore() };
  },
});
</script>
