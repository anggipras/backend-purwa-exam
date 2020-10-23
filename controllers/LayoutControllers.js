const {db} = require('./../connection')

module.exports = {
    bestsixproducts: (req, res)=> {
        let sql = `select products.image, penjual.namatoko as namapenjual, products.nama as namaproduct, products.informasiproduct as description from products
        join transaksi on products.id = transaksi.productid
        join penjual on penjual.id = transaksi.penjualid
        group by transaksi.productid
        order by count(*) desc
        limit 6`
        db.query(sql, (err, bestproducts)=> {
            if (err) return res.status(500).send(err)
            return res.send(bestproducts)
        })
    }
}