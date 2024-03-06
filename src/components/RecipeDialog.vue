<template>
  <DialogCard
    :dialog="true"
    :title="title"
    :width="800"
    @closeDialogCard="close"
  >
    <template v-slot:body>
      <v-form v-if="recipe" v-model="valid" ref="form">
        <v-row>
          <v-col cols="12">
            {{ recipe }}
          </v-col>
        </v-row>
      </v-form>
    </template>
    <template v-slot:actions>
      <v-row>
        <v-spacer />
        <v-col cols="auto">
          <v-btn
            variant="flat"
            color="success"
            prepend-icon="mdi-content-save"
            :disabled="!valid"
            :loading="saveInProgress"
            @click="save"
          >
            Spara
          </v-btn>
        </v-col>
      </v-row>
    </template>
  </DialogCard>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import DialogCard from "@/components/DialogCard.vue";
import type { Recipe } from "@/scripts/types";

export default defineComponent({
  components: {
    DialogCard,
  },
  props: {
    recipe: Object as () => Recipe,
  },
  computed: {
    title(): string | undefined {
      return this.recipe?.title;
    },
  },
  methods: {
    save() {
      this.saveInProgress = true;
    },
    close() {
      this.$emit("close");
    },
  },
  data: (): {
    valid: boolean;
    saveInProgress: boolean;
  } => ({
    valid: false,
    saveInProgress: false,
  }),
});
</script>
