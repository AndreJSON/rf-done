const path = require('path');
const multer = require('multer');
const mongoose = require('mongoose');
mongoose.set('useUnifiedTopology', true);
mongoose.set('useFindAndModify', false);
mongoose.connect('mongodb://localhost/rfd', { useNewUrlParser: true });
const Recipe = require('./recipe-model');

module.exports = (app) => {
	app.get('/api/recipes', (req, res) => {
		Recipe.find({}, (err, docs) => {
			if (err) {
				console.log(err);
				res.statusCode = 500;
				res.statusMessage = "Failed to get recipes.";
				res.end();
			} else {
				res.json({ recipes: docs });
				res.end();
			}
		});
	});

	app.get('/api/id', (req, res) => {
		res.json({ id: mongoose.Types.ObjectId() });
		res.end();
	});

	app.get('/images/:imageName', (req, res) => {
		res.sendFile(path.join(__dirname, '../public/images/' + req.params.imageName));
	});

	//Catch all non-api calls and let vue-router handle it.
	app.get('/*', (req, res) => {
		res.sendFile(path.join(__dirname, '../dist/index.html'));
	});

	app.post('/api/recipe', (req, res) => {
		const recipe = req.body;
		const updatedRecipe = {
			_id: recipe._id,
			title: recipe.title,
			text: recipe.text,
			tags: recipe.tags,
			createdAt: recipe.createdAt || new Date(),
			updatedAt: new Date(),
			visible: recipe.visible === undefined ? true : recipe.visible,
			imageName: recipe.imageName
		};
		Recipe.findOneAndUpdate({ _id: req.body._id }, updatedRecipe, { upsert: true, new: true }, (err) => {
			if (err) {
				console.log(err);
				res.statusCode = 500;
				res.statusMessage = "Failed to update recipe.";
				res.end();
			} else {
				Recipe.find({}, (err, docs) => {
					if (err) {
						console.log(err);
						res.statusCode = 500;
						res.statusMessage = "Failed to get recipes.";
						res.end();
					} else {
						res.json({ recipes: docs });
						res.end();
					}
				});
			}
		});
	});

	const storage = multer.diskStorage({
		destination: "./public/images/",
		filename: (req, file, cb) => cb(null, req.body.filename)
	});

	app.post('/api/images', multer({ storage: storage }).single('image'), (req, res) => {
		res.statusCode = 200;
		res.end();
	});
}