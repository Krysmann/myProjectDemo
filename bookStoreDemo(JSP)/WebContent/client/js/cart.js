window.onload = function(){
//搜索栏聚焦和失焦
var searchName = document.getElementById('search-name');
searchName.onfocus = function(){
	searchName.value = '';
}
searchName.onblur = function(){
	searchName.value = '最多人搜：Java从入门到精通';
}

// 全选反选
var topAll = document.querySelector('#topCheckAll');
var bottomAll = document.querySelector('#bottomCheckAll');
var checks = document.querySelectorAll('.check')

topAll.addEventListener('click', function() {
    for (var i = 0; i < checks.length; i++) {
        checks[i].checked = this.checked;
    }
    bottomAll.checked = this.checked;
});
bottomAll.addEventListener('click', function() {
    for (var i = 0; i < checks.length; i++) {
        checks[i].checked = this.checked;
    }
    topAll.checked = this.checked;;
});
for (var j = 0; j < checks.length; j++) {
    checks[j].onclick = function() {
       var flag = true;
       for (var i = 0; i < checks.length; i++) {
    	   if (!checks[i].checked) {
             flag = false;
           }
           bottomAll.checked = flag;
           topAll.checked = flag;
       }
   }
}
// 全选反选

// 删除
var goods = document.querySelectorAll('.goods-info');
var delbtn = document.querySelectorAll('.delbtn');
for (var i = 0; i < delbtn.length; i++) {
    delbtn[i].setAttribute("index", i);
    delbtn[i].addEventListener('click', function() {
        index = this.getAttribute("index");
        goods[index].style.display = 'none';
    });
}
var delAll = document.querySelector('.del');
delAll.addEventListener('click', function() {
    if (bottomAll.checked != true) {
        alert('请选择你要删除的商品！');
    } else {
      for (var i = 0; i < goods.length; i++) {
          goods[i].style.display = 'none';
      }
      bottomAll.checked = false;
      topAll.checked = false;
    }
});
// 删除	
var cartBtn = document.querySelector('#jumpcart');
cartBtn.style.display = 'none';

var backContent = document.querySelector('.submit1');
backContent.addEventListener('click',function(){
	window.location.href = 'content.jsp';
})

}