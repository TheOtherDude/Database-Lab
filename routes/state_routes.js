var express = require('express');
var router = express.Router();

router.get('/new', function(err, res, next) {
    res.render('state_insert_form');
})