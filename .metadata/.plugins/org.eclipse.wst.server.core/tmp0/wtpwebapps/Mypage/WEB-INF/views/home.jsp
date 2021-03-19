<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page session="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style type="text/css">
html{
	width: 99%; 
	height: 98%;
}

body{
	width: 100%; 
	height: 100%;
}
div.background{
	width: 100%; 
	height: 100%;
}
div.top-center{
	margin-left:100px;
	margin-right:100px;
	margin-bottom:100px;
	margin-top:50px;
}
h1.top-center{
	text-decoration:none;
	color:#000000;
	font-size:300%;
	font-family: monospace;
	font-weight: 900;
}
ul.top-right{
	list-style-type:none;
	text-align: right;
}
li.top-right{
	display:inline;
	margin-left:20px;
	padding:0px;
}
a.top-right{
	text-decoration:none;
	color:#000000;
	font-size:100%;
	font-family: monospace;
	font-weight: 700;
}

h1{
	text-align:center;
	font-family: courier;
}
ul.middle-center{
	list-style-type:none;
	text-align: center;
}

li.middle-center{
	margin-left:50px;
	margin-right:50px;
	display:inline;
	padding:0px;
}
a.middle-center{
	text-decoration:none;
	color:#000000;
	font-size:150%;
	font-family: monospace;
	font-weight: 900;
}


</style>
<html>
<head>
	<title>Home</title>
</head>
<body>
<div id="background" class="background">
	<div>
		<ul class="top-right">
			<li class="top-right"><a href="" class="top-right">login</a></li>
			<li class="top-right"><a href="" class="top-right">review</a></li>
			<li></li>
		</ul>
	</div>
	
	<div class="top-center">
		<h1 class="top-center">
			Rag Mall  
		</h1>
	</div>
	<div>
		<ul class="middle-center">
			<li class="middle-center"><a href="" class="middle-center">top</a></li>
			<li class="middle-center"><a href="" class="middle-center">pants</a></li>
			<li class="middle-center"><a href="" class="middle-center">shoes</a></li>
			<li class="middle-center"><a href="" class="middle-center">hat</a></li>
			<li class="middle-center"><a href="" class="middle-center">acc</a></li>		
		</ul>
	</div>
</div>

</body>
</html>
   