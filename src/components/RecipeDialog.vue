<template>
  <v-card>
    <v-card-title class="teal lighten-2">
      <v-row>
        <v-col
          cols="9"
          sm="10"
          lg="11"
          class="no-padding-right no-padding-bottom small-padding-top tiny-margin-top"
        >
          <v-text-field
            v-if="editing"
            v-model="title"
            label="Title"
            hide-details
            outlined
            dense
            class="title-field"
          />
          <span v-else>{{ title }}</span>
        </v-col>
        <v-spacer />
        <v-col cols="auto" class="no-padding">
          <v-btn text height="50" @click="closeWithConfirmation">
            <v-icon size="42">mdi-close</v-icon>
          </v-btn>
        </v-col>
      </v-row>
    </v-card-title>
    <v-card-text id="recipe-content">
      <v-row v-if="editing">
        <v-col cols="12" class="large-padding-top">
          <v-textarea
            v-model="tagsAsText"
            label="Tags"
            rows="1"
            auto-grow
            hide-details
            outlined
            dense
            @input="unsavedChanges = true"
          />
        </v-col>
        <v-col cols="12" class="no-padding-top">
          <v-textarea
            v-model="text"
            label="Text"
            rows="3"
            auto-grow
            hide-details
            outlined
            dense
            class="recipe-text"
            ref="recipeText"
            @keydown.tab.prevent="handleTabInRecipeText(0)"
          />
        </v-col>
        <v-col v-if="!imageUri" cols="12" class="no-padding-top">
          <v-file-input
            placeholder="Photo"
            accept="image/*"
            prepend-icon=""
            prepend-inner-icon="mdi-camera"
            hide-details
            outlined
            filled
            @change="saveImage"
          />
        </v-col>
      </v-row>
      <v-row v-else>
        <v-col
          v-for="(tag, index) of tags"
          :key="index"
          cols="auto"
          class="no-padding-right tiny-padding-bottom"
        >
          <v-chip>{{ tag }}</v-chip>
        </v-col>
        <v-col v-if="text" cols="12">
          <span class="recipe-text">{{ text }}</span>
        </v-col>
      </v-row>
      <v-btn
        v-if="imageUri && editing"
        x-small
        fab
        color="error"
        class="delete-image"
        @click="imageUri = ''"
      >
        <v-icon>
          mdi-close
        </v-icon>
      </v-btn>
      <v-row v-if="imageUri">
        <v-col cols="12" class="no-vertical-padding">
          <a :href="imageUri" target="_blank" rel="noopener noreferrer">
            <img contain :src="imageUri" style="width: 100%" />
          </a>
        </v-col>
      </v-row>
    </v-card-text>
    <v-card-actions>
      <v-spacer />
      <v-btn
        v-if="!editing"
        color="indigo lighten-2"
        class="senior"
        dark
        @click="toggleEdit(true)"
      >
        <v-icon left>mdi-pencil</v-icon>
        Redigera
      </v-btn>
      <v-btn
        v-if="editing"
        color="success"
        class="senior"
        @click="finishEditing"
      >
        <v-icon left>mdi-check-circle</v-icon>
        Färdig
      </v-btn>
    </v-card-actions>
    <v-dialog :value="confirmationDialog" persistent width="450">
      <Confirmation
        :actions="dialogActions"
        title="Osparade ändringar"
        body="Du har osparade ändringar. Vill du spara dem innan du stänger receptet?"
        saveText="Spara"
        dontText="Spara inte"
      />
    </v-dialog>
  </v-card>
</template>

<style scoped>
.title-field {
  height: 32px;
}
.title-field >>> fieldset {
  height: 38px;
}
.title-field >>> input {
  padding-top: 5px;
}
.recipe-text {
  white-space: pre-wrap;
  tab-size: 10;
}
.delete-image {
  position: relative;
  bottom: -20px;
  z-index: 999;
}
</style>

<script lang="ts">
import Vue from "vue";
import axios from "axios";
import { Recipe } from "@/scripts/types.ts";
import { tokenizeText } from "@/scripts/misc.ts";
import Confirmation from "@/components/Confirmation.vue";

