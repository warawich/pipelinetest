'use strict'

const http = require('http');

const hostname = '0.0.0.0';
const port = 3000;

const server = http.createServer((req, res) => {
    //res.statusCode = 200;
    //res.setHeader('Content-Type', 'text/plain');
      res.writeHead(200, {'Content-Type': 'text/html'});
      res.write('<title>http - Node.js Manual &amp; Documentation</title>');
      res.write('Hello World pipeline krub\n');
      res.end();
      });
    
server.listen(port, hostname, () =>  {
     console.log(`Server running at http://${hostname}:${port}/`);
});							 


