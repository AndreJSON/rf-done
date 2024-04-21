const path = require('path');
const multer = require('multer');
const config = require('config');
const mariadb = require('mariadb');
const pool = mariadb.createPool({
     host: 'localhost',
	 database: 'rfd', 
     user:'root', 
     password: config.get('dbpw'),
     connectionLimit: 5
});

const pad = (num) => {
	return num.toString().padStart(2, "0");
}

const now = () => {
	const d = new Date();
	return d.getFullYear().toString() + "-" +
		pad(d.getMonth()) + "-" + 
		pad(d.getDate()) + " " +
		pad(d.getHours()) + ":" +
		pad(d.getMinutes()) + ":" +
		pad(d.getSeconds());
}

module.exports = (app) => {
	app.get('/api/recipes', (req, res) => {
		pool.getConnection()
		.then(conn => {
			conn.query("SELECT * from recipes")
			.then((rows) => {
				conn.end();
				res.json({ recipes: rows });
				res.end();
			})
			.catch(err => {
				console.error(err); 
				conn.end();
				res.statusCode = 500;
				res.statusMessage = "Failed to get recipes.";
				res.end();
			})
		}).catch(err => {
			console.error("Failed to connect to db");
			res.statusCode = 500;
			res.statusMessage = "Failed to connect to db.";
			res.end();
		});
	});

	app.post('/api/recipe', (req, res) => {
		const recipe = req.body;
		recipe.title = recipe.title || "";
		recipe.text = recipe.text || "";
		recipe.tags = recipe.tags ? recipe.tags.toUpperCase() : "";
		recipe.imageName = recipe.imageName || null;

		pool.getConnection()
		.then(conn => {
			const query = recipe.id === 0?
				conn.query(
					"INSERT INTO recipes (title, text, tags, createdAt, updatedAt, imageName) value (?, ?, ?, ?, ?, ?)",
					[recipe.title, recipe.text, recipe.tags, now(), now(), recipe.imageName])
				: conn.query(
					"UPDATE recipes set title = ?, text = ?, tags = ?, updatedAt = ?, imageName = ? where id = ?",
					[recipe.title, recipe.text, recipe.tags, now(), recipe.imageName, recipe.id]);
			query
				.then(() => {
					conn.end();
					res.end();
				})
				.catch(err => {
					console.error(err); 
					conn.end();
					res.statusCode = 500;
					res.statusMessage = "Failed to insert/update recipe with id: " + recipe.id;
					res.end();
				})
		}).catch(err => {
			console.error("Failed to connect to db");
			res.statusCode = 500;
			res.statusMessage = "Failed to connect to db.";
			res.end();
		});
	});

	const storage = multer.diskStorage({
		destination: "./public/images/",
		filename: (req, file, cb) => cb(null, req.body.filename)
	});

	app.get('/images/:imageName', (req, res) => {
		res.sendFile(path.join(__dirname, '../public/images/' + req.params.imageName));
	});

	app.post('/api/images', multer({ storage: storage }).single('image'), (req, res) => {
		res.statusCode = 200;
		res.end();
	});

	//Catch all non-api calls and let vue-router handle it.
	app.get('/*', (req, res) => {
		res.sendFile(path.join(__dirname, '../dist/index.html'));
	});
}
