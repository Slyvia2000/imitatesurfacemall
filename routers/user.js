// 引入express
const express=require('express');
// 引入连接池模块
const pool=require('../pool.js');


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
router.post('/login',function(req,res){
    // 获取post请求的数据
    var obj=req.body;
    // 验证是否为空
    if(!obj.uname){ res.send({code:401,msg:'uname required'}); return };
    if(!obj.upwd){ res.send({code:402,msg:'upwd required'}); return };
    // 连接数据库
    pool.query('SELECT * FROM surface_user WHERE uname=? AND upwd=?',[obj.uname,obj.upwd],function(err,result){
        if(err) throw err;
        // 判断查询结果数组长度是否大于0
        if(result.length>0){
            res.send({code:200,msg:'login suc'});
        }else{
            res.send({code:301,msg:'login err'});
        }
    })
});

// 2.3 用户信息修改
router.get('/update',function(req,res){
    // 获取请求的数据
    var obj=req.query;
    // 验证数据是否为空
    // 版本1
    /*
    if(!obj.uid){ res.send({code:401,msg:'uid required'}); return;}
    if(!obj.phone){ res.send({code:402,msg:'phone required'}); return;}
    if(!obj.email){ res.send({code:403,msg:'email required'}); return;}
    if(!obj.user_name){ res.send({code:404,msg:'user_name required'}); return;}
    if(!obj.gender){ res.send({code:405,msg:'gender required'}); return;}
    */
    // 版本2：遍历对象进行验证
    var n=400;
    for(var key in obj){
        n++;
        if(!obj[key]){
            res.send({code:n,msg:`${key} required`});
            return;
        };
    };
    // 连接数据库
    var sql='UPDATE surface_user SET phone=?,email=?,user_name=?,gender=? WHERE uid=?'
    pool.query(sql,[obj.phone,obj.email,obj.user_name,obj.gender,obj.uid],function(err,result){
        if(err) throw err;
        if(result.affectedRows>0){
            res.send({code:200,msg:'update suc'});
        }else{
            res.send({code:301,msg:'update err'});
        }
    })
});

// 2.4 用户检索
router.get('/detail',function(req,res){
    // 获取请求数据
    var obj=req.query;
    // 验证数据是否为空
    if(!obj.uid){ res.send({code:401,msg:'uid required'}); return; };
    // 连接数据库
    pool.query('SELECT * FROM surface_user WHERE uid=?',[obj.uid],function(err,result){
        if(err) throw err;
        res.send(result);
    })
});

// 2.5 用户列表查询
router.get('/list',function(req,res){
    // 获取请求数据
    var obj=req.query;
    // 将传递的值转为整型
    obj.pno=parseInt(obj.pno);
    obj.count=parseInt(obj.count);
    // 验证数据如果为空，设置默认值
    if(!obj.pno) obj.pno=1;
    if(!obj.count) obj.count=3;
    // 连接数据库
    var start=(obj.pno-1)*obj.count
    var sql='SELECT * FROM surface_user LIMIT ?,?';
    pool.query(sql,[start,obj.count],function(err,result){
        if(err) throw err;
        res.send(result);
    })
});

// 2.6 删除用户
router.get('/delete',function(req,res){
    // 获取请求的数据
    var obj=req.query;
    // 验证数据是否为空
    if(!obj.uid){ res.send({code:401,msg:'uid required'}); return; };
    // 连接数据库
    var sql='DELETE FROM surface_user WHERE uid=?'
    pool.query(sql,[obj.uid],function(err,result){
        if(err) throw err;
        if(result.affectedRows>0){
            res.send({code:200,msg:'delete suc'});
        }else{
            res.send({code:301,msg:'delete err'});
        };
    });

})


// 3 导出路由器对象
module.exports=router;