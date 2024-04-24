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
            <v-col
              cols="auto"
              class="no-vertical-padding no-padding-right"
            >
              <v-btn
                size="large"
                variant="plain"
                :icon="editMode ? 'mdi-pencil-off' : 'mdi-pencil'"
                @click="edit"
              />
            </v-col>
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
        <slot v-if="!loading" name="body" />
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

export default defineComponent({
  props: {
    dialog: Boolean,
    title: String,
    loading: Boolean,
    width: Number,
    editMode: Boolean,
  },
  methods: {
    close() {
      this.$emit("closeDialogCard");
    },
    edit() {
      this.$emit("edit");
    },
  },
});
</script>
