<template>
  <v-app>
    <Navigation />
    <v-main>
      <v-container class="no-padding-top">
        <RouterView />
      </v-container>
    </v-main>
  </v-app>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import Navigation from "@/components/Navigation.vue";
import { useRecipeStore } from "@/stores/recipeStore";
import { useUiStore } from "@/stores/uiStore";

export default defineComponent({
  components: {
    Navigation,
  },
  methods: {
    saveWindowHeight() {
      this.uiStore.setHeight(window.innerHeight);
    },
  },
  mounted() {
    this.saveWindowHeight();
    (window as any).visualViewport.addEventListener(
      "resize",
      this.saveWindowHeight
    );
  },
  setup() {
    return { recipeStore: useRecipeStore(), uiStore: useUiStore() };
  },
});
</script>
