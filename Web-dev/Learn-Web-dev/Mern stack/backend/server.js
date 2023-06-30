const express = require("express");
require("dotenv").config();
const workoutRoutes = require('./routes/workout')
const mongoose = require("mongoose");

// express app
const app = express();

// middleware
app.use(express.json())

app.use((req, res, next) => {
  console.log(req.path, req.method)
  next()
})

app.get('/', (req, res) => {
    res.send('Home Page backend')
})

// routes
app.use('/api/workouts', workoutRoutes)

mongoose.connect(process.env.MONGO_URI).then(() => {
    
    console.log("connected to mongoDB")        
    
    //listen for a port
    app.listen(process.env.PORT, () => {
        console.log("listening on port",process.env.PORT);
        }
    );

}).catch((err) => {
    console.log(err)
})
    