//创建路由对象
const express = require('express')
const router = express.Router()
const ordersHandler = require('../router_handler/orders_handler')
    //添加订单
router.post('/addOrder', ordersHandler.add)
    //获取订单
router.get('/selectOrder', ordersHandler.select)
    //删除订单
router.post('/deleteOrder', ordersHandler.delete)
    //路由共享
module.exports = router