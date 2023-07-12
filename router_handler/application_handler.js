const db = require('../db/index')
    // const bcrypt = require('bcryptjs')
    // const jwt = require('jsonwebtoken')
const config = require('../config')


//获取热门岗位函数
exports.hotJob = (req, res) => {
    const sql = 'select distinct job from application where job_hot=1'
    db.query(sql, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

//获取名园招聘函数
exports.garden = (req, res) => {
    const sql = 'select distinct garden from application'
    db.query(sql, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

//获取热门岗位信息函数
exports.hotJobDetail = (req, res) => {
    const sql = 'select * from application where job=?'
    db.query(sql, [req.params.job], (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

//获取名园岗位信息函数
exports.gardenDetail = (req, res) => {
    const sql = 'select * from application where garden=?'
    db.query(sql, [req.params.garden], (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

//获取搜索信息函数
exports.searchDetail = (req, res) => {
    const searchDetail = req.params.job
        // console.log(titless)
    var search = "%" + searchDetail + "%"
    const sql = 'select * from application where job like ?';
    db.query(sql, search, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}