const db = require('../db/index')
const config = require('../config')
    //添加购物车
exports.add = (req, res) => {
    const fields = {}
    if (req.body.goodsName) fields.goodsName = req.body.goodsName
    if (req.body.price) fields.price = req.body.price
    if (req.body.quantity) fields.quantity = req.body.quantity
    if (req.body.sumPrice) fields.sumPrice = req.body.sumPrice
    const sql = 'insert into orders set ?'
    db.query(sql, fields, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.affectedRows !== 1) return res.status(400).json('添加失败')
        res.json(fields)
    })
}

//获取订单
exports.select = (req, res) => {
    const sql = 'select * from orders'
    db.query(sql, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

//删除订单
exports.delete = (req, res) => {
    const sql = 'delete from orders'
    db.query(sql, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json("删除成功")
    })
}