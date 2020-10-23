const express = require('express')
const app = express()
require('dotenv').config()
const cors=require('cors')
const bearerToken = require('express-bearer-token')

const PORT = process.env.PORT || 7000

const {VerifyRoutes, ReportRoutes, LayoutRoutes} = require('./routes')

app.use(cors())
app.use(bearerToken())
app.use(express.json())
app.use('/verify', VerifyRoutes)
app.use('/report', ReportRoutes)
app.use('/layout', LayoutRoutes)

app.get('/',(req, res)=> {
    res.send('It is working')
})

app.listen(PORT, ()=> console.log('active port '+PORT))