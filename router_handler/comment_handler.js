const db = require('../db/index')
const config = require('../config')

//评论模块处理函数
exports.comment = (req, res) => {
    const sql = 'select comment,username from comment where title=?'
    db.query(sql, req.params.title, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

exports.addComment = (req, res) => {
    const fields = {}
    if (req.body.username) fields.username = req.body.username
    if (req.body.title) fields.title = req.body.title
    if (req.body.comment) fields.comment = req.body.comment
    const sql = 'insert into comment set ?'
    db.query(sql, fields, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.affectedRows !== 1) return res.status(400).json('添加失败')
        res.json(fields)
    })
}