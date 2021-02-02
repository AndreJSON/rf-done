export class State {
  globalError: {
    show: boolean;
    message: string;
  };

  recipes: Recipe[];
  filter: string;

  constructor() {
    this.globalError = {
      show: false,
      message: ""
    };
    this.recipes = [];
    this.filter = "";
  }
}

export class Recipe {
  _id: string;
  createdAt: string | null;
  updatedAt: string | null;
  visible: boolean;
  title: string;
  text: string;
  tags: string[];
  imageName: string | null;

  constructor(recipe: {
    _id: string;
    createdAt?: string | null;
    updatedAt?: string | null;
    visible?: boolean;
    title?: string;
    text?: string;
    imageName?: string | null;
    tags?: string[];
  }) {
    this._id = recipe._id;
    this.createdAt = recipe.createdAt === undefined ? null : recipe.createdAt;
    this.updatedAt = recipe.updatedAt === undefined ? null : recipe.updatedAt;
    this.visible = recipe.visible === undefined ? true : recipe.visible;
    this.title = !recipe.title ? "" : recipe.title;
    this.text = !recipe.text ? "" : recipe.text.trim();
    this.imageName = !recipe.imageName ? null : recipe.imageName;
    this.tags = !recipe.tags ? [] : recipe.tags.map(t => t.toUpperCase());
  }
}
