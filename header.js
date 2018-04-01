$(()=>{//加载页头
    $("#header").load("header.html",function(){
        //功能模块一、判断是否登录
        $.getJSON("data/user/isLogin.php").then(data=>{
            if(data.ok==0){
                $("#main_header>.one1>.one1_ul>ul>li:first").html("您好，欢迎光临凡客诚品！");
            }
            else{
               	$("#main_header>.one1>.one1_ul>ul>li:first").css("paddingLeft","10px");
                $("#main_header>.one1>.one1_ul>ul>li:first").html("欢迎  , "+data.uname);
                $("#main_header>.one1>.one1_ul>ul>li:first").css("color","#9F0306");
                $("#main_header>.one1>.one1_ul>ul>li.block").css("display","none");
                $("#main_header>.one1>.one1_ul>ul>li.display").css("display","block");
                //同步购物车中商品选中的总数量
                $.getJSON("data/cart/get.php").then(data=>{
                    "use strict";
                    var selected=0;
                    for(var item of data) {
                        if (item.is_checked == 1) {
                            selected += parseInt(item.count);
                        }
                    }
                    $("#count").html("("+selected+")");

                });
            }
        });


        //功能模块二、下线
        $("#main_header>.one1>.one1_ul>ul>li.display").on("click","a",function(){
            "use strict";
           $.get("data/user/logout.php").then(()=>{

            });
          window.location.reload(true);
        })

		//功能模块三：实现下拉菜单的动画
		$(".one3>ul>li").mouseover(function(){
			let $tar=$(this);//console.log($tar);//测试用
			let $ul=$tar.find("ul");
			let $lis=$ul.children();//console.log($lis);//测试用
			let i=$lis.length;//console.log(i);//测试用
			$ul.css({"height":i*40,"border-top":"5px solid red","opacity":1});
		}).mouseout(function(){
			let $tar=$(this);//
			let $ul=$tar.find("ul");
			let $lis=$ul.children();
			$ul.css({"height":0,"border-top":0,"opacity":0});
		})
	})
});