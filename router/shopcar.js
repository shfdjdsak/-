//创建路由对象
const express = require('express')
const router = express.Router()
const shopCarHandler = require('../router_handler/shopcar_handler')
    //添加购物车
router.post('/addshopcar', shopCarHandler.add)
    //查询购物车
router.get('/selectshopcar', shopCarHandler.select)
    //删除购物车
router.post('/deleteshopcar/:id', shopCarHandler.delete)
    //路由共享
module.exports = router