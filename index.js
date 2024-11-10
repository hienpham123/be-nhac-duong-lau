import express from "express";
import dotenv from "dotenv";
import cors from "cors";
import authRoute from "./app/router/auth.js";
import peopleRoute from "./app/router/people.js";
import videosRoute from "./app/router/videos.js";

const app = express();
dotenv.config();
app.use(cors());
app.use(express.json());

app.use("/api/auth", authRoute);
app.use("/api/peoples", peopleRoute);
app.use("/api/videos", videosRoute);

app.use("/api/transaction", (req, res) => {
  console.log(req.body);
  return res.status(200).json(req.body);
});

const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log("Connected to backend", +port);
});
