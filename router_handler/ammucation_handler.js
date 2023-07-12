const db = require('../db/index')
    // const bcrypt = require('bcryptjs')
    // const jwt = require('jsonwebtoken')
const config = require('../config')


//获取作品信息函数
exports.pollAll = (req, res) => {
    const sql = 'select * from ammucation'
    db.query(sql, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

//修改票数
exports.updatePoll = (req, res) => {
    const polls = req.body
        // userInfo.userPassword = bcrypt.hashSync(userInfo.userPassword, 10)
    const sql = 'update ammucation set poll=? where id=?'
    db.query(sql, [polls.poll, req.params.id], (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.affectedRows !== 1) return res.status(400).json('修改成功')
        res.json("ok")
    })
}