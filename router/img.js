//创建路由对象
const express = require('express')
const router = express.Router()
const imgHandler = require('../router_handler/img_handler')
    //父母好帮手get请求
router.get('/parentInformation', imgHandler.parentInformation)
    //名师get请求
router.get('/tInformation', imgHandler.tInformation)
    //名园get请求
router.get('/gInformation', imgHandler.gInformation)




//路由共享
module.exports = router