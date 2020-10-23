const {db} = require('./../connection')
const fs = require('fs')
const {transporter} = require('./../helpers')
const handlebars = require('handlebars')

module.exports = {
    sendotp: (req, res)=> {
        const {email} = req.params
        let otp = Math.random()
        otp = otp * 10000
        otp = parseInt(otp)
        console.log(otp);
        let updateOtp = {
            otp: otp
        }

        // setTimeout(function(){
        //     let otp = Math.random()
        //     otp = otp * 10000
        //     otp = parseInt(otp)
        //     let updateOtp = {
        //         otp: otp
        //     }
            
        //     let sql = `update users set ? where id = ${db.escape(id)}`
        //     db.query(sql, updateOtp, (err)=> {
        //         if (err) return console.log(err);
        //         console.log('berhasil update otp after 20s');
        //     })
        // }, 20000)
        
        let sql = `select * from users where email = ${db.escape(email)}`
        db.query(sql, (err, selectres)=> {
            if (err) return res.status(500).send(err)
            if(selectres.length) {
                let sql = `update users set ? where email = ${db.escape(email)}`
                db.query(sql, updateOtp, (err)=> {
                    if (err) return res.status(500).send(err)
                    sql = `select * from users where email = ${db.escape(email)}`
                    db.query(sql, (err, result)=> {
                        if (err) return res.status(500).send(err)
                        
                        const htmlrender = fs.readFileSync('./template/otp.html','utf8')
                        const template = handlebars.compile(htmlrender)
                        const htmlemail = template({otp: result[0].otp})
        
                        transporter.sendMail({
                            from: "UJIANANGGI <anggiprastianto30@gmail.com>",
                            to: email,
                            subject: "OTP verification",
                            html: htmlemail
                        },(err)=> {
                            if (err) return res.status(500).send(err)
                            res.send(result[0])
                        })
                    })
                })
            } else {
                let obj = {
                    username: 'userbro',
                    email: email,
                    password: '1234',
                    roleid: '3',
                    statusver: 'verified',
                    lastlogin: new Date(),
                    otp: otp
                }
                let sql = `insert into users set ?`
                db.query(sql, obj, (err)=> {
                    if (err) return res.status(500).send(err)
                    sql = `select * from users where email = ${db.escape(email)}`
                    db.query(sql, (err, result)=> {
                        if (err) return res.status(500).send(err)
                        
                        const htmlrender = fs.readFileSync('./template/otp.html','utf8')
                        const template = handlebars.compile(htmlrender)
                        const htmlemail = template({otp: result[0].otp})
        
                        transporter.sendMail({
                            from: "UJIANANGGI <anggiprastianto30@gmail.com>",
                            to: email,
                            subject: "OTP verification",
                            html: htmlemail
                        },(err)=> {
                            if (err) return res.status(500).send(err)
                            res.send(result[0])
                        })
                    })
                })
            }
        })

    }
    // verifyotp: (req, res)=> {
    //     const {otp, id} = req.body
    //     let sql = `select * from users where id = ${db.escape(id)}`
    //     db.query(sql, (err, result)=> {
    //         if (err) return res.status(500).send(err)
    //         if(otp == result[0].otp) {
    //             return res.send('berhasil verifikasi')
    //         } else {
    //             return res.send('gagal verifikasi')
    //         }
    //     })
    // }
}