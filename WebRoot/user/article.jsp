<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <title>大爱我小宝哥的博客---经典美文</title>
	<style type="text/css">
		.col-md-12 {
			margin-top: 40px;
		}
		article {
			 background: rgba(119,195,218,0.4);
			 border-radius: 10px; 
		}
		
		.content_info span {
			margin-left: 20px;
		}
		.article_content {
			text-indent: 40px;
			font-size: 1.4em;
			margin: 2%;
		}	
		section {
			padding-top: 2%;
			margin-top: 2%;
		}
		.reply-list {
			background: rgba(119,195,218,0.3);
			border: 2px solid rgba(119,195,218,0.3);
			border-radius: 10px;
			height: 100%;
			margin-top: 10px;
		}
	</style>
	<jsp:include page="top.jsp"></jsp:include>
  </head>
  <body>
    <jsp:include page="header.jsp"></jsp:include>
    <div class="container">
      <p id="back-to-top"><a href="#top"><span></span>返回顶部</a></p>
      <div class="col-md-12">
      <article>
        <c:if test="${requestScope.article != null}">
          <div class="text-center">
            <h2 class="title">${article.title }</h2>
            <h3><small>用心甘情愿的态度，过随遇而安的生活</small></h3><hr>
          </div>
          <div class="content_info text-center">
             <span class="glyphicon glyphicon-user"></span>&nbsp;${article.author }
             <span class="glyphicon glyphicon-time"></span>&nbsp;${article.writetime }
             <span class="glyphicon glyphicon-tasks"></span>&nbsp;${article.type }
           </div>
           <div class="article_content"><p>${article.content }</p></div><hr>
           <div class="footer text-center">
	          <span><button id="up" class="btn btn-success"><span class="glyphicon glyphicon-thumbs-up">(</span><span id="clicks_up">50</span>)</button></span>
	          <span><button class="btn btn-info" id="myinfo">作者：刘小宝</button></span>
	          <span><button id="down" class="btn btn-primary"><span class="glyphicon glyphicon-thumbs-down"></span>(<span id="clicks_down">50</span>)</button></span>
	        </div><br>
        </c:if>
      </article>
      <section>
        <c:if test="${sessionScope.user == null }">
         <div class="text-center">
		   <hr><h3>发表评论</h3>
		   <p><img src="${pageContext.request.contextPath }/static/img/article/login_icon.png"></p>
		   <p><a href="${pageContext.request.contextPath }/user/login.jsp">请您登录后再发表评论 </a></p><hr>
		  </div>
        </c:if>
        
        <c:if test="${sessionScope.user != null }">
        <p class="text-center"><button id="add_reply" class="btn btn-primary">让我评论</button></p>
        <div class="add_reply" style="display: none;">
          <form action="${pageContext.request.contextPath }/servlet/AddReplayServlet" method="post">
            <hr><h3 class="text-center">发表评论</h3><br>
	        <div id="content" spellcheck="false" contenteditable="false">
	          <input type="text" name="articleid" value="${requestScope.article.id }" hidden="true">
		      <textarea class="ckeditor" cols="80" id="editor" name="content" rows="10"></textarea>
	        </div><br>
	        <div id="button" class="text-center">
	          <input type="submit" class="btn btn-success" value="发表回复" id="post">
	        </div>
	      </form>
	    </div>  
	    </c:if>
	    <div class="reply--board">
	      <hr><h2 class="text-center">评论列表</h2><hr>
	      <c:forEach items="${requestScope.list }" var="reply">
	        <div class="reply-list col-md-12">
	          <div class="col-md-2">
	            <p></p><p class="reply-id">回复ID：${reply.id }</p>
	          </div>
         	  <div class="col-md-8">
         	    <p class="reply-content">${reply.content }</p>
         	  </div>
         	  <div class="col-md-2">
                <p class="reply-author">回帖作者：${reply.author }</p>
                <p class="reply-time">时间：${reply.replytime }</p>
              </div>
 		    </div><hr>
	      </c:forEach>
          <c:if test="${requestScope.list == '[]' }">
            <p class="text-center">还没有人评论呢，快来评论一下呗！</p>
          </c:if>
	    </div>
      </section>
      </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
   	<script type="text/javascript" src="${pageContext.request.contextPath }/static/ckeditor/ckeditor.js"></script>
    <script type="text/javascript">
       
	  	$(document).ready(function () {
	  		$("#add_reply").click(function(){
			  $(".add_reply").toggle();
			});
	  	
	  	    var a = 50, b = 1;
	  		$("#up").click(function() {
	  		   a = a + b;
	  		   $("#clicks_up").html(a);
	  		});
	  		
	  		var x = 50, y = 1;
	  		$("#down").click(function() {
	  		   x = y + x;
	  		   $("#clicks_down").html(x);
	  		});
	  		
	  		$("#myinfo").click(function(){
	  		   alert("大爱我小宝哥，小宝哥超级帅！");
	  		});
	  	});
	</script>
  </body>
</html>
