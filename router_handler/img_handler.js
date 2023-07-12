const db = require('../db/index')
    // const bcrypt = require('bcryptjs')
    // const jwt = require('jsonwebtoken')
const config = require('../config')

//获取父母好帮手信息函数
exports.parentInformation = (req, res) => {
    const sql = 'select * from img where tid=1'
    db.query(sql, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')

        res.json(results)

    })
}

//获取名师信息函数
exports.tInformation = (req, res) => {
    const sql = 'select * from img where tid=3'
    db.query(sql, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

//获取名园信息函数
exports.gInformation = (req, res) => {
    const sql = 'select * from img where tid=2'
    db.query(sql, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}