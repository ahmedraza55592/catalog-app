const express = require('express');

const router = express.Router();

//Get All Products
router.get('/', (req, res, next) => {

    res.send("All Products")
    try {
        
    } catch (err) {
        next(err);
    }
});

//Get one Products
router.get('/:id', (req, res, next) => {

    res.send("Get One Product")
    try {
        
    } catch (err) {
        next(err);
    }
});

//Add one Product
router.post('/', (req, res, next) => {

    res.send("Product Created")
    try {
        
    } catch (err) {
        next(err);
    }
});

//Update a Product
router.put('/:id', (req, res, next) => {

    res.send("Update one Product")
    try {
        
    } catch (err) {
        next(err);
    }
});

//Delete a Product
router.delete('/:id', (req, res, next) => {

    res.send("Delete one Product")
    try {
        
    } catch (err) {
        next(err);
    }
});


module.exports = router

