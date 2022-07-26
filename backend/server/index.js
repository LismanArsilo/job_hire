import dotenv from "dotenv";
import express from "express";
dotenv.config();

const app = express();

const port = process.env.port || 3003;

app.listen(port, () => console.log(`Server listen on port ${port}`));
