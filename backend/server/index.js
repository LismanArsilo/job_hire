import "dotenv/config";
import dotenv from "dotenv";
import express from "express";
import compression from "compression";
import models, { sequelize } from "./models/init-models";
import routes from "./routes/indexRoute";
dotenv.config();

const port = process.env.PORT || 3003;
const app = express();

app.use(express.json());
app.use(compression());
app.use(async (req, res, next) => {
  req.context = { models };
  next();
});

app.use("/employee_range", routes.EmpRange);
app.use("/client", routes.Client);

const dropDatabaseSync = false;
sequelize.sync({ force: dropDatabaseSync }).then(async () => {
  if (dropDatabaseSync) {
    console.info("Database do not drop");
  }
  app.listen(port, () => {
    console.info(`Server is listening on port ${port}`);
  });
});
