//创建路由对象
const express = require('express')
const router = express.Router()
const adminHandler = require('../router_handler/user_appliaction_hadler')
    //添加申请
router.post('/addApplication', adminHandler.add)
    //查询申请功能
router.get('/selectApplication', adminHandler.select)
    //路由共享
module.exports = router