import { defineStore } from "pinia";

export type ConfirmationDialogInfo = {
  title: string;
  body: string;
  primaryText: string;
  primaryColor?: string;
  primaryCallback: Function;
  secondaryText?: string;
  secondaryColor?: string;
};

export const useUiStore = defineStore({
  id: "ui",
  state: (): {
    height: number;
    confirmationDialog: ConfirmationDialogInfo | undefined;
  } => ({
    height: 0,
    confirmationDialog: undefined,
  }),
  actions: {
    setHeight(height: number) {
      this.height = height;
    },
    setConfirmationDialogInfo(info: ConfirmationDialogInfo | undefined) {
      this.confirmationDialog = info;
    },
  },
});
