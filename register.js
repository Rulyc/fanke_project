$(()=>{
    "use strict";
    //1:创建正则表达式验证
    var reg =/^1[34578]\d{9}$/ ;
    $("[name='phone']").focus(function(){
        $("[name='phone']").blur(function(){
            var  phone=$("[name='phone']").val();
            if (!reg.test(phone)) {
                $("[name='phone']").parent().next().html("用户名格式不正确，请检查");
                $("[name='phone']").parent().next().css("visibility", "visible");

            }else{
                $("[name='phone']").parent().next().css("visibility", "hidden");
            }
        })
    })

    $("[name='upwd']").focus(function() {
        $("[name='upwd']").blur(function () {
            var upwd = $("[name='upwd']").val();
            if (upwd.length < 6) {
                $("[name='upwd']").parent().next().css("visibility", "visible");
            } else {
                $("[name='upwd']").parent().next().css("visibility", "hidden");
            }
        })
    })
    $("[name='cpwd']").focus(function() {
        $("[name='cpwd']").blur(function () {
            var cpwd = $("[name='cpwd']").val();
            var upwd = $("[name='upwd']").val();
            if (cpwd != upwd) {
                $("[name='cpwd']").parent().next().css("visibility", "visible");
            } else {
                $("[name='cpwd']").parent().next().css("visibility", "hidden");
            }
        })
    })

    $('.change').click(function(){
        $(this).attr("src")=="img/cart/product_normal.png"?
            $(this).attr("src","img/cart/product_true.png"):
            $(this).attr("src","img/cart/product_normal.png");
        $('.change').attr("src")=="img/cart/product_normal.png"?
            $(".colorput").attr("disabled","disabled")&&$(".colorput").css('background','#aaa'):
            $(".colorput").removeAttr("disabled")&&$(".colorput").css('background','#b42025');

    })


    $("#drag").mouseleave(function(){
        var a= $("#drag").children(".drag_text").html() ;
//点击立即注册按钮，向php提交数据
    $(".colorput").click(function(e) {
       // console.log(1)
        e.preventDefault();
        var phone = $("[name='phone']").val();
        var upwd = $("[name='upwd']").val();
        //阻止事件的默认行为

        $.ajax({
            type: "POST",
            url: "data/user/register.php",
            data: {phone: phone, upwd: upwd,a:a},

            //dataType:"json"
        }).then((data) => {
                console.log(a);
                if(data.code==1){
                    location.href = "login.html";//自动跳转主程序

                }else if(data.code==-2){
                    $("[name='phone']").parent().next().html("用户名已被占用");
                    $("[name='phone']").parent().next().css("visibility", "visible");
                }
            })

        })
    })
})




