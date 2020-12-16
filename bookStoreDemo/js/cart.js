//搜索栏聚焦和失焦
var searchName = document.getElementById('search-name');
searchName.onfocus = function(){
	searchName.value = '';
}
searchName.onblur = function(){
	searchName.value = '最多人搜：Java从入门到精通';
}

var cartBtn = document.querySelector('#jumpcart');
cartBtn.style.display = 'none';

var backContent = document.querySelector('.submit1');
backContent.addEventListener('click',function(){
	window.location.href = 'content.html';
})