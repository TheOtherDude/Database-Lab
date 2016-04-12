var express = require('express');
var router = express.Router();
var userDal = require('../model/user_dal');

router.get('/all', function(req, res) {
  userDal.GetAll(function (err, result) {
        if (err) throw err;
        res.render('displayAllUsers.ejs', {rs: result});
      }
  );
});

router.get('/create', function(req, res, next) {
    res.render('userFormCreate.ejs');
});

router.get('/save', function(req, res, next) {
    userDal.Insert(req.query, function(err, result){
        if (err) {
            res.send(err);
        }
        else {
            res.send("Successfully saved the user.");
        }
    });
});


router.get('/', function (req, res) {
  userDal.GetByID(req.query.user_id, function (err, result) {
        console.log(req.query.user_id);
        if (err) throw err;
        res.render('displayUserInfo.ejs', {rs: result, user_id: req.query.user_id});
      }
  );
});

module.exports = router;