export default Vue.extend({
  components: {
    Confirmation
  },
  watch: {
    "$route.query": {
      handler(newQuery, oldQuery) {
        let newRecipeId = newQuery !== undefined ? newQuery.recipe : undefined;
        let oldRecipeId = oldQuery !== undefined ? oldQuery.recipe : undefined;
        if (newRecipeId === undefined) {
          this.recipe = undefined;
        } else if (newRecipeId !== oldRecipeId) {
          this.initDialog(newRecipeId);
        }
      },
      immediate: true
    }
  },
  computed: {
    editing(): boolean {
      return this.$route.query.editing === "true";
    },
    title: {
      get(): string {
        if (!this.recipe || !this.recipe.title) {
          return "";
        }
        return this.recipe.title;
      },
      set(title: string) {
        this.unsavedChanges = true;
        this.recipe!.title = title;
      }
    },
    text: {
      get(): string {
        if (!this.recipe || !this.recipe.text) {
          return "";
        }
        return this.recipe.text;
      },
      set(text: string) {
        this.unsavedChanges = true;
        if (text.includes("_")) {
          this.handleTabInRecipeText(1);
        } else {
          this.recipe!.text = text;
        }
      }
    },
    imageUri: {
      get(): string {
        if (!this.recipe || !this.recipe.imageName) {
          return "";
        }
        return `/images/${this.recipe.imageName}`;
      },
      set(uri: string) {
        this.unsavedChanges = true;
        this.recipe!.imageName = uri;
      }
    },
    tags: {
      get(): string[] {
        if (!this.recipe || !this.recipe.tags) {
          return [];
        }
        return this.recipe.tags;
      },
      set(tags: string[]) {
        this.unsavedChanges = true;
        this.recipe!.tags = tags;
      }
    }
  },
  methods: {
    finishEditing() {
      this.save().then(() => {
        this.toggleEdit(false);
      });
    },
    closeWithConfirmation() {
      if (this.unsavedChanges) {
        this.confirmationDialog = true;
        this.dialogActions = {
          cancel: () => {
            this.confirmationDialog = false;
          },
          save: () => {
            this.save().then(() => {
              this.confirmationDialog = false;
              this.close();
            });
          },
          dont: () => {
            this.confirmationDialog = false;
            this.close();
          }
        };
      } else {
        this.close();
      }
    },
    toggleEdit(value: boolean) {
      this.$router.push({
        path: "/",
        query: {
          recipe: this.$route.query.recipe,
          editing: value ? "true" : undefined
        }
      });
    },
    close() {
      this.unsavedChanges = false;
      this.$router.push({ path: "/" });
    },
    save(): Promise<void> {
      this.tags = tokenizeText(this.tagsAsText);
      this.unsavedChanges = false;
      return this.$store.dispatch("storeRecipe", this.recipe!);
    },
    saveImage(image: any) {
      if (!image) {
        this.imageUri = "";
        return;
      }
      const imageName =
        this.recipe!._id + image.name.slice(image.name.indexOf("."));
      const formData = new FormData();
      formData.append("filename", imageName);
      formData.append("image", image);
      this.$store.dispatch("storeImage", formData).then(() => {
        this.imageUri = imageName;
      });
    },
    initDialog(recipeId: string) {
      const recipeContent = document.getElementById("recipe-content");
      if (recipeContent) {
        recipeContent.scrollTop = 0;
      }
      if (recipeId === "new") {
        this.createNewId();
      } else {
        let recipe = this.$store.getters.recipe(recipeId);
        if (!recipe) {
          this.initEmptyRecipe(recipeId);
        } else {
          this.recipe = recipe;
        }
        if (this.tags.length === 0) {
          this.tagsAsText = "";
        } else {
          this.tagsAsText = this.tags.reduce((res, tag) => `${res} ${tag}`);
        }
      }
    },
    createNewId() {
      axios
        .get("/api/id")
        .then(res => {
          this.$router.push({
            path: "/",
            query: { recipe: res.data.id, editing: "true" }
          });
        })
        .catch(error => {
          this.$store.dispatch("handleApiError", error);
        });
    },
    initEmptyRecipe(id: string) {
      if (id.length !== 24) {
        this.$store.dispatch("handleBasicError", "Invalid recipe id");
        this.close();
        return;
      }
      this.recipe = new Recipe({ _id: id });
    },
    handleTabInRecipeText(carretOffset: number) {
      const recipeTextarea = (this.$refs.recipeText as Vue).$refs.input as any;
      const carretPos = recipeTextarea.selectionStart - carretOffset;
      const textBefore = this.text.substr(0, carretPos);
      const textAfter = this.text.substr(carretPos);
      this.text = textBefore + "\t" + textAfter;
      this.$nextTick(() => {
        recipeTextarea.selectionStart = carretPos + 1;
        recipeTextarea.selectionEnd = carretPos + 1;
      });
    }
  },
  data: (): {
    unsavedChanges: boolean;
    confirmationDialog: boolean;
    dialogActions: {
      cancel?: Function;
      save?: Function;
      dont?: Function;
    };
    recipe?: Recipe;
    tagsAsText: string;
  } => ({
    unsavedChanges: false,
    confirmationDialog: false,
    dialogActions: {},
    recipe: undefined,
    tagsAsText: ""
  })
});
</script>
