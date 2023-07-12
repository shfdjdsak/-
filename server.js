const express = require("express");
const app = express();

//服务器挂载中间件，解决跨域问题
const cors = require('cors')
app.use(cors())

//服务器挂载中间件，配置解析
const bodyParser = require('body-parser')
app.use(bodyParser.json())
app.use(express.urlencoded({ extended: false }))

//设置路由
//1、用户登录和注册
const userRouter = require('./router/user')
app.use('/api/user', userRouter)
    // 2、修改密码
const passwordRouter = require('./router/user')
app.use('/api/user', passwordRouter)


//1、管理员登录
const adminRouter = require('./router/admin')
app.use('/api/admin', adminRouter)


//今日亮点
const informationRouter = require('./router/information')
app.use('/api/information', informationRouter)
    //今日亮点详情功能
const starNewsDeatilRouter = require('./router/information')
app.use('/api/information', starNewsDeatilRouter)
    //幼教资讯
const preschool_informationRouter = require('./router/information')
app.use('/api/information', preschool_informationRouter)
    //园长宝典
const garden_informationRouter = require('./router/information')
app.use('/api/information', garden_informationRouter)
    //幼师加油站
const teacher_informationRouter = require('./router/information')
app.use('/api/information', teacher_informationRouter)
    //资源中心
const resource_informationRouter = require('./router/information')
app.use('/api/information', resource_informationRouter)
    //主页搜索功能1
const search_informationRouter = require('./router/information')
app.use('/api/information', search_informationRouter)
    //查看收藏
const information_detectCollection = require('./router/userCollection')
app.use('/api/information', information_detectCollection)



//父母好帮手
const img_informationRouter = require('./router/img')
app.use('/api/imgInformation', img_informationRouter)
    //名师
const t_informationRouter = require('./router/img')
app.use('/api/imgInformation', t_informationRouter)
    //名园
const g_informationRouter = require('./router/img')
app.use('/api/imgInformation', g_informationRouter)

// 商城中心---婴幼奶粉
const goods_drink = require('./router/goods')
app.use('/api/goods', goods_drink)
    // 商城中心---幼儿衣物
const goods_clothers = require('./router/goods')
app.use('/api/goods', goods_clothers)
    // 商城中心---幼儿衣物
const goods_toy = require('./router/goods')
app.use('/api/goods', goods_toy)

//互动中心
const ammucation_poll = require('./router/ammucation')
app.use('/api/ammucation', ammucation_poll)
    //修改票数
const update_poll = require('./router/ammucation')
app.use('/api/ammucation', update_poll)


//获取热门岗位
const application_job = require('./router/application')
app.use('/api/application', application_job)
    //获取名园招聘
const application_garden = require('./router/application')
app.use('/api/application', application_garden)
    //了解热门岗位信息
const hotjob_detail = require('./router/application')
app.use('/api/application', hotjob_detail)
    //名园岗位信息
const garden_detail = require('./router/application')
app.use('/api/application', garden_detail)
    //搜索查询信息
const search_detail = require('./router/application')
app.use('/api/application', search_detail)


//主页搜索框收藏
const collection_userCollection = require('./router/userCollection')
app.use('/api/userCollection', collection_userCollection)
    //查询用户收藏
const collection_selectCollection = require('./router/userCollection')
app.use('/api/userCollection', collection_selectCollection)
    //查询用户收藏
const collection_deleteCollection = require('./router/userCollection')
app.use('/api/userCollection', collection_deleteCollection)



//查询用户评论
const comment = require('./router/comment')
app.use('/api/comment', comment)
    //发送用户评论
const push_comment = require('./router/comment')
app.use('/api/comment', push_comment)

// 添加购物车
const shopcar = require('./router/shopcar')
app.use('/api/shopcar', shopcar)
    // 查询购物车
const select_shopcar = require('./router/shopcar')
app.use('/api/shopcar', select_shopcar)
    // 删除购物车
const delete_shopcar = require('./router/shopcar')
app.use('/api/shopcar', delete_shopcar)

//用户招聘申请
const add_user_application = require('./router/user_appliaction')
app.use('/api/user_application', add_user_application)
    //用户查看申请
const select_user_application = require('./router/user_appliaction')
app.use('/api/user_application', select_user_application)

//添加订单
const add_order = require('./router/orders')
app.use('/api/orders', add_order)
    //获取订单
const select_order = require('./router/orders')
app.use('/api/orders', select_order)
    // 删除订单
const delete_order = require('./router/orders')
app.use('/api/orders', delete_order)











































app.listen(3007, function() {
    console.log('api server running at http://127.0.0.1:3007')
})