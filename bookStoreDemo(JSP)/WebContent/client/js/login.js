//页面加载时，生成随机验证码
window.onload=function(){
   createCode(4);    
}
 
//生成验证码
function createCode(length) {     
	var code = "";
    var codeLength = parseInt(length); //验证码的长度
	var checkCode = document.getElementById("checkCode");
    //所有候选组成验证码的字符    
	var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
    'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); 
    //循环组成验证码的字符串
    for (var i = 0; i < codeLength; i++) {
        //获取随机验证码下标
        var charNum = Math.floor(Math.random() * 62);
        //组合成指定字符验证码
        code += codeChars[charNum];
    } if (checkCode) {
        //为验证码区域添加样式名
        checkCode.className = "code";
        //将生成验证码赋值到显示区
        checkCode.innerHTML = code;
    }
} 
 
//检查登录信息
function validateCode(){  
	var userName = document.querySelector('#username');
	var pw1 = document.querySelector('#pw1');
	console.log(userName.value);
	if(userName.value==""){
		alert("请输入账号！");
	} else if(pw1.value==""){
		alert("密码不能为空！");
		return;
	} else if(userName.value!="admin"){
		alert("账号错误请重新输入！");
	} else if(pw1.value!="admin"){
		alert("密码有误请重新输入！");
	} else{
		//获取显示区生成的验证码
		var checkCode = document.getElementById("checkCode").innerHTML;
		//获取输入的验证码
		var inputCode = document.getElementById("inputCode").value;
		if (inputCode.length <= 0){
			alert("请输入验证码！");
		} else if (inputCode.toUpperCase() != checkCode.toUpperCase()){
			alert("验证码输入有误！");
			createCode(4);
		} else{
			alert("登录成功！即将为您跳转商品展示页");
			window.location.href = "content.jsp";
		} 
	}	          
}
