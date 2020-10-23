const mysql = require('mysql')

const db = mysql.createConnection({
    host        : process.env.DB_HOST,
    user        : process.env.DB_USER,
    password    : process.env.DB_PASS,
    database    : process.env.DB_DATABASE,
    port        : 3306
})

db.connect((err)=> {
    if(err) {
        console.log(err)
    } else {
        console.log('success bro')
    }
})

module.exports = db