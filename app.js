// 引入express
const express=require('express');
// 引入路由器
const userRouter=require('./routers/user.js');
// 引入body-parser
const bodyParser=require('body-parser');

// 1 创建web服务器,设置端口号
var server=express();
server.listen(8080);

// 2 托管静态资源到public下
server.use(express.static('public'));

// 使用body-parser中间件，将post请求的数据格式化为对象
server.use( bodyParser.urlencoded({
    extended:false
}) );

// 使用路由器
server.use('/user',userRouter);