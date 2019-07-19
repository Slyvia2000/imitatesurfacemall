// 引入express
const express=require('express');
// 引入连接池模块
const pool=require('../pool.js')


// 1 创建路由器对象
var router=express.Router();


// 2 添加路由：

// 2.1 用户注册
router.get('/reg',function(req,res){
    var obj=req.query;
    // 验证值是否为空
    if(!obj.uname){ res.send({code:401,msg:'uname required'}); return };
    if(!obj.upwd){ res.send({code:402,msg:'upwd required'}); return };
    if(!obj.phone){ res.send({code:403,msg:'phone required'}); return };
    if(!obj.email){ res.send({code:404,msg:'email required'}); return };
    // 执行SQL语句
    pool.query('INSERT INTO surface_user SET ?',[obj],function(err,result){
        if(err) throw err;
        console.log(result);
        // 判断是否注册成功
        if(result.affectedRows>0){
            res.send( {code:200,msg:'reg suc'} );
        }
    });
});
// 2.2 用户登录


// 3 导出路由器对象
module.exports=router;