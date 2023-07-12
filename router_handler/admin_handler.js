const db = require('../db/index')
const bcrypt = require('bcryptjs')
const jwt = require('jsonwebtoken')
const config = require('../config')

//登录处理函数
exports.login = (req, res) => {
    const adminInfo = req.body
    const sql = 'select * from admin where adminName=?'
    db.query(sql, adminInfo.adminName, (err, results) => {
        if (err) {
            return res.status(400).json(err)
        }
        if (results.length !== 1) {
            return res.status(400).json('用户不存在')
        }

        if (adminInfo.adminPassword != results[0].adminPassword || adminInfo.adminName != results[0].adminName) {
            return res.status(400).json('用户名或密码输入错误')
        }

        const admin = {
            id: results[0].id,
            adminName: results[0].adminName,
        }
        const tokenStr = jwt.sign(admin, config.jwtSecretKey, {
            expiresIn: '10h'
        })
        res.json({
            status: 200,
            message: '登陆成功',
            token: 'Bearer' + tokenStr
        })
    })
}