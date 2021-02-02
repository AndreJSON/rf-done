<template>
  <v-card scrollable class="confirmation-card">
    <v-card-title class="teal lighten-2">
      <v-row>
        <v-col
          cols="auto"
          class="no-padding-right no-padding-bottom small-padding-top tiny-margin-top"
        >
          {{ title }}
        </v-col>
        <v-spacer />
        <v-col cols="auto" class="no-padding">
          <v-btn text height="50" @click="actions.cancel()">
            <v-icon size="42">mdi-close</v-icon>
          </v-btn>
        </v-col>
      </v-row>
    </v-card-title>
    <v-card-text>{{ body }}</v-card-text>
    <v-card-actions>
      <v-spacer />
      <v-btn
        v-if="dontText"
        color="warning"
        class="senior"
        @click="actions.dont()"
      >
        {{ dontText }}
      </v-btn>
      <v-btn
        v-if="saveText"
        color="success"
        class="senior"
        @click="actions.save()"
      >
        {{ saveText }}
      </v-btn>
    </v-card-actions>
  </v-card>
</template>

<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  props: {
    actions: Object,
    title: String,
    body: String,
    saveText: String,
    dontText: String
  }
});
</script>
