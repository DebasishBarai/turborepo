import express from "express";

const app = express();

app.get("/", (req, res) => {
  res.status(200).json({
    msg: "hello from turbo backend",
  });
});

app.listen(3000);
