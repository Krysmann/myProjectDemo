//搜索栏聚焦和失焦
var searchName = document.getElementById('search-name');
searchName.onfocus = function(){
	searchName.value = '';
}
searchName.onblur = function(){
	searchName.value = '最多人搜：Java从入门到精通';
}

//页面跳转
var jumpcart = document.querySelector("#jumpcart");
jumpcart.addEventListener('click',function(){
	window.location.href = 'cart.jsp';
});

var addcart = document.querySelector("input");
addcart.addEventListener('click',function(){
	window.location.href = '/java/ListBookServlet';
})

//图片放大
var box = document.querySelector('.imgbox');
var mask = document.querySelector('.imgmask');
var big = document.querySelector('.bigimgbox');
box.addEventListener('mouseover',function(){
	mask.style.display = 'block';
	big.style.display = 'block';
	console.log('1');
})
box.addEventListener('mouseout',function(){
	mask.style.display = 'none';
	big.style.display = 'none';
})
box.addEventListener('mousemove',function(e){
	var maskX = e.pageX - this.offsetLeft;
	var maskY = e.pageY - this.offsetTop;
	var x = maskX - mask.offsetWidth / 2;
	var y = maskY - mask.offsetHeight / 2	
	var maskMax = box.offsetWidth - mask.offsetWidth;
	if(x <= 0){
		x = 0;
	} else if(x >= maskMax){
		x = maskMax;
	}
	if(y <= 0){
		y = 0;
	} else if(y >= maskMax){
		y = maskMax;
	}
	mask.style.left = x + 'px';
	mask.style.top = y + 'px';
	//大图片的移动距离 = 遮挡层移动距离 * 大图片最大移动距离 / 遮挡层最大移动距离
	var bigImg = document.querySelector('.bigimg');
	var bigMax = bigImg.offsetWidth - big.offsetWidth;
	var bigX = x * bigMax / maskMax;
	var bigY = y * bigMax / maskMax;
	bigImg.style.left = -bigX + 'px';
	bigImg.style.top = -bigY + 'px';
})