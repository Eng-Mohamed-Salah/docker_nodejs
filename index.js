// Get Libraries Express
const express = require("express");

// Select Port
const PORT = 3000;

// Use Express
const app = express();

// Create Route For Test 
app.get("/", (req, res) => {
    // Print Test
    res.send("<h1>Hello World Mohamed Mado </h1>");
})
// Run Project With Port
app.listen(PORT, () => {
    // Print After Run
    console.log(`Server is running on port: ${PORT}`);
})

// Command Run Project Is `npm run start | start-dev`