// 0 引入express
const express=require('express');
// 1 创建路由器对象
var router=express.Router();

// 2 添加路由：
// 注册  get /login
router.get('/login',function(req,res){
    res.send('这是注册');
})
// 3 导出路由器对象
module.exports=router;