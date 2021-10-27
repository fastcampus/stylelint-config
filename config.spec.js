const config = require("./index.js");

module.exports = {
  ...config,
  overrides: [
    {
      files: ["*.html", "**/*.html"],
      customSyntax: "postcss-html",
    },
    {
      files: ["*.scss", "**/*.scss"],
      customSyntax: "postcss-scss",
    },
  ],
};
