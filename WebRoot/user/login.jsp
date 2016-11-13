<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <title>大爱我小宝哥的博客---登录</title>
    <jsp:include page="top.jsp"></jsp:include>
  </head>
  <body>
  	<jsp:include page="header.jsp"></jsp:include>
    <div class="container">
      <div class="text-center" style="margin-top: 40px;"><font color="red"><b>${msg }</b></font></div>
	  <div class="col-md-4"></div>
   	  <div class="loginbox col-md-4">
        <form action="${pageContext.request.contextPath }/servlet/LoginServlet" method="post" class="form">
          <h3 class="form-title text-center">欢迎登录</h3><br>
          
          <div class="form-group">
            <input class="form-control input-lg" type="text" placeholder="用户名" id="username" name="username" onblur="checkValue('username')"/>
          </div>
          <div id="username_msg" class="text-center"></div><br>
          
	      <div class="form-group">
	        <input class="form-control input-lg" type="password" placeholder="密码" id="password" name="password" onblur="checkValue('password')"/> 
	      </div>
	      <div id="password_msg" class="text-center"></div><br>
	      
	      <div class="col-md-12">
            <div class="form-group col-md-6">
	          <input type="text" class="form-control" placeholder="验证码" name="valistr" id="valistr"  onblur="checkValue('valistr')">
	        </div>
	        <div class="form-group col-md-6">
	      	  验证码：<img src="${pageContext.request.contextPath }/servlet/ValiImg" onclick="changImg(this)" class="img-rounded" style="cursor: pointer;" title="看不清楚？点我刷新">
	        </div>
	      </div>
	      <div id="valistr_msg" class="text-center"></div><br>
	      <div class="col-md-12">
	        <div class="col-md-2"></div>
            <div class="form-group col-md-4">
              <label class="checkbox">
            	 <input type="checkbox" value="true" name="autologin" id="autologin">自动登录
              </label>
            </div>
            <div class="form-group col-md-4">
              <label style="margin-top: 10%;">
                <a href="#">忘记密码</a>
              </label>
            </div>
            <div class="col-md-2"></div>
          </div><br><br>
          
	      <div class="form-group text-center">
	        <input type="submit" class="btn btn-primary" value="登录"/>
	        &nbsp;&nbsp;&nbsp;&nbsp;
	        <input type="reset" class="btn btn-default" value="重置"/> 
	      </div> 
	    </form>
	  </div>
	  <div class="col-md-4"></div>
	</div>
	<script type="text/javascript">
	
		function checkValue(name) {
			canSub = true;
			if (name == 'username') {
				canSub = checkNull(name, "账号不允许为空！") && canSub;
			}
			if (name == 'password') {
				canSub = checkNull(name, "密码不允许为空！") && canSub;
			}
			if (name == 'valistr') {
				canSub = checkNull(name, "验证码不能为空！") && canSub;
			}
			return canSub;
		}
		
		function checkNull(name, msg) {
			document.getElementById(name+"_msg").innerHTML = "";
			var objValue = document.getElementById(name).value;
			if (objValue == null || objValue == "") {
				document.getElementById(name+"_msg").innerHTML = "<img src='/MyBlog/static/img/unsuccess.gif'><font color='red'>"+msg+"</font>";
				canSub = false;
			}
		}
		
        function changImg(img) {
        	img.src = img.src + "?time=" + new Date().getTime();
        }
	</script>
    <jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>

