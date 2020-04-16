<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	window.onload=function(){
		document.getElementsByTagName("a")[0].onclick = function(){
			var request = new XMLHttpRequest();
			var url = this.href+"?time="+new Date();	//	添加一个时间戳，相当于禁用了缓存，因为每次的url都会不一样了
			var method = "POST";
			request.open(method,url);
			request.setRequestHeader("ContentType","application/x-www-form-urlencoded");
			request.send("name='atguigu'");
			request.onreadystatechange = function(){
				if(request.readyState == 4){
					if(request.status == 200 || request.status == 304){
						alert(request.responseText);
					}
				}
			}
			return false;
		}
	}
</script>

</head>

<body>

	<a href="helloAjax.txt">Hello Ajax</a>

</body>
</html>