window.onscroll=function(){
			let scrollTop=document.documentElement.scrollTop || document.body.scrollTop;
			let ul=document.querySelector("#main>.waitao_nav>ul");
			let lis=ul.children;
			let nav=document.querySelector("#main>.waitao_nav");
			let nav1=document.querySelector(".table_one");
            let scrollTop1=nav1.offsetTop
            let nav2=document.querySelector(".table_two");
            let scrollTop2=nav2.offsetTop
            let nav3=document.querySelector(".table_three")
            let scrollTop3=nav3.offsetTop
            let nav4=document.querySelector(".table_fou")
            let scrollTop4=nav4.offsetTop
            let nav5=document.querySelector(".table_last")
             let scrollTop5=nav5.offsetTop

            let scrollTop_nav=nav.offsetTop;
			//console.log(scrollTop_nav);
			if(scrollTop>=scrollTop_nav){
				ul.style.position="fixed";
				ul.style.top="0px";
				ul.style.zIndex="20";
				ul.style.borderTop="0px";
				if(scrollTop>=scrollTop1-300){
					lis[0].children[0].className="a1";
                    lis[1].children[0].className="";
					if(scrollTop>=scrollTop2-300){
						lis[0].children[0].className="";
						lis[1].children[0].className="a1";
                        lis[2].children[0].className="";
                        lis[3].children[0].className="";
						if(scrollTop>=scrollTop3-300){
						lis[1].children[0].className="";
						lis[2].children[0].className="a1";
                            lis[0].children[0].className="";
                            lis[3].children[0].className="";
							if(scrollTop>=scrollTop4-300){
								lis[2].children[0].className="";
								lis[3].children[0].className="a1";
                                lis[0].children[0].className="";
                                lis[1].children[0].className="";
								if(scrollTop>=scrollTop5-300){
									lis[3].children[0].className="";
								}
							}
						}
					}
				}
			} else{
				ul.style.position="static";
				ul.style.borderTop="1px solid #727171";
			}
		}
$(()=>{
    "use strict";
    var ul1=document.getElementsByClassName("banner-img")[0],
		ullis=ul1.children,
		left=document.querySelector(".ck-left"),
		right=document.querySelector(".ck-right"),
		target=0,leader=0,timer=0;
		right.onclick=function(e){
		    e.preventDefault()
			target-=1200;
			if(target<=-ullis.length*1200){
				target=0;
			leader=0;
				ul.style.left=0+"px";
			}
		}
		left.onclick=function(e){
		    e.preventDefault();
            target+=1200;
			if(target>0){
				target=-(ullis.length-1)*1200;
				leader=-(ullis.length-1)*1200;
				ul.style.left=-ullis.length*1200+"px";
			}
		}
		function task(){
			leader=leader+(target-leader)/10;
			ul1.style.left=leader+"px";
		}
       /*开启定时器*/
     timer=setInterval(task,30);

     //实现无缝滚动
    // var banner=document.getElementById("banner");
    // var ul=banner.children[0];//ul是scroll中的第一个孩子
    // var num=0;//控制左侧值   left
    // var timer=null;
    // timer=setInterval(autoPlay,5);//定时器，每隔30秒就滚动一次
    // function autoPlay(){
    //     num--;//左侧移动做减减
    //
    //     //如果num小于等于-1200，num就等于0，直接跳转到0，否则就为num的值
    //     num<=-1200?num=0:num;
    //     ul.style.left=num+"px";
    // }
    //
    // //鼠标进过，停止大盒子
    // banner.onmouseover=function(){
    //     clearInterval(timer);
    // }
    //
    // //鼠标离开的时候，大盒子继续运动
    // banner.onmouseout=function(){
    //     timer=setInterval(autoPlay,5);
    // }
});
// 商品总的加载（大图商品）p
$(()=>{
	"use strict";
    $.ajax({
        type:"GET",
        url:"data/waitao/getTotal_p.php",
        success:function(data){
            //console.log(data);
			let html="";
            for(let i=3;i<=data.length;i+=3){
            	html+=`<tr>
						<td>
							<a href="${data[i-3].wt_p_href}"><img src="${data[i-3].wt_p_img}" alt="${data[i-3].wt_p_alt}"></a>
						</td>
						<td>
							<img src="img/waitao/wt-hd_12.jpg" class="split"	>
						</td>
						<td>
							<a href="${data[i-2].wt_p_href}"><img src="${data[i-2].wt_p_img}" alt="${data[i-2].wt_p_alt}"></a>
						</td>
						<td>
							<img src="img/waitao/wt-hd_12.jpg" class="split">
						</td>
						<td>
							<a href="${data[i-1].wt_p_href}"><img src="${data[i-1].wt_p_img}" alt="${data[i-1].wt_p_alt}"></a>
						</td>
					</tr>`;

			}
			$("#main>div>table.wt_p>tbody").html(html);
        },
        error:function(){alert("网络故障请检查")}
    })
});

//加载超轻羽绒服
$(()=>{
    "use strict";
    $.ajax({
        type:"GET",
        url:"data/waitao/getcq.php",
        success:function(data){
            console.log(data);
			var html="";
			for(var p of data){
				html+=`<li>
						<a href="${p.cq_href}" class="product_img">
							<img src="${p.cq_img}" alt="">
							<h3>
								<p>特惠</p>
								<p>￥${p.cq_bargin}</p>
							</h3>
							<img src="img/waitao/new3323.png" class="new">
						</a>
						<a href="${p.cq_href}" title="${p.cq_title}">${p.cq_title}</a>
						<span class="price">售价￥${p.cq_price}</span>		
					</li>`;
			}
			$("#main>div>div.six>ul").html(html);
			//console.log(data);
        },
        error:function(){alert("网络故障请检查")}
    })
});

