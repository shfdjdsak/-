//创建路由对象
const express = require('express')
const router = express.Router()
const userHandler = require('../router_handler/user_handler')
    //注册
router.post('/register', userHandler.register)
    //登录
router.post('/login', userHandler.login)
    //修改密码
router.post('/updatePassword/:userName', userHandler.uPassword)
    //路由共享
module.exports = router