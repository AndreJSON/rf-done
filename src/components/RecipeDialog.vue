<template>
  <DialogCard
    :dialog="true"
    :title="title"
    :width="800"
    :editMode="editMode"
    @closeDialogCard="close"
    @edit="editMode = !editMode"
  >
    <template v-slot:body>
      <v-form v-if="recipe" v-model="valid" ref="form">
        <v-row>
          <v-col cols="12" v-if="editMode">
            <TextSingle v-model="recipe.title" label="Namn" />
          </v-col>
          <v-col cols="12">
            <TextSingle v-model="recipe.tags" label="Taggar" :disabled="!editMode" />
          </v-col>
          <v-col cols="12" v-if="recipe.text || editMode">
            <TextMulti v-model="recipe.text" :disabled="!editMode" />
          </v-col>
          <v-col cols="12" v-if="recipe.imageName">
            <v-img
              :src="'/images/' + recipe.imageName"
            />
          </v-col>
        </v-row>
      </v-form>
    </template>
    <template v-slot:actions>
      <v-row v-if="editMode">
        <v-col cols="8">
          <v-file-input
            v-model="files"
            label="Lägg till bild..."
            prepend-icon="mdi-camera"
            variant="filled"
            density="compact"
            accept="image/*"
            hide-details
            @change="upload"
          />
        </v-col>
        <v-spacer />
        <v-col cols="auto">
          <v-btn
            variant="flat"
            color="success"
            prepend-icon="mdi-content-save"
            height="40"
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
import axios from "axios";
import { useRecipeStore } from "@/stores/recipeStore";
import { handleApiError } from "@/scripts/utils";

export default defineComponent({
  components: {
    DialogCard,
    TextSingle,
    TextMulti,
  },
  props: {
    recipe: Object as () => Recipe,
  },
  watch: {
    recipe: {
      handler() {
        if (this.recipe && this.recipe.id === 0) {
          this.editMode = true;
        }
      },
      immediate: true,
    },
  },
  computed: {
    title(): string | undefined {
      return this.recipe?.title;
    },
  },
  methods: {
    save() {
      this.saveInProgress = true;
      axios
        .post("/api/recipe", this.recipe)
        .then(() => {
          this.recipeStore.fetchRecipes();
          this.saveInProgress = false;
          this.editMode = false;
          if (this.recipe!.id === 0) {
            this.close();
          }
        })
        .catch((error) => {
          handleApiError(error);
        });
    },
    upload() {
      const image = this.files[0];
      const fileExtension = image.type.split("/")[1];
      const formData = new FormData();
      const imageName = this.randomFileName(fileExtension);
      formData.append("filename", imageName);
      formData.append("image", image);
      axios.post("/api/images", formData, {
          headers: {
            'Content-Type': 'multipart/form-data'
          }
      }).then(() => {
        this.recipe!.imageName = imageName;
      }).catch((error) => {
        handleApiError(error);
      });
    },
    randomFileName(fileExtension: string): string {
      return this.randomHex(24) + "." + fileExtension;
    },
    randomHex(minLength: number): string {
      if (minLength <= 0) {
        return "";
      }
      return (Math.random() * 0xFFFFFF << 0).toString(16).padStart(6, '0') + this.randomHex(minLength - 6);
    },
    close() {
      this.$emit("close");
    },
  },
  setup() {
    return { recipeStore: useRecipeStore() };
  },
  data: (): {
    valid: boolean;
    saveInProgress: boolean;
    editMode: boolean;
    files: any[];
  } => ({
    valid: false,
    saveInProgress: false,
    editMode: false,
    files: []
  }),
});
</script>
