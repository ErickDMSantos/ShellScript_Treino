// wiki.js - módulo de rota Wiki

const express = require('express');
const router = express.Router();

// Rota da página inicial
router.get('/', function(req, res) {
  res.send('Wiki home page');
});

// Sobre a rota da página
router.get('/about', function(req, res) {
  res.send('About this wiki');
});

module.exports = router;


