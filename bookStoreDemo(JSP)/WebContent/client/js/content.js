window.onload = function(){
//搜索栏聚焦和失焦
var searchName = document.getElementById('search-name');
searchName.onfocus = function(){
	searchName.value = '';
}
searchName.onblur = function(){
	searchName.value = '最多人搜：Java从入门到精通';
}

//侧边栏
var sidebar = document.querySelector(".sidebar");
var scrolltop = document.querySelector(".content");
var contenttop = scrolltop.offsetTop;
var sidebartop = sidebar.offsetTop - contenttop;
document.addEventListener('scroll',function(){
	if(window.pageYOffset >= contenttop){
		sidebar.style.position = 'fixed';
		sidebar.style.top = sidebartop + 'px';
	} else {
		sidebar.style.position = 'absolute';
		sidebar.style.top = '600px';
	}
})

	

//栏目切换
var btnType = document.querySelectorAll(".btntype");				
var booklist = document.querySelectorAll("#booklist");
for(var i = 0 ; i < btnType.length ; i++){
	btnType[i].setAttribute('value',i);
	booklist[i].setAttribute('listvalue',i);
	btnType[i].onclick = function(){			
		for(var i = 0;i<btnType.length;i++){
			btnType[i].className = 'btntype';
		}
		this.className = 'btntype current';
		var value = this.getAttribute('value');
		for(var i = 0;i<booklist.length;i++){
			booklist[i].style.display = 'none';
		}
		booklist[value].style.display = 'block';
	}
}

//页面跳转
var jumpcart = document.querySelector("#jumpcart");
jumpcart.addEventListener('click',function(){
	window.location.href = 'cart.jsp';
});
var jumpbtn = document.querySelector(".jumppage");
	jumpbtn.addEventListener('click',function(){
		window.location.href = 'bookMessage.jsp';
});
}