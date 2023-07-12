//创建路由对象
const express = require('express')
const router = express.Router()
const adminHandler = require('../router_handler/admin_handler')
    //登录
router.post('/login', adminHandler.login)
    //路由共享
module.exports = router