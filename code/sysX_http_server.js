const express = require("express");
const app = express();
const http = require("http").Server(app);

const port = process.env.PORT || 8080;

console.log(__dirname + "/public");

app.use(express.static(__dirname + "/public"));

http.listen(port, function () {
	console.log("listening on *:" + port);
});
