module.exports = {
  transpileDependencies: ["vuetify"],
  devServer: {
    proxy: {
      "/api": {
        target: "http://localhost:8081"
      },
      "/images": {
        target: "http://localhost:8081"
      }
    },
    watchOptions: {
      ignored: [/node_modules/, /public/, /backend/]
    }
  }
};
