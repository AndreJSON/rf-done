<template>
  <v-app id="app">
    <Toolbar
      :loading="loading"
      :filter="filter"
      @filterChanged="filterChanged"
    />
    <v-content>
      <Alert
        v-if="globalError.show"
        :message="globalError.message"
        @hide="hideGlobalError"
      />
      <v-container class="no-padding">
        <router-view v-if="!loading" />
        <Spinner v-else :size="160" id="auth-progress" />
      </v-container>
    </v-content>
  </v-app>
</template>

<style scoped>
@import "./assets/style.css";
#app {
  background: #f7f7f7;
}
#auth-progress {
  margin-top: 150px;
}
</style>

<script lang="ts">
import Vue from "vue";
import Toolbar from "@/components/Toolbar.vue";
import Spinner from "@/components/Spinner.vue";
import Alert from "@/components/Alert.vue";

export default Vue.extend({
  components: {
    Toolbar,
    Spinner,
    Alert
  },
  computed: {
    loading(): boolean {
      return this.$store.getters.recipes.length === 0;
    },
    globalError() {
      return this.$store.getters.globalError;
    },
    filter(): string {
      return this.$store.getters.filter;
    }
  },
  methods: {
    hideGlobalError() {
      this.$store.commit("setGlobalError", { show: false });
    },
    filterChanged(value: string) {
      this.$store.commit("setFilter", value);
    }
  },
  mounted() {
    this.$store.dispatch("fetchRecipes");
  }
});
</script>
