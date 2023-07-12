//创建路由对象
const express = require('express')
const router = express.Router()
const commentHandler = require('../router_handler/comment_handler')
    //评论功能
router.get('/getComment/:title', commentHandler.comment)
    //发送评论功能
router.post('/addComment', commentHandler.addComment)


module.exports = router