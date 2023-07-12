const db = require('../db/index')
const config = require('../config')
    //添加购物车
exports.add = (req, res) => {
    const fields = {}
    if (req.body.goodsName) fields.goodsName = req.body.goodsName
    if (req.body.price) fields.price = req.body.price
    const sql = 'insert into shopcar set ?'
    db.query(sql, fields, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.affectedRows !== 1) return res.status(400).json('添加失败')
        res.json(fields)
    })
}

//查询购物车
exports.select = (req, res) => {
    const sql = 'select * from shopcar'
    db.query(sql, req.params.title, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

//删除购物车
exports.delete = (req, res) => {
    const sql = 'delete from shopcar where id=?'
    db.query(sql, req.params.id, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json("删除成功")
    })
}