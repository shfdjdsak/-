//创建路由对象
const express = require('express')
const router = express.Router()
const ammucationHandler = require('../router_handler/ammucation_handler')
    //作品get请求
router.get('/pollAll', ammucationHandler.pollAll)
    //修改票数
router.post('/updatePoll/:id', ammucationHandler.updatePoll)

//路由共享
module.exports = router