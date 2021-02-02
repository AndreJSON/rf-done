<template>
  <v-alert
    type="warning"
    class="tiny-margin-top tiny-margin-sides no-margin-bottom"
  >
    <v-row>
      <v-col class="no-padding">
        {{ message }}
      </v-col>
      <v-col cols="auto" class="no-padding">
        <v-btn small tile icon @click="hide">
          <v-icon>mdi-close</v-icon>
        </v-btn>
      </v-col>
    </v-row>
  </v-alert>
</template>

<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  props: {
    message: String
  },
  methods: {
    hide() {
      this.$emit("hide");
    }
  }
});
</script>
