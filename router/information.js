//创建路由对象
const express = require('express')
const router = express.Router()
const informationHandler = require('../router_handler/information_handler')
    //今日亮点get请求
router.get('/starNews', informationHandler.starNews)
    //今日亮点详情get请求
router.get('/starNewsDetail/:title', informationHandler.starNewsDetail)
    //幼教资讯get请求
router.get('/preschool', informationHandler.preschoolInformation)
    //园长宝典get请求
router.get('/garden', informationHandler.gardenInformation)
    //幼师加油站get请求
router.get('/teacher', informationHandler.teacherInformation)
    //资源中心get请求
router.get('/resource', informationHandler.resourceInformation)
    //搜索功能get请求
router.get('/search/:titless', informationHandler.searchInformation)
    //搜索选择功能get请求
router.get('/search_select/:title', informationHandler.selectInformation)
    //查看收藏get请求
router.get('/detect/:title', informationHandler.detectInformation)





//路由共享
module.exports = router