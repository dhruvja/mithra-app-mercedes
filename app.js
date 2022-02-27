const express = require("express");
const key = require("./secrets");
const axios = require("axios");
var fileupload = require("express-fileupload");
// var pool = require("./db");
var cors = require("cors");

const app = express();

app.use(cors());

app.use(express.json());
app.use(fileupload());
app.use("/api/uploads", express.static("uploads"));

app.get("/api/getforum", (req, res) => {
    pool.query("SELECT * FROM forum ORDER BY id DESC", (err, rows) => {
        if (err) {
            console.log(err);
            res.json(err);
        } else {
            console.log(rows);
            res.json(rows);
        }
    });
});

app.get("/api/getactivities", (req, res) => {
    pool.query("SELECT * FROM activities", (err, rows) => {
        if (err) {
            console.log(err);
            res.json(err);
        } else {
            console.log(rows);
            res.json(rows);
        }
    });
});

app.post("/api/postforum", (req, res) => {
    var details = req.body;
    var reading_time = "2";
    var now = new Date();

    pool.query(
        "INSERT INTO forum(username, message, hashtag,created_time, likes, reading_time) VALUES(?,?,?,?,?,?)",
        [
            details.username,
            details.message,
            details.hashtag,
            now,
            0,
            reading_time,
        ],
        (err, rows) => {
            if(err){
                console.log(err)
                res.json({success: false, error: err})
            }
            else{
                console.log(rows)
                res.json({success: true})
            }
        }
    );
});

app.get("/api/gethospitals", (req, res) => {
    console.log(key);
    const latitude = "13.34";
    const longitude = "77.11";
    axios
        .get(
            "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=" +
                latitude +
                "%2C " +
                longitude +
                "&opennow&radius=5000&type=hospital&key=" +
                key
        )
        .then((response) => {
            // console.log(data.data.results.data)
            data = response.data.results.map((row) => {
                return row;
            });
            res.json(data);
        })
        .catch((error) => {
            res.json({ error: error });
        });
    res.json({status: "failure"})
});

app.post("/api/uploadAudio", (req, res) => {
    const audio = req.files.audio;
    console.log("audio recieved");
    audio.mv("./uploads/" + audio.name, function (err, result) {
        if (err) {
            console.log(err);
            res.json({ success: false, msg: "Audio couldnt be uploaded" });
        } else {
            console.log("Audio uploaded successfully");
            res.json({ success: true, msg: "Audio uploaded successfully" });
        }
    });
});

app.post("/api/sendsms", (req, res) => {
    const accountSid = "ACaf95dfdc0fecf583b14ebe1520a26b3e";
    const authToken = "3a80276179d7c1908166660ccaa567dc";
    const client = require("twilio")(accountSid, authToken);
    details = req.body
    try {
        client.messages
            .create({
                body: "Emergency Alert, Amy is in danger. The last known location is https://www.google.com/maps/?q=" + details.lat + "," + details.long,
                from: "+18597656978",
                to: "+918971954555",
            })
            .then((message) => {
                console.log(message.sid);
                res.json({success: true});
            });
    } catch (error) {
        console.log(error);
        res.json({success: false, error: err});
    }
});

app.listen(5001, () => {
    console.log("The server is running on port 5001");
});
