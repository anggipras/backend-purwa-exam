const Router = require('express').Router()
const {ReportControllers} = require('./../controllers')

Router.get('/pendapatan', ReportControllers.pendapatan)
Router.get('/bestseller', ReportControllers.bestseller)
Router.get('/bestcateg', ReportControllers.bestcateg)
Router.get('/usernotseller', ReportControllers.usernotseller)

module.exports = Router