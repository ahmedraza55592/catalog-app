const express = require('express')

const router = express.Router()

router.get('/signup', (req, res) => {
    res.send('Hello from Signup')
});

router.get('/users', (req, res) => {
    let users = ['Ahmed', 'Raza'];
    res.send(users)
});

module.exports = router