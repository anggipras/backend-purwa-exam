use ujianmarket;

-- user yang bukan penjual
select u.id, username from users u
join roles r on u.roleid = r.id
where nama = 'user';

-- user yang belum transaksi
select * from users
left join transaksi on users.id = transaksi.userid
where status is null and roleid = '3'
group by users.id;

-- berapa kali transaksi per user
select count(*) as jumlahtrans, userid from transaksi
group by userid;

-- berapa jumlah pengeluaran tiap user
select username, sum(userpayment.totalharga) as expenses from users
join userpayment on users.id = userpayment.userid
group by userid;

-- total transaksi terhadap product
select count(*), p.nama
from products p
join transaksi t on p.id = t.productid
group by p.id;

-- total product yang terjual seluruhnya tiap product
select p.nama, sum(t.quantity) as jumlahprod
from products p
join transaksi t on p.id = t.productid
group by p.id;

-- toko dengan penjualan terbanyak yang status bukan cancel
select namatoko, sum(quantity) as prodterjual from penjual
join transaksi on penjual.id = transaksi.penjualid
where transaksi.status != 'CanceledProses'
group by penjualid;

-- toko dengan jumlah transaksi terbanyak
select namatoko, count(*) as jumlahtrans from penjual
join transaksi on penjual.id = transaksi.penjualid
group by penjualid;

-- total pembelian user yang sudah kebeli
select totalharga, sum(hargabeli), userpayment.id, transaksi.userid from userpayment
join transaksi on userpayment.id = transaksi.paymentid
where transaksi.status not in('CanceledProses','oncart','CanceledPayment')
group by paymentid;


-- SOAL UJIAN
-- Pendapatan diambil dari transaksi detail dengan status finished
select sum(quantity*hargabeli*(0.1)) as totalpend from transaksi
where transaksi.status = 'Finished';

-- potensial pendapatan diambil dari semua status dari transaksi detail perhitungannya diambil dari = quantity * harga *10%
select sum(quantity*hargabeli*(0.1)) as potentialpend from transaksi;

-- penjual terbaik
select namatoko from penjual
join transaksi on penjual.id = transaksi.penjualid
where transaksi.status = 'Finished'
group by penjualid;

-- best category
select namacategory from transaksi
join products on transaksi.productid = products.id
join category_products on products.categoryprodid = category_products.id
where transaksi.status = 'Finished'
group by namacategory
limit 1;

-- jumlah user yang bukan penjual
select count(*) as jumlahusernotseller from users
left join penjual on users.id= penjual.userid
where kategoritoko is null;

-- best 6 product beserta nama toko
select products.image, penjual.namatoko as namapenjual, products.nama as namaproduct, products.informasiproduct as description from products
join transaksi on products.id = transaksi.productid
join penjual on penjual.id = transaksi.penjualid
group by transaksi.productid
order by count(*) desc
limit 6;