const db = require('../db/index')
const bcrypt = require('bcryptjs')
const jwt = require('jsonwebtoken')
const config = require('../config')

//注册用户路由处理
exports.register = (req, res) => {
    const userInfo = req.body
    if (!userInfo.userName || !userInfo.userPassword) {
        return res.json({ status: 400, message: '用户名或密码为空' })
    }
    const sql = 'select * from user where userName=?'
    db.query(sql, [userInfo.userName], (err, results) => {
        if (err) {
            return res.send({
                status: 404,
                message: err.message
            })
        }

        if (results.length > 0) {
            return res.status(400).json('用户名已被注册，请更改后重新注册')
        }

        //对用户的密码进行加密，返回值是加密后的字符串
        userInfo.userPassword = bcrypt.hashSync(userInfo.userPassword, 10)
        const sqlStr = 'insert into user set ?'
        db.query(sqlStr, { userName: userInfo.userName, userPassword: userInfo.userPassword }, (err, results) => {
            if (err) {
                return res.send({
                    status: 400,
                    message: err.message
                })
            }
            if (results.affectedRows !== 1) {
                return res.status(400).json('注册用户失败')
            }
            res.json({
                status: 200,
                message: '注册成功',
                userName: userInfo.userName,
                userPassword: userInfo.userPassword,
            })
        })
    })
}

//登录处理函数
exports.login = (req, res) => {
    const userInfo = req.body
    const sql = 'select * from user where userName=?'
    db.query(sql, userInfo.userName, (err, results) => {
        if (err) {
            return res.status(400).json(err)
        }
        if (results.length !== 1) {
            return res.status(400).json('用户不存在')
        }

        const compareResult = bcrypt.compareSync(userInfo.userPassword, results[0].userPassword)
        if (!compareResult) {
            return res.status(400).json('用户名或密码输入错误')
        }

        const user = {
            id: results[0].id,
            userName: results[0].userName,
        }
        const tokenStr = jwt.sign(user, config.jwtSecretKey, {
            expiresIn: '10s'
        })
        res.json({
            status: 200,
            message: '登陆成功',
            token: 'Bearer' + tokenStr
        })
    })
}

//修改密码
exports.uPassword = (req, res) => {
    const userInfo = req.body
    userInfo.userPassword = bcrypt.hashSync(userInfo.userPassword, 10)
    const sql = 'update user set userPassword=? where userName=?'
    db.query(sql, [userInfo.userPassword, req.params.userName], (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.affectedRows !== 1) return res.status(400).json('账号或密码错误，修改失败')
        res.json("ok")
    })
}