/**
 * Created by cuiruli on 2018/3/18.
 */
function loadCart(){
    "use strict";
    $.getJSON("data/cart/get.php").then(data=>{
        var html="";
        var selected=0;
        var total=0;
        for(var item of data){
            html+=` <tr>
                        <td class="che total">
                        <img data-item_id="${item.item_id}" src="${
                item.is_checked==1?
                    'img/cart/product_true.png':
                    'img/cart/product_normal.png'
                }" alt="">
                        </td>
                        <td>
                            <a href="3_productlist.html?pic_id=${item.spec_id}">
                                <img src="${item.pic}" alt="" class="lf">
                                <span>凡客羽绒服&nbsp;智能温控&nbsp;鹅绒增强2.0版<br>男款&nbsp;${item.spec_slected}</span>
                        </td>
                        <td>${item.item_size}</td>
                        <td>￥${item.spec_bargin}</td>
                        <td>
                            <button class="reduce" data-item_id="${item.item_id}">-</button>
                            <input type="text" value="${item.count}">
                            <button class="add" data-item_id="${item.item_id}">+</button>
                        </td>
                        <td >-</td>
                        <td>￥${(item.count*item.spec_bargin).toFixed(2)}</td>
                        <td ><a href="" class="del" data-item_id="${item.item_id}">删除</a></td>
                    </tr>`
            if(item.is_checked==1){
                total+=item.spec_bargin*item.count;
                selected+=parseInt(item.count);
            }
        }
        $("#cart>table>tbody").html(html);
        $(".totl>.totl-1>span>em").html(selected);
         $(".totl>.totl-2>p>span").html("￥"+total.toFixed(2));

        $("#cart>table>thead>tr>th.quan>img,.totl>.totl-1>.quan1>img").attr("src",
            data.some(function(item){
                return item.is_checked==0
            })||data.length==0?
                'img/cart/product_normal.png':
                'img/cart/product_true.png'
        );


    })
}

$(()=>{
    "use strict";
    $.getJSON("data/user/isLogin.php").then(data=>{
        if(data.ok==1){
            $(".cart>.header>ul").first().css("paddingLeft","10px");
            $(".cart>.header>ul>li:first-child").html("欢迎  , "+data.uname);
            $(".cart>.header>ul>li:first-child").css("color","#9F0306");
        }
    })
})

$(()=>{
    "use strict";
    loadCart();
    $("#cart>table>tbody").on("click",'.reduce,.add',e=>{
       // console.log(1);
        var $span=$(e.target);
        var item_id=$span.data("item_id");
        console.log(item_id);
        var count=parseInt($span.siblings("input").val());
        if($span.is(".add")){
            count++;
        }else{
            count--;
        }
        $.ajax({
            type:"get",
            url:"data/cart/update.php",
            data:{item_id,count},
            dataType:"json",
            success:function(data){
                console.log(data);
                loadCart();
            },
            error:function(){
                alert("网络故障")
            }
        })
    }).on("click",".del",e=>{
        e.preventDefault();
        if(confirm("是否继续删除?")){
            var $a=$(e.target);
            var item_id=$a.data("item_id");
            $.get("data/cart/delete.php",{item_id}).then(()=>{
                loadCart()
            });
        }
    }).on("click",".che>img",e=>{
        //console.log(1);
        var img=$(e.target);
        var item_id=img.data("item_id");
        var check= img.attr("src").endsWith("normal.png")?1:0;

       // console.log(item_id);
        //console.log(check);
        $.ajax({
            type:"get",
            url:"data/cart/check.php",
            data:{item_id:item_id,check:check},
            dataType:"json",
            success:function(){
                //console.log(data);
                loadCart();
            },
            error:function(){
                alert("网络故障")
            }
        })
    });


    $(".totl>.totl-1>a").click((e)=>{
        e.preventDefault();
        $.get("data/cart/deleteChecked.php").then(loadCart);
    })

    $("#cart>table>thead>tr>th.quan>img,.totl>.totl-1>.quan1>img").click(e=>{
        var $img=$(e.target);

        $.get(
            "data/cart/checkAll.php",
            {
                check:$img.attr("src").endsWith("normal.png")?1:0
            }
        ).then(()=>{
            console.log(1);
            loadCart();
        });
    });



})