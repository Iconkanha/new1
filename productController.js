const db = require('../db');

const getAllProducts = (req, res) => {
  db.query('SELECT * FROM products', (err, results) => {
    if (err) throw err;
    res.json(results);
  });
};

module.exports = { getAllProducts };