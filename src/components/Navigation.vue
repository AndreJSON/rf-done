<template>
  <v-app-bar :elevation="2" color="primary">
    <v-col cols="10" sm="8" md="6" class="large-padding-left">
      <TextSingle v-model="recipeStore.filter" class="tiny-padding-left" />
    </v-col>
    <v-spacer />
    <v-col cols="auto">
      <v-btn
        size="x-large"
        icon="mdi-plus-thick"
        variant="plain"
        color="blue-grey-darken-4"
      />
    </v-col>
  </v-app-bar>
</template>

<script lang="ts">
import TextSingle from "@/components/TextSingle.vue";
import { useRecipeStore } from "@/stores/recipeStore";
import { defineComponent } from "vue";

export default defineComponent({
  components: {
    TextSingle,
  },
  setup() {
    return { recipeStore: useRecipeStore() };
  },
});
</script>
