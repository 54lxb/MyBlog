<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <title>大爱我小宝哥的博客---留言板</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/msgs.css">
	<jsp:include page="top.jsp"></jsp:include>
  </head>
  <body>
    <jsp:include page="header.jsp"></jsp:include>
    <div class="container">
      <p id="back-to-top"><a href="#top"><span></span>返回顶部</a></p>
      <div class="col-md-12">
      <c:if test="${sessionScope.user != null }">
      	<p class="text-center"><button class="btn btn-default" id="add_msg">我想留言</button></p><br>
        <div class="guestbook" style="display: none;">
          <p class="text-center"><font color="red">${msg }</font></p>
          <form action="${pageContext.request.contextPath }/servlet/AddMsgServlet" method="post">
          	<h2 class="text-center">大胆写下心里话</h2><br>
	        <input type="text" name="author" value="${user.username }" hidden="true"/>
            <div id="content" spellcheck="false" contenteditable="false">
		      <textarea class="ckeditor" cols="80" id="editor1" name="content" rows="10"></textarea>
	        </div><br>
	        <div class="text-center">
	          <input type="submit" class="btn btn-primary" value="添加留言" id="submit">
	        </div>
	      </form>
        </div><hr>
      </c:if>
      <c:if test="${sessionScope.user == null }">
         <hr><h2 class="text-center">
           <a href="${pageContext.request.contextPath }/user/login.jsp">想留言(●'◡'●)先登录</a>
         </h2><hr>
      </c:if>
      <div class="main-content">
        <h3 class="text-center">小宝哥的留言板</h3>
        <c:forEach items="${requestScope.list }" var="msg">
   	      <div class="say-board col-md-12">
 			<div class="col-md-2">
 			  <img src="${msg.headers }" class="img-circle">
 			</div>
         	<div class="col-md-8"><p>${msg.content }</p></div>
            <div class="col-md-2">
              <p class="author">作者：${msg.author }</p>
              <p class="date-time">${msg.writetime }</p>
            </div>
 		  </div>
 		</c:forEach>
      </div>
      </div>
   	</div>
    <jsp:include page="footer.jsp"></jsp:include>
   	<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/transit.min.js"></script>
   	<script type="text/javascript" src="${pageContext.request.contextPath }/static/ckeditor/ckeditor.js"></script>
   	<script type="text/javascript">
   		$(function(){
   			$('.say-board').transition({
   				perspective: '100px',
   				rotatex: '180deg'
   			});
   		});
   		
   		$(document).ready(function(){
		  $("#add_msg").click(function(){
		    $(".guestbook").animate({
		      height:'toggle'
		    });
		  });
		});
   	</script>
  </body>
</html>
