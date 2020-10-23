const Router = require('express').Router()
const {LayoutControllers} = require('./../controllers')

Router.get('/bestsixproducts', LayoutControllers.bestsixproducts)

module.exports = Router