const mysql = require("mysql")
    // 创建数据库连接对象
const db = mysql.createPool({
    host: '127.0.0.1',
    user: 'root',
    password: 'liuxue200001439',
    database: 'education'
})

// 向外共享db数据库连接对象
module.exports = db