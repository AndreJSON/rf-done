export type Recipe = {
  id: string;
  title: string;
  text: string;
  tags: string[];
  createdAt: Date;
  updatedAt: Date;
  visible: boolean;
  imageName: string;
};