//加载加厚羽绒服
$(()=>{
    "use strict";
    $.ajax({
        type:"GET",
        url:"data/waitao/getjh.php",
        success:function(data){
            console.log(data);
            var html="";
            for(var p of data){
                html+=`<li>
						<a href="${p.jh_href}" class="product_img">
							<img src="${p.jh_img}" alt="">
							<h3>
								<p>特惠</p>
								<p>￥${p.jh_bargin}</p>
							</h3>
							<img src="img/waitao/new3323.png" class="new">
						</a>
						<a href="${p.jh_href}" title="${p.jh_title}">${p.jh_title}</a>
						<span class="price">售价￥${p.jh_price}</span>		
					</li>`;
            }
            $("#main>div>div.eight>ul").html(html);
            //console.log(data);
        },
        error:function(){alert("网络故障请检查")}
    })
});

//加载夹克
$(()=>{
    "use strict";
    $.ajax({
        type:"GET",
        url:"data/waitao/getjk.php",
        success:function(data){
            console.log(data);
            var html="";
            for(var p of data){
                html+=`<li>
						<a href="${p.jk_href}" class="product_img">
							<img src="${p.jk_img}" alt="">
							<h3>
								<p>特惠</p>
								<p>￥${p.jk_bargin}</p>
							</h3>
							<img src="img/waitao/new3323.png" class="new">
						</a>
						<a href="${p.jk_href}" title="${p.jk_title}">${p.jk_title}</a>
						<span class="price">售价￥${p.jk_price}</span>		
					</li>`;
            }
            $("#main>div>div.elen>ul").html(html);
            //console.log(data);
        },
        error:function(){alert("网络故障请检查")}
    })
});

//加载开衫卫衣
$(()=>{
    "use strict";
    $.ajax({
        type:"GET",
        url:"data/waitao/getkswy.php",
        success:function(data){
            console.log(data);
            var html="";
            for(var p of data){
                html+=`<li>
						<a href="${p.kswy_href}" class="product_img">
							<img src="${p.kswy_img}" alt="">
							<h3>
								<p>特惠</p>
								<p>￥${p.kswy_bargin}</p>
							</h3>
							<img src="img/waitao/new3323.png" class="new">
						</a>
						<a href="${p.kswy_href}" title="${p.kswy_title}">${p.kswy_title}</a>
						<span class="price">售价￥${p.kswy_price}</span>		
					</li>`;
            }
            $("#main>div>div.thirteen>ul").html(html);
            //console.log(data);
        },
        error:function(){alert("网络故障请检查")}
    })
});

//加载羊毛大衣
$(()=>{
    "use strict";
    $.ajax({
        type:"GET",
        url:"data/waitao/getymdy.php",
        success:function(data){
            console.log(data);
            var html="";
            for(var p of data){
                html+=`<li>
						<a href="${p.ymdy_href}" class="product_img">
							<img src="${p.ymdy_img}" alt="">
							<h3>
								<p>特惠</p>
								<p>￥${p.ymdy_bargin}</p>
							</h3>
							<img src="img/waitao/new3323.png" class="new">
						</a>
						<a href="${p.ymdy_href}" title="${p.ymdy_title}">${p.ymdy_title}</a>
						<span class="price">售价￥${p.ymdy_price}</span>		
					</li>`;
            }
            $("#main>div>div.sixteen>ul").html(html);
            //console.log(data);
        },
        error:function(){alert("网络故障请检查")}
    })
});

//加载西服
$(()=>{
    "use strict";
    $.ajax({
        type:"GET",
        url:"data/waitao/getxifu.php",
        success:function(data){
            console.log(data);
            var html="";
            for(var p of data){
                html+=`<li>
						<a href="${p.xifu_href}" class="product_img">
							<img src="${p.xifu_img}" alt="">
							<h3>
								<p>特惠</p>
								<p>￥${p.xifu_bargin}</p>
							</h3>
							<img src="img/waitao/new3323.png" class="new">
						</a>
						<a href="${p.xifu_href}" title="${p.xifu_title}">${p.xifu_title}</a>
						<span class="price">售价￥${p.xifu_price}</span>		
					</li>`;
            }
            $("#main>div>div.sixteen1>ul").html(html);
            //console.log(data);
        },
        error:function(){alert("网络故障请检查")}
    })
});

//加载皮肤衣
$(()=>{
    "use strict";
    $.ajax({
        type:"GET",
        url:"data/waitao/getpfy.php",
        success:function(data){
            console.log(data);
            var html="";
            for(var p of data){
                html+=`<li>
						<a href="${p.pfy_href}" class="product_img">
							<img src="${p.pfy_img}" alt="">
							<h3>
								<p>特惠</p>
								<p>￥${p.pfy_bargin}</p>
							</h3>
							<img src="img/waitao/new3323.png" class="new">
						</a>
						<a href="${p.pfy_href}" title="${p.pfy_title}">${p.pfy_title}</a>
						<span class="price">售价￥${p.pfy_price}</span>		
					</li>`;
            }
            $("#main>div>div.towt>ul").html(html);
            //console.log(data);
        },
        error:function(){alert("网络故障请检查")}
    })
});


//回到顶部
$(()=>{
    "use strict";
    $(".black_top").on("click","a",function(e){
            e.preventDefault();
        $("html,body").animate({scrollTop:0}, 500);
    })
});




