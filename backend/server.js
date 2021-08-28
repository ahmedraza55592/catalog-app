const express = require("express")
const mongoose = require('mongoose')
const userRoutes = require('./routes/userRoute')
require('dotenv/config')


const app = express()

app.get('/', (req, res) => {
    res.send("Hello from HomePage")

});
mongoose.connect(process.env.DB_CONNECTION_STRING, (req, res)=> {
    console.log("Connected to database");
});

app.use('/api', userRoutes);

app.listen(process.env.PORT, (req, res) => {
    console.log(`Listening to PORT ${process.env.PORT}`);
});