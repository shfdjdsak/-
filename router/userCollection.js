//创建路由对象
const express = require('express')
const router = express.Router()
const userCollectionHandler = require('../router_handler/userCollection_handler')
    //收藏功能
router.post('/addcollection', userCollectionHandler.collection)
    //评论查询功能
router.get('/selectcollection', userCollectionHandler.select)
    //删除收藏
router.post('/deletecollection/:id', userCollectionHandler.delete)

module.exports = router