const http = require('http');

const server = http.createServer((req, res) => {
  res.end('Hello from Docker by Nikhil!');
});

server.listen(3000, () => {
  console.log('Server running on port 3000');
});

process.on('SIGINT', () => {
  console.log('Shutting down...');
  server.close(() => process.exit(0));
});