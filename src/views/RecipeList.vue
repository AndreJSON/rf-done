<template>
  <div>
    <v-row>
      <v-col>
        
      </v-col>
    </v-row>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import { useUiStore } from "@/stores/uiStore";
import { useRecipeStore } from "@/stores/recipeStore";

export default defineComponent({
  watch: {
    queryStringId: {
      handler() {
        console.log(this.queryStringId);
      },
      immediate: true,
    }
  },
  computed: {
    queryStringId(): number | undefined {
      let id: number | undefined = Number(this.$route.query.id);
      if (isNaN(id) || !id) {
        id = undefined;
      }
      return id;
    }
  },
  mounted() {
    this.recipeStore.fetchRecipes();
  },
  setup() {
    return { uiStore: useUiStore(), recipeStore: useRecipeStore() };
  },
  data: (): {
    loading: boolean;
  } => ({
    loading: false,
  }),
});
</script>