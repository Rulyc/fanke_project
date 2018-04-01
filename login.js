//添加两种方式的登录结果
$(".select_login>ul>li:last").click(function(){
	if($(".kuaideng").is(":hidden")){
		$(this).addClass("li1");
		$(".select_login>ul>li:first").removeClass("li1");
		$(".kuaideng").css("display","block");
		$(".pudeng").css("display","none");


	}
});
$(".select_login>ul>li:first").click(function(){
	if($(".pudeng").is(":hidden")){
		$(this).addClass("li1");
		$(".select_login>ul>li:last").removeClass("li1");
		$(".pudeng").css("display","block");
		$(".kuaideng").css("display","none");


	}
});

// 模块二：用户登录----普通登录
//功能：获取用户输入用户名及密码通过ajax发送
// 1.获取登录按钮并且绑定点击事件
$(()=>{
    $("#main>.middle>.right>.denglu>input[type='submit']").click(function(e){
    	"use strict";
   	 	e.preventDefault();//阻止事件的默认行为
   		 // console.log(1);//用于测试
    	//2.获取用户输入的用户名和密码
    	let uname=$("[name='uname']").val();
    	let upwd=$("[name='upwd']").val();
    	let phone=$("[name='phone']").val();
    	//console.log("用户名："+uname);
    	//console.log("密码："+upwd);
        //3.创建正则表达式验证
        let reg=/^1[3,4,5,7,8]\d{9}$/;
        if(!reg.test(phone)){
            $(".kuideng>span").css("display","block");
        }

        //3.如果验证通过发送ajax请求login.php
        $.ajax({
            type:"POST",
            url:"data/user/login.php ",
            data:{uname:uname,upwd:upwd},
            success:function(data){
                "use strict";
                $("#main").serialize();
                //console.log(data);
				if(data.code==-1){
					//1.验证用户名是否为空
                    if(uname=="") {
                        $(".pudeng>p:first").next().css("display","block");
                        $(".pudeng>p:first").next().html("用户名不能为空");
                    }else{
                        $(".pudeng>p:first").next().css("display","none");
                        //2.验证密码是否是否为空
                        if(upwd=="") {
                            $(".pudeng>p:first").next().next().next().css("display","block");
                        }else{
                            $(".pudeng>p:first").next().next().next().css("display","none");
                        }
					}
                    if(uname!=null&&upwd!=null){
                    	//console.log(data.msg);
						let timer=null;
                        let i=3;
                        timer=setInterval(function(){
                            let k=0;
                            i--;
                            // console.log(i);
                            $("#main>.middle>.right>.denglu>input[type='submit']").attr("value","正在验证...");
                            if(i<0){
                                clearInterval(timer);
                                $("#main>.middle>.right>.denglu>input[type='submit']").attr("value","登录");
                                console.log(data.msg);
                                $("#g").css("display","block")
                                $("#g").html(data.msg);
                            }
                        },500);
					}
				}else {
                    $("#g").css("display", "none");
                    //console.log(data.msg);
                    let timer = null;
                    let i = 3;
                    timer = setInterval(function () {
                        i--;
                        $("#main>.middle>.right>.denglu>input[type='submit']").attr("value", "正在验证...");
                        if (i < 0) {
                            clearInterval(timer);
                            $("#main>.middle>.right>.denglu>input[type='submit']").attr("value", "登录");
                                window.location=document.referrer;
                                console.log(document.referrer)
                        }
                    }, 500);
                }
            },
            error:function(){
                "use strict";
                alert("请检查网络错误");
            }
        });
	});

});



//模块三：用户登录-----快速登录




