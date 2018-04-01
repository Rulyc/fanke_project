(()=>{
	window.onload=function(){
		//1.轮播

		//2.倒计时功能
		let ems=document.querySelectorAll(".eveday .new_title>span>em");
		//console.log(ems[1]);
		let endTime=new Date("2068/2/12/ 00:00:00");//结束时间
		//setInterval(clock,1000);//开启定时器
		clock();//先调用一次，之后再开启定时器，保证页面刷新也在倒计时
		function clock(){
			let nowTime=new Date();//获取最新的时间
			let second = parseInt((endTime.getTime() - nowTime.getTime()) / 1000);
			let h = parseInt(second / 3600  % 24);  // 小时
			let m = parseInt(second % 3600/60 );//分钟
			let s = parseInt(second%60 ); //秒数
			h<10 ? h="0"+h : h;
			m<10 ? m="0"+m : m;
			s<10 ? s="0"+s : s;
			ems[0].innerHTML=h;
			ems[1].innerHTML=m;
			ems[2].innerHTML=s;
		}
		setInterval(clock,1000);//开启定时器
	}

//	let ul=document.getElementsByClassName("banner-img")[0],
//		ullis=ul.children;
//		left=document.querySelector(".ck-left"),
//		right=document.querySelector(".ck-right"),
//		ol=document.getElementsByClassName("ind")[0],
//		ollis=ol.children,
//		target=0,leader=0,timer=0;
//		right.onclick=function(){
//			target-=1200;
//			if(target<=-ullis.length*1200){
//				target=0;
//				leader=0;
//				ul.style.left=0+"px";
//			}
//		}
//		left.onclick=function(){
//            target+=1200;
//			if(target>=-1200){
//				target=-ullis.length*1200;
//				leader=-ullis.length*1200;
//				ul.style.left=-ullis.length*1200+"px";
//			}
//		}
//		function task(){
//			leader=leader+(target-leader)/10;
//			ul.style.left=leader+"px";
//		}
//        /*开启定时器*/
//        timer=setInterval(task,30);
			
})();

//加载首页商品
//秒杀商品
$(()=>{
	"use strict";
    $.ajax(
        ajax({
            type:"get",
            url:"data/index/getMiaoSha.php",
            dataType:"json"
        }).then(data=>{
            "use strict";
            let html="";
            for(let p of data){
                html +=	`<li>
					<a href="${p.href}">
						<img src="${p.miaosha_avatar}" alt="">
						<p>${p.miaosha_title}</p>
						<p class="pre_price"><s>￥${p.miaosha_yprice}</s></p>
						<p class="lf">￥${p.miaosha_tprice}</p>
						<p class="rf lastp">充值后<b>${p.miaosha_bargin}</b>元</p>
					</a>

				</li>`;
            }
            $(".eveday_goods>ul").html(html);
        })
    );

});

//T恤上新
$(()=>{
	"use strict";
	$.ajax({
		type:"GET",
		url:"data/index/getTxu.php",
		dataType:"json"
	}).then(data=>{
		let html="";
		for(let p of data){
			html+=`<div>
						<a href="${p.href}"><img src="${p.Txu_avatar}" alt="${p.Txu_alt}"></a>
					</div>`;
		}
		$(".floor>.one>.content").html(html);
	});
});

//外套上新
$(()=>{
    "use strict";
    $.ajax({
        type:"GET",
        url:"data/index/getWaitao.php",
        dataType:"json"
    }).then(data=>{
        let html="";
        for(let p of data){
            html+=`<div>
						<a href="${p.href}"><img src="${p.waitao_avatar}" alt="${p.waitao_alt}"></a>
					</div>`;
        }
        $(".floor>.two>.content").html(html);
    });
});

