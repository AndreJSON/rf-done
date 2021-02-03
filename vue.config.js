module.exports = {
  transpileDependencies: ["vuetify"],
  devServer: {
    port: 8081,
    proxy: {
      "/api": {
        target: "http://localhost:8080"
      },
      "/images": {
        target: "http://localhost:8080"
      }
    },
    watchOptions: {
      ignored: [/node_modules/, /public/, /backend/]
    }
  }
};
