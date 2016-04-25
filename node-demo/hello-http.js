var http = require('http');
http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/html'});
    
    res.end('HELLO Host/Pod: ' + process.env.HOSTNAME  + '\n');
    
}).listen(8000, '0.0.0.0');
console.log('Server running at http://127.0.0.1:8000/');
