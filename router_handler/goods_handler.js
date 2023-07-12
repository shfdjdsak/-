const db = require('../db/index')
    // const bcrypt = require('bcryptjs')
    // const jwt = require('jsonwebtoken')
const config = require('../config')

//获取父母好帮手信息函数
// exports.parentInformation = (req, res) => {
//     const sql = 'select * from img where tid=1'
//     db.query(sql, (err, results) => {
//         if (err) return res.status(400).json(err)
//         if (results.length === 0) return res.status(200).json('查无数据')

//         res.json(results)

//     })
// }

//获取婴幼儿奶粉信息函数
exports.drink = (req, res) => {
    const sql = 'select * from goods where typeName="drink"'
    db.query(sql, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

//获取幼儿衣物信息函数
exports.clothers = (req, res) => {
    const sql = 'select * from goods where typeName="clothers"'
    db.query(sql, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

//获取幼儿玩具信息函数
exports.toy = (req, res) => {
    const sql = 'select * from goods where typeName="toy"'
    db.query(sql, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}