const {db} = require('./../connection')

module.exports = {
    pendapatan: (req, res)=> {
        let sql = `select sum(quantity*hargabeli*0.1) as totalpend from transaksi
        where transaksi.status = 'Finished'`
        db.query(sql, (err, finishearn)=> {
            if (err) return res.status(500).send(err)
            let sql = `select sum(quantity*hargabeli*(0.1)) as potentialpend from transaksi`
            db.query(sql, (err, potentialearn)=> {
                if (err) return res.status(500).send(err)
                return res.send({finishearn: finishearn[0], potentialearn: potentialearn[0]})
            })
        })
    },
    bestseller: (req, res)=> {
        let sql = `select namatoko from penjual
        join transaksi on penjual.id = transaksi.penjualid
        where transaksi.status = 'Finished'
        group by penjualid`
        db.query(sql, (err, bestsell)=> {
            if (err) return res.status(500).send(err)
            return res.send(bestsell[0])
        })
    },
    bestcateg: (req, res)=> {
        let sql = `select namacategory from transaksi
        join products on transaksi.productid = products.id
        join category_products on products.categoryprodid = category_products.id
        where transaksi.status = 'Finished'
        group by namacategory
        limit 1`
        db.query(sql, (err, bestcat)=> {
            if (err) return res.status(500).send(err)
            return res.send(bestcat[0])
        })
    },
    usernotseller: (req, res)=> {
        let sql = `select count(*) as jumlahusernotseller from users
        left join penjual on users.id= penjual.userid
        where kategoritoko is null`
        db.query(sql, (err, notseller)=> {
            if (err) return res.status(500).send(err)
            return res.send(notseller[0])
        })
    }
}