/**
 * Created by web-01 on 2018/3/6.
 */
//功能模块1
$(()=>{
    "use strict";
    $.ajax({
        type:"GET",
        url:"data/product/getProductById.php",
        data:location.search.slice(1),
        dataType:"json"
    }).then(data=>{
        var {product,pics}=data;
        //1.加载产品的特惠价格
        var html=`<p>特惠价：￥<span>${product.spec_bargin}</span> 充100返100，点击充值</p>`;
        $(".col-1").html(html);
        var i=product.spec_id-1;
       $(".col-2>ul").children(":eq("+i+")").addClass("currentS");

        //2.加载产品的尺码
        $(".col-3>ul").html(`<p>尺码:</p>
                        <li>${product.spec_sizeS}</li>
                        <li>${product.spec_sizeM}</li>
                        <li>${product.spec_sizel}</li>
                        <li>${product.spec_sizeXL}</li>`);
        //3.加载是否已选
        $(".col-5").html(` <p>已选：</p>
                     <span>${product.spec_slected},<strong>现在有货</strong></span>`);
        //4。加载小图
        var html="";
        for(var pic of pics){
            html+=`<li><img src="${pic. pic_sImg}" data-md="${pic.pic_mImg}" data-lg="${pic.pic_bImg}"></li>`
        }

        //5.实现图片超过5张，会隐藏，并且出现按钮
        var ul_Pic=$("#main>.search>.left_nav>ul");
        var LIHEIGHT=68,OFFSET=20,moved=0,
            //aDown=$("#main>.search>.left_nav>.down"),
          //  aTop=$("#main>.search>.left_nav>.upper"),
            aShow=$("#main>.search>.left_nav>.show ");

        if(pics.length>=5){
            console.log(1);
            var h=LIHEIGHT*5+"px";
            ul_Pic.css("height",h);
            aShow.css("display","block");
            ul_Pic.css("overflow","hidden");
        }else{
            var h=LIHEIGHT*pics.length+"px";
            ul_Pic.css("height",h);
        }
        ul_Pic.html(html);
        var lgImg=$(".big-img");
        var mdImg=$(".mid_img>img");
        var sMask=$(".mid_img>.suMask");
        var mask=$(".mid_img>.op");
        var MSIZE=150,MAX=400-150;
        mdImg.attr("src",pics[0].pic_mImg);
        //var l=`url(${pics[0].pic_bImg})`;
        lgImg.css("backgroundImage",`url(${pics[0].pic_bImg})`);
            ul_Pic.mouseover(function(e){
                if(e.target.nodeName==="IMG"){
                    var {md,lg}=e.target.dataset;
                   // console.log(e);
                    mdImg.attr("src",md);
                   // var l1=`url(${lg})`;
                   lgImg.css("backgroundImage",`url(${lg})`);
                }
            })
        sMask.mouseover(function(){
            mask.css("display","block");
            lgImg.css("display","block");
        })
        sMask.mouseout(function(){
            mask.css("display","none");
            lgImg.css("display","none");
        })

        sMask.mousemove(function(e){
            var offsetX=e.offsetX;
            var offsetY=e.offsetY;
           // console.log(e.offsetX);
            var top=offsetY-MSIZE/2,
                left=offsetX-MSIZE/2;
            if(top<0){
                top=0;
            }else if(top>MAX){
                top=MAX;
            }
            if(left<0){
                left=0;
            } else if(left>MAX){
                left=MAX;
            }
            var top2=top+"px";
            var left2=left+"px";
            mask.css("top",top2);
            mask.css("left",left2);
            var top1=-21/20*top+"px";
            var left1=-21/20*left+"px";
            //lgImg.css({"backgroundRepeat":"no-repeat"});
            lgImg.css({"backgroundPositionX":left1});

            lgImg.css({"backgroundPositionY":top1});
        })


        //功能模块5 加入购物车
        $(".col-3>ul").on("click","li",e=>{
            "use strict";
            var $a=$(e.target);
            // console.log($a);
            //选择尺码
            $a.addClass('currentS').siblings().removeClass('currentS');
        })
        $('.joinCart').click(e=>{
            "use strict";
            e.preventDefault();
            //获取选中的衣服颜色
            //var spec_slected=$('.col-2>ul>li.currentS>a>.color_sel').html();
            var spec_id=Number(product.spec_id);
           console.log(spec_id);
            //获取选中的型号
            var spec_size="'"+$('.col-3>ul>li.currentS').html()+"'";
           //console.log(spec_size);
            var  count=Number($("option:selected").val());
            console.log(count)
            if(spec_id!=null&&(spec_size!=null||spec_size!=undefined)&&count!=null){
                $.ajax({
                    type:"GET",
                    url:'data/cart/add.php',
                    data:{spec_id:spec_id,count:count,spec_size:spec_size},
                    success:function(data){
                        //console.log(333);
                        //alert(data.msg);
                        location.href = "cart.html";//自动跳转主程序
                    },
                    error:function(err){
                         console.log(err);
                     }
                })

            }else{
                alert("请选择衣服颜色、尺码");
            }

        })

    })

})

