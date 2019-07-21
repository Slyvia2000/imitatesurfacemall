// 引入express
const express=require('express');
// 引入连接池模块
const pool=require('../pool.js');

// 1 创建路由器对象
var router=express.Router();


// 2 添加路由

// 2.1 用户登录
router.post('/login',(req,res)=>{
    // 接收数据
    var $uname=req.body.uname;
    var $upwd=req.body.upwd;
    console.log(req.body);
    // 验证数据
    if(!$uname){ res.send({code:401,msg:'uname required'}); return;};
    if(!$upwd){ res.send({code:402,msg:'upwd required'}); return;};
    // 查询数据库
    var sql='SELECT * FROM surface_user WHERE uname=? AND upwd=?';
    pool.query(sql,[$uname,$upwd],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send({code:200,msg:'login suc'});
        }else{
            res.send({code:301,msg:'login err'});
        };
    });
});

// 2.2 用户列表查询
router.get('/list',(req,res)=>{
    // 查询数据库
    var sql='SELECT * FROM surface_user';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    });
});



// 3 导出路由器对象
module.exports=router;