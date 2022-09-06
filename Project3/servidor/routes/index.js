var express = require('express');
var router = express.Router();

const Users = require('../models').user;

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});


router.get('/notes/:id', function (req, res, next) {
  let value_id = parseInt(req.params.id);

  Users.findOne({
    where: {
      id: value_id
    
    }
  })
    .then(user => {
      res.json(user);
    })
    .catch(error => res.status(400).send(error))
})

module.exports = router;









