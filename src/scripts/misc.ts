export const tokenizeText = (text: string): string[] => {
  text = text + " ";
  const tags = [];
  let currentTag = "";
  for (const char of text) {
    if (char.toLocaleLowerCase() !== char.toLocaleUpperCase()) {
      currentTag += char.toLocaleUpperCase();
    } else if (currentTag !== "") {
      tags.push(currentTag);
      currentTag = "";
    }
  }
  return tags;
};
