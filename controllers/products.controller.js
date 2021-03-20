const faker = require('faker');
const mysql = require('mysql');
const config = require('../configs/main');
const validation = require('../configs/validation');

const pool = mysql.createPool({
    host: config.dbHost,
    user: config.dbUser,
    password: config.dbPassword,
    database: config.dbDatabase,
})


exports.products = async(req, res) => {
    try {
        if (!req.query.categoryId)
            return res.status(401).json("please enter valid category id");

        let sql = `SELECT * FROM  products pr RIGHT JOIN products_providers on pr.id = products_providers.product_id 
                    RIGHT JOIN providers on products_providers.provider_id = providers.id 
                    where pr.category_id = '${req.query.categoryId}'
                    order by products_providers.price ASC
                    limit ${req.resultLimit} OFFSET ${req.pageNumber}`
        pool.query(sql, (err, result) => {
            if (err) {
                return res.json({ error: config.errorHappened });
            } else {
                return res.status(401).json(result);
            }

        });

    } catch (err) {
        return res.status(401).json({ error: config.errorHappened });
    }
}


exports.updateFeautured = async(req, res) => {
    try {
        if (!req.query.isFeatured || !req.query.id)
            return res.status(401).json("please enter valid query data");
        let sql = `UPDATE products SET is_featured = '${req.query.isFeatured}' WHERE id = '${req.query.id}'`;
        pool.query(sql, function(err, result) {
            if (err) {
                return res.status(401).json({ error: config.errorHappened });
            } else {
                return res.json(result);
            }
        });
    } catch (error) {
        return res.status(401).json({ error: config.errorHappened });
    }
}