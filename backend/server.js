const express = require("express");
const cors = require("cors");

const app = express();
const PORT = 5000;

// Middleware
app.use(cors());
app.use(express.json());

// Routes
app.get("/", (req, res) => {
  res.send({ message: "Welcome to the Node.js Backend API!" });
});

app.get("/api/data", (req, res) => {
  res.send({ data: "Hello from the backend!" });
});

// Start the server
app.listen(PORT, () => {
  console.log(`Backend server is running on http://localhost:${PORT}`);
});