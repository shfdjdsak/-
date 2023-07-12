const db = require('../db/index')
    // const config = require('../config')
    //添加申请
exports.add = (req, res) => {
    const fields = {}
    if (req.body.name) fields.name = req.body.name
    if (req.body.sex) fields.sex = req.body.sex
    if (req.body.age) fields.age = req.body.age
    if (req.body.graduation) fields.graduation = req.body.graduation
    if (req.body.expreance) fields.expreance = req.body.expreance
    if (req.body.comment) fields.comment = req.body.comment
    if (req.body.application_garden) fields.application_garden = req.body.application_garden
    if (req.body.application_job) fields.application_job = req.body.application_job
    if (req.body.status) fields.status = req.body.status
    const sql = 'insert into user_application set ?'
    db.query(sql, fields, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.affectedRows !== 1) return res.status(400).json('添加失败')
        res.json(fields)
    })
}

//查询申请
exports.select = (req, res) => {
    const sql = 'select * from user_application'
    db.query(sql, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}