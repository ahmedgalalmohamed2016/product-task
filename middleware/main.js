exports.pagination = async function(req, res, next) {
    if (req.query.page) {
        req.pageNumber = req.query.page;
        req.resultLimit = 2;
        return next()
    } else
        return res.status(401).send("You must enter page number");
}