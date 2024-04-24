<template>
  <div class="input-wrapper">
    <v-text-field
      :model-value="modelValue"
      :label="label"
      :variant="disabled ? 'filled' : 'outlined'"
      density="comfortable"
      :readonly="disabled"
      :rules="rules"
      spellcheck="false"
      autocomplete="false"
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
    label: String,
    disabled: Boolean,
    rules: Array as () => ((v: string) => boolean | string)[],
  },
  methods: {
    update(val: string) {
      this.$emit("update:model-value", val);
    },
  },
});
</script>
