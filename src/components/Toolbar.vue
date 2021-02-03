<template>
  <v-app-bar app dark elevation="3" clipped-left color="teal lighten-1">
    <v-btn
      v-if="!loading"
      link
      text
      x-large
      @click="openNewRecipeDialog"
      class="narrow"
    >
      <v-icon size="50">mdi-plus</v-icon>
    </v-btn>
    <v-spacer />
    <v-text-field
      v-model="filterText"
      dense
      solo
      light
      hide-details
      clearable
      prepend-inner-icon="mdi-magnify"
      class="search-field"
      @focus="$event.target.select()"
    >
    </v-text-field>
  </v-app-bar>
</template>

<style scoped>
.search-field {
  opacity: 0.35;
  max-width: 180px;
  transition: opacity 0.2s;
  transition: max-width 0.3s;
}
.search-field.v-input--is-focused {
  opacity: 0.5;
  max-width: 250px;
  transition: opacity 0.2s;
  transition: max-width 0.3s;
}
.search-field >>> .v-input__slot {
  height: 44px;
}
.v-btn.narrow.v-size--large {
  min-width: 10px;
  padding-left: 8px;
  padding-right: 8px;
}
</style>

<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  props: {
    loading: Boolean,
    filter: String
  },
  computed: {
    filterText: {
      get(): string {
        return this.filter;
      },
      set(value: string) {
        this.$emit("filterChanged", value);
      }
    }
  },
  methods: {
    openNewRecipeDialog() {
      this.$router.push({
        path: "/",
        query: { recipe: "new", editing: "true" }
      });
    }
  }
});
</script>
