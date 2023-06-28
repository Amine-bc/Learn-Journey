const express = require("express");

// express app
const app = express();


app.get("/", (req, res) => {
    res.json({"Welcome": "to the home page"});
    }
);

//listen for a port
app.listen(3000, () => {
    console.log("listening on port 3000!!");
    }
);