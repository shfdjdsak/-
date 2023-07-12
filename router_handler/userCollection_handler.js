const db = require('../db/index')
const bcrypt = require('bcryptjs')
const jwt = require('jsonwebtoken')
const config = require('../config')

//评论模块处理函数
exports.collection = (req, res) => {
    const fields = {}
    if (req.body.username) fields.username = req.body.username
    if (req.body.title) fields.title = req.body.title
    const sql = 'insert into userCollection set ?'
    db.query(sql, fields, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.affectedRows !== 1) return res.status(400).json('添加失败')
        res.json(fields)
    })
}

// 查询模块处理函数
exports.select = (req, res) => {
    const sql = 'select * from userCollection'
    db.query(sql, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

//删除收藏
exports.delete = (req, res) => {
    const sql = 'delete from userCollection where id=?'
    db.query(sql, req.params.id, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json("删除成功")
    })
}