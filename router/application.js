//创建路由对象
const express = require('express')
const router = express.Router()
const applicationHandler = require('../router_handler/application_handler')
    //热门岗位get请求
router.get('/hotJob', applicationHandler.hotJob)
    //g名园招聘get请求
router.get('/garden', applicationHandler.garden)
    //获取热门岗位信息get请求
router.get('/hotJobDetail/:job', applicationHandler.hotJobDetail)
    //获取名园岗位信息get请求
router.get('/gardenDetail/:garden', applicationHandler.gardenDetail)
    //获取选择框get请求
router.get('/searchDetail/:job', applicationHandler.searchDetail)

//路由共享
module.exports = router