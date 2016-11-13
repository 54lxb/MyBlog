<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-cn">
  <head>
    <title>大爱我小宝哥---后台管理</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/signin.css" rel="stylesheet">
  </head>
  <body>
    <div class="signin">
	  <div class="signin-head"><img src="img/head_120.png" alt="小宝哥" class="img-circle"></div>
	    <form class="form-signin" role="form">
		  <input type="text" class="form-control" placeholder="用户名" required autofocus />
		  <input type="password" class="form-control" placeholder="密码" required />
		  <button class="btn btn-lg btn-warning btn-block" type="submit">登录</button>
		</form>
	</div>
	<div style="text-align:center; margin-top: 60px; font-size: 25px;">
	  <p><a href="${pageContext.request.contextPath }/user/index.jsp" target="_blank"><strong>大爱我小宝哥</strong></a></p>
	</div>
  </body>
</html>
