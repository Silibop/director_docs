const express = require('express');
const router = express.Router();

/* GET home page. */
router.get('/:number', function(req, res, next) {
    const {number} = req.params
    if (req.query.format && req.query.format === 'json') {
        res.json({
            number: number,
            sqrt: Math.sqrt(number),
            fahrenheit: number * 1.8 + 32,
            celsius: (number - 32) / 1.8,
            responsible: number.toString() === '119'
        })
    } else {
        res.render('converter', {number: number.toString()});
    }
});

module.exports = router;
