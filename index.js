// Get Libraries Express
const express = require("express");

// Get Libraries Mongoose Express 
const mongoose = require('mongoose');

// Use Express
const app = express();

// Select Port
const PORT = 3000;

// Connect To Database
const DB_USERNAME = 'root';
const DB_PASSWORD = 'example';
const DB_PORT =27017;
const DB_IP = 'mongo'
const DB_URL = `mongodb://${DB_USERNAME}:${DB_PASSWORD}@${DB_IP}:${DB_PORT}`;
mongoose.connect(DB_URL)
.then(() => console.log("Connected To Database..."))
.catch((err) => console.log('failed to connect to database:', err));

// Create Route For Test 
app.get("/", (req, res) => {
    // Print Test
    res.send("<h1> Hello World Mohamed Mado Dev </h1>");
})
// Run Project With Port
app.listen(PORT, () => {
    // Print After Run
    console.log(`Server is running on port: ${PORT}`);
})

// Command Run Project Is `npm run start | start-dev`