(()=>{//加载页尾
	ajax({
		type:"get",
		url:"footer.html"
	}).then(html=>{
		document.getElementById("footer").innerHTML=html;
	});
})();