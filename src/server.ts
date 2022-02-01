import express from "express";

const app = express();

app.get("/", (req, res) => {
  let text = req.query.text;
  res.send(`Mensagem: ${text}`);
});

app.listen(3000);
