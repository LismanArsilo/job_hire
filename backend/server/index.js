import dotenv from "dotenv";
import express from "express";
dotenv.config();

const app = express();

const port = process.env.port || 3003;

app.listen(port, () => console.log(`Server listen on port ${port}`));
app.get("/", responseText);
app.get("/json", responseJson);

function responseText(req, res) {
  res.setHeader("Content-Type", "text/plain");
  res.send("Project Bootcamp");
}
function responseJson(req, res) {
  res.json({
    employee: {
      empId: 100,
      name: "Lisman",
    },
  });
}
