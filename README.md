# Sheetson = Sheets as JSON
Google Spreadsheets exposed as JSON

## Use-cases

* Make your static sites configurable on Google Spreadsheets
* Let your business team modify Strings before your App's build process
* Avoid paying for https://sheetsu.com/

## Usage
Run it with Docker!
```
docker build -t sheetson .
docker run -p 7000:7000 --name sheetson -d sheetson
```

Delicious JSON
```
curl http://dockerhost:7000/MyPublicGoogleSheetId
```
