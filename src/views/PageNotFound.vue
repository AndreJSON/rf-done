<template>
  <v-container>
    <v-row justify="center" align="center">
      <v-icon size="120" @click="routeTo('/')">
        mdi-emoticon-sad-outline
      </v-icon>
    </v-row>
    <v-row justify="center" align="center">
      <h2>Det blev visst något fel. Denna url leder ingenstans:</h2>
    </v-row>
    <v-row justify="center" align="center">
      <h3>{{ url }}</h3>
    </v-row>
  </v-container>
</template>

<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  computed: {
    url() {
      return window.location.href;
    }
  },
  methods: {
    routeTo(path: string) {
      this.$router.push(path).catch(err => {});
    }
  }
});
</script>
