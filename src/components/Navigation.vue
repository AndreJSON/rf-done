<template>
  <v-app-bar :elevation="2" color="primary">
    <template v-slot:prepend>
      <v-btn
        size="x-large"
        icon="mdi-forest"
        variant="plain"
        color="blue-grey-darken-4"
      />
    </template>
    <v-spacer />
    <v-btn color="blue-grey-darken-3">Nytt objekt</v-btn>
  </v-app-bar>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({});
</script>
