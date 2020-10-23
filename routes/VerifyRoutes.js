const Router = require('express').Router()
const {VerifyControllers} = require('./../controllers')

Router.get('/sendotp/:email', VerifyControllers.sendotp)
// Router.post('/verifyotp', VerifyControllers.verifyotp)

module.exports = Router