const port = 8080;
const express = require('express');
const app = express();
app.use(express.json());
app.use(express.urlencoded({
	extended: true
}));
const helmet = require("helmet");
app.use(helmet());

app.use((err, req, res, next) => {
  if (err instanceof URIError) {
    console.warn("Blocked suspicious request:", req.url);
    return res.status(400).send("Bad Request");
  }
  next(err);
});

require('./paths.js')(app);
require('./routes.js')(app);

app.listen(port, () => {
	console.log("Listening on port " + port);
});