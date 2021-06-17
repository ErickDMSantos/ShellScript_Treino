const express = require('express');
const app = express();

// Um exemplo de função de middleware
let a_middleware_function = function(req, res, next) {
  // ... realizar algumas operações
  next(); // Chame next () para que Express chame a próxima função de middleware na cadeia.
}

// Função adicionada com use () para todas as rotas e verbos
app.use(a_middleware_function);

// Função adicionada com use () para uma rota específica
app.use('/someroute', a_middleware_function);

// Uma função de middleware adicionada para um verbo e rota HTTP específicos
app.get('/', a_middleware_function);

app.listen(3000);
app.use(express.static('public'));