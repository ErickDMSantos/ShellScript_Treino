// Carregar módulo HTTP
const http = require("http");

const hostname = "127.0.0.1";
const port = 8000;

// criando servidor HTTP
const server = http.createServer((req, res) => {

   // Defina o cabeçalho HTTP de resposta com o status HTTP e o tipo de conteúdo
   res.writeHead(200, {'Content-Type': 'text/plain'});

   // Envie o corpo da resposta "Hello World"
   res.end('Hello World\n');
});

// Imprime um log assim que o servidor começa a escutar
server.listen(port, hostname, () => {
   console.log(`Server running at http://${hostname}:${port}/`);
})