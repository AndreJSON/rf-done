<template>
  <div class="input-wrapper">
    <v-textarea
      :model-value="modelValue"
      density="comfortable"
      :variant="disabled ? 'filled' : 'outlined'"
      :readonly="disabled"
      spellcheck="false"
      autocomplete="false"
      auto-grow
      @update:model-value="update"
    />
  </div>
</template>

<style scoped>
@import "@/assets/input.css";
</style>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  props: {
    modelValue: String,
    disabled: Boolean,
  },
  methods: {
    update(val: string) {
      this.$emit("update:model-value", val);
    },
  },
});
</script>
