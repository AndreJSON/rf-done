<template>
  <v-dialog v-model="dialog" persistent scrollable :width="width">
    <v-card>
      <v-card-title class="no-padding text-h5">
        <v-sheet color="primary" class="medium-padding">
          <v-row>
            <v-col cols="auto">
              {{ title }}
            </v-col>
            <v-spacer />
            <v-col cols="auto" class="no-vertical-padding">
              <v-btn
                size="large"
                variant="plain"
                icon="mdi-close"
                @click="close"
              />
            </v-col>
          </v-row>
        </v-sheet>
      </v-card-title>
      <v-card-text>
        <Progress v-if="loading" />
        <slot v-else name="body" />
      </v-card-text>
      <v-card-actions>
        <slot name="actions" />
      </v-card-actions>
    </v-card>
  </v-dialog>
</template>

<style scoped>
.v-card {
  overflow-y: hidden !important;
}
.v-card-text {
  padding-left: 14px !important;
  padding-right: 14px !important;
  padding-bottom: 12px !important;
}
.v-card-actions {
  padding-left: 14px !important;
  padding-right: 14px !important;
}
</style>

<script lang="ts">
import { defineComponent } from "vue";
import Progress from "@/components/Progress.vue";

export default defineComponent({
  components: {
    Progress,
  },
  props: {
    dialog: Boolean,
    title: String,
    loading: Boolean,
    width: Number,
  },
  methods: {
    close() {
      this.$emit("closeDialogCard");
    },
  },
});
</script>
