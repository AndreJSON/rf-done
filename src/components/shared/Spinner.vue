<template>
  <v-row justify="center">
    <v-progress-circular
      color="purple lighten-2"
      :size="size"
      :width="size / 12"
      indeterminate
    >
    </v-progress-circular>
  </v-row>
</template>

<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  props: {
    size: Number
  }
});
</script>