//新年大促销
$(()=>{
    "use strict";
    $.ajax({
        type:"GET",
        url:"data/index/getNewyear.php",
        dataType:"json"
    }).then(data=>{
        let html="";
        // let $tr=$("<tr></tr>");
        // $("tbody").append($tr);
        for(let i=4;i<=data.length+2;i+=4) {
               //let a = data[i];
               if(i==12){
                   html += `<tr>
					    		<td colspan="2">
						   			 <a href="${data[i-4].newyear_href}">
						    			<img src="${data[i-4].newyear_avatar}" alt="${data[i-4].newyear_alt}">
						   			 </a>
					    		</td>
					   			<td colspan="2">
						    		<a href="${data[i-3].newyear_href}">
						    			<img src="${data[i-3].newyear_avatar}" alt="${data[i-3].newyear_alt}">
						    		</a>
					    		</td>
					   	 </tr>`;
               }else if(i<12){
                   html += `<tr>
								<td>
                              		 <a href="${data[i-4].newyear_href}">
                              		 	<img src="${data[i-4].newyear_avatar}" alt="${data[i-4].newyear_alt}">
                              		 </a>
					        	</td>
					       	 	<td>
						    		<a href="${data[i-3].newyear_href}">
						    			<img src="${data[i-3].newyear_avatar}" alt="${data[i-3].newyear_alt}">
						    		</a>
					    		</td>
					    		<td>
						    		<a href="${data[i-2].newyear_href}">
						    			<img src="${data[i-2].newyear_avatar}" alt="${data[i-2].newyear_alt}">
						    		</a>
					   		 	</td>
					    		<td>
						    		<a href="${data[i-1].newyear_href}">
						    			<img src="${data[i-1].newyear_avatar}" alt="${data[i-1].newyear_alt}">
						    		</a>
					    		</td>
					    	</tr>`;
               }else{
                html += `<tr>
							<td>
                               <a href="${data[i-6].newyear_href}">
                               		<img src="${data[i-6].newyear_avatar}" alt="${data[i-6].newyear_alt}">
                               </a>
					        </td>
					        <td>
						    	<a href="${data[i-5].newyear_href}">
						    		<img src="${data[i-5].newyear_avatar}" alt="${data[i-5].newyear_alt}">
						    	</a>
					    	</td>
					   		<td>
						    	<a href="${data[i-4].newyear_href}">
						    		<img src="${data[i-4].newyear_avatar}" alt="${data[i-4].newyear_alt}">
						    	</a>
					    	</td>
					    	<td>
						    	<a href="${data[i-3].newyear_href}">
						    		<img src="${data[i-3].newyear_avatar}" alt="${data[i-3].newyear_alt}">
						    	</a>
					    	</td>
					    </tr>`;
               }
        }
        $(".floor>.three>table>tbody").html(html);
    })
})

//楼层滚动
$(()=>{
    var $lift=$("#lift"),
        $ulLift=$("#lift>ul");
    $floors=$(".floor1");

    $(window).scroll(function(){
        var scrollTop=document.body.scrollTop||document.documentElement.scrollTop;
        var offsetTop1=$("#f1").offset().top;
        if(offsetTop1<=scrollTop+innerHeight/2)
            $lift.show();
        else
            $lift.hide();

        $floors.each(function(i,floor){
           // console.log(i);
            var $floor=$(floor);
            var offsetTop=$floor.offset().top;
            if(offsetTop<=scrollTop+innerHeight/2){
                $ulLift.children(":eq("+i+")").addClass("hover").siblings().removeClass("hover");

            }
        })
    })

    $ulLift.children().click(function(){
        var $li=$(this);
        var i=$li.index();
        var offsetTop=$(".floor1:eq("+i+")").offset().top;
        $("html").stop(true).animate({
            scrollTop:offsetTop
        },500)
    })
})

//回到顶部
$(()=>{
    "use strict";
    $(".blackTop").on("click","a",function(e){
        //阻止默认事件
        e.preventDefault();
        $("html,body").animate({scrollTop:0}, 500);
    })
})


