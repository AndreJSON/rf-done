export type Recipe = {
  id: number;
  title: string;
  text: string;
  tags: string;
  createdAt: Date | null;
  updatedAt: Date | null;
  imageName: string | null;
};
