const db = require('../db/index')
    // const bcrypt = require('bcryptjs')
    // const jwt = require('jsonwebtoken')
const config = require('../config')

//获取今日亮点信息函数
exports.starNews = (req, res) => {
    const sql = 'select * from information where tid=1'
    db.query(sql, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

//获取幼教咨询信息函数
exports.preschoolInformation = (req, res) => {
    const sql = 'select * from information where tid=2'
    db.query(sql, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

//获取幼教咨询信息函数
exports.gardenInformation = (req, res) => {
    const sql = 'select * from information where tid=3'
    db.query(sql, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

//获取幼师加油站信息函数
exports.teacherInformation = (req, res) => {
    const sql = 'select * from information where tid=4'
    db.query(sql, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

//获取资源中心信息函数
exports.resourceInformation = (req, res) => {
    const sql = 'select * from information where tid=5'
    db.query(sql, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

//获取主页搜索信息函数
exports.searchInformation = (req, res) => {
    const titless = req.params.titless
        // console.log(titless)
    var title = "%" + titless + "%"
    const sql = 'select * from information where title like ?';
    db.query(sql, title, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

//搜索选择功能
exports.selectInformation = (req, res) => {
    const sql = 'select * from information where title=?'
    db.query(sql, req.params.title, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

//今日亮点详情
exports.starNewsDetail = (req, res) => {
    const sql = 'select title,information from information where title=?'
    db.query(sql, req.params.title, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

//查看收藏详情
exports.detectInformation = (req, res) => {
    const sql = 'select * from information where title=?'
    db.query(sql, req.params.title, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}