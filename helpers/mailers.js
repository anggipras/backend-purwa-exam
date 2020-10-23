const nodemailer = require('nodemailer')
let transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
        user: 'anggiprastianto30@gmail.com',
        pass: 'scftufihozxzbjcg'
    },
    tls : {
        rejectUnauthorized: false
    }
})

module.exports = transporter