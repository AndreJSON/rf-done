<template>
  <DialogCard
    :dialog="true"
    :title="title"
    :width="800"
    :showEditButton="!editMode"
    @closeDialogCard="close"
    @edit="editMode = true"
  >
    <template v-slot:body>
      <v-form v-if="recipe" v-model="valid" ref="form">
        <v-row>
          <v-col cols="12" v-if="editMode">
            <TextSingle v-model="recipe.title" label="Namn" />
          </v-col>
          <!--Add tags-->
          <v-col cols="12">
            <v-img
              v-if="recipe.imageName"
              :src="'/images/' + recipe.imageName"
            />
            <TextMulti v-else v-model="recipe.text" :disabled="!editMode" />
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
            :disabled="!valid || !editMode"
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
import TextSingle from "@/components/TextSingle.vue";
import TextMulti from "@/components/TextMulti.vue";
import type { Recipe } from "@/scripts/types";

export default defineComponent({
  components: {
    DialogCard,
    TextSingle,
    TextMulti,
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
      this.editMode = false;
    },
    close() {
      this.$emit("close");
    },
  },
  data: (): {
    valid: boolean;
    saveInProgress: boolean;
    editMode: boolean;
  } => ({
    valid: false,
    saveInProgress: false,
    editMode: false,
  }),
});
</script>