//功能模块2：获取衣服详情
$(()=>{
    "use strict";
    $.ajax({
        type:"GET",
        url:"data/product/getDetailPic.php",
        success:function(data){
            //console.log(data);
            var html="";
            var html1="";
            var html2="";
            var html3="";
            for(var i=0;i<data.length;i++){
                if(i<4){
                    html+=`<img src="${data[i].yr_img}" alt="">`;
                }else if(i<14){
                    html1+=`<img src="${data[i].yr_img}" alt="">`;
                }else if(i<19){
                    html2+=`<img src="${data[i].yr_img}" alt="">`;
                }else{
                    html3+=`<img src="${data[i].yr_img}" alt="">`;
                }
            }
            $("#miter").html(html);
            $("#technical").html(html1);
            $("#detial").html(html2);
            $("#clean").html(html3);
        },
        error:function(){
            alert("网络故障请检查");
        }
    })
})

//功能模块3
//获取推荐列表
$(()=>{
    "use strict";
    $.ajax({
        type:"GET",
        url:"data/product/getRecom.php",
        success:function(data){
            //console.log(data);
            var html="";
           for(var p of data){
               html+=`
                    <div>
                        <img src="${p.recom_img}" alt="">
                        <p>${p.recom_title}</p>
                        <p>售价￥${p.recom_price}</p>
                    </div>
               `
           }
           $("#main>.recom>.recom_product>.con").html(html);
        },
        error:function(){
            alert("网络故障请检查");
        }
    })
})

//功能模块4，获取评论
function loadProductByPage(pno,pageSize){
    "use strict";
    $.ajax({
        type:"POST",
        url:"data/product/getList.php",
        data: {pno:pno, pageSize: pageSize},
        success:function(output){
            var {data,pno,pageCount}=output;
            var html="";
            for(var p of data){
                html+=`
                    <div class="tall">
                        <div>
                            <p>${p.recom_p}</p>
                            <p>${p.recom_date}</p>
                        </div>
                        <div>
                            <ul>
                                <li>颜色：${p.recom_color}</li>
                                <li>尺码： ${p.recom_size}</li>
                                <li>身高：${p.recom_tall}</li>
                                <li>体重：${p.recom_weight}</li>
                                <li>&lt;${p.recom_good} &gt;</li>
                            </ul>
                        </div>
                        <div class="user">
                            <p>${p.recom_huiyuan}</p>
                            <span class="green">${p.recom_user}</span>
                        </div>
                    </div>
               `
            }
            $("#seak>.dashed").html(html);
            var html=`<a href="javascript:;" class="previous">上一页</a>`;
            for(var i=1;i<=pageCount;i++){
                html+=`<a href="javascript:;" class=${i==pno?"current":""}>${i}</a>`;
            }
            html+=`<a href="javascript:;" class="next">下一页</a>`;
            $(".ye").html(html);
            var previous = $(".ye>a:first-child");
            var next = $(".ye>a:last-child");
            if(pno==1){
                previous.css("visibility","hidden")
            }else {
                previous.css("visibility", "visible")
            }
            if(pno==pageCount){
                next.css("visibility","hidden")
            }
            else{
                next.css("visibility", "visible")
            }
        },
        error:function(){
            alert("网络故障请检查");
        }
    })
}
loadProductByPage(1,6);
//写上一页一下页的点击事件
$(()=>{
    $(".ye").click(function(e){
        if(e.target.nodeName=="A"){
            var a=e.target;
                if(/previous|next/.test(a.className)){
                    var i = parseInt($(".ye>a.current").html());
                    if(a.className=="previous"){
                        loadProductByPage(i-1,6);
                    }else{
                        loadProductByPage(i+1,6);
                    }
                }else{
                    loadProductByPage(a.innerHTML,6);
                }
            }

    });
})









