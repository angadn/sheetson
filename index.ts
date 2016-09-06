import * as express from "express";
let app = express();

app.get("/:id", (req, res) => {
  require("google-spreadsheet-to-json")({
    spreadsheetId: req.params.id
  }).then((json) => {
    console.log("Serving document ID:", req.params.id);
    res.status(200).send(json);
  }).catch((err) => {
    res.status(500).send(err);
  });
})

app.listen(7000, () => {
  console.log("sheetson on 7000. hon.");
})
