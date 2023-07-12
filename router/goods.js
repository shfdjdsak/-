//创建路由对象
const express = require('express')
const router = express.Router()
const goodsHandler = require('../router_handler/goods_handler')
    //婴幼奶粉get请求
router.get('/drink', goodsHandler.drink)
router.get('/clothers', goodsHandler.clothers)
router.get('/toy', goodsHandler.toy)




//路由共享
module.exports = router