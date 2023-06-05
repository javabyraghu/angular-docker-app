const express = require('express');
const path = require('path');

const app = express();

// Serve static files from the "dist" directory
app.use(express.static(path.join(__dirname, 'dist/angular-docker-app')));

// Serve the index.html file for all routes
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'dist/angular-docker-app/index.html'));
});

// Start the server
const port = process.env.PORT || 80;
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
