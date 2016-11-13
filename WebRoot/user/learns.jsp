<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <title>大爱我小宝哥的博客---经典美文</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/learns.css">
	<jsp:include page="top.jsp"></jsp:include>
  </head>
  <body>
    <jsp:include page="header.jsp"></jsp:include>
    <div class="container">
      <p id="back-to-top"><a href="#top"><span></span>返回顶部</a></p>
      <div class="col-md-12">
        <div class="text-center">
	      <h2>
	        <font size="6">唯有爱和美食不能辜负!</font><br>
	        <small>By---<cite title="Andy">小宝</cite></small>
	      </h2>
	    </div>
	    
        <c:if test="${sessionScope.user != null }">
          <br><p class="text-center"><button class="btn btn-default" id="add_art">我要发帖</button></p>
            <div class="text-center col-md-12 add_art" style="display: none;">
              <section class="post_reply">
                <form action="${pageContext.request.contextPath }/servlet/NewArtServlet" method="post">
	              <div id="con_main">
		            <p>标题：<input type="text" id="subject" name="title"></p>
		            <p>作者：${user.username }</p>
		            <p>分类：
		              <select name="type">
		                <option value="经典美文">经典美文</option>
		                <option value="程序人生">程序人生</option>
		              </select>
		            </p>
		            <input type="text" id="subject" name="author" value="${user.username }" hidden="true">
		          </div><br>
		        
		          <div id="content" spellcheck="false" contenteditable="false">
			        <textarea class="ckeditor" cols="80" id="editor" name="content" rows="10"></textarea>
		          </div>
		          <div id="button" style="margin-top: 20px;">
		            <input type="submit" class="btn btn-success" value="发表" id="post">
		          </div>
		        </form>
              </section>
	        </div>
        </c:if>
        
        <c:forEach items="${requestScope.list }" var="article">
          <article class="article_list">
            <div class="col-md-12">
		      <div class="article-head">
	            <h2 class="article-title">
	              <span class="glyphicon glyphicon-edit"></span>
	              <a href="${pageContext.request.contextPath }/servlet/DetailArtServlet?id=${article.id }" title="${article.title }">${article.title }</a>
	            </h2>
	            <div class="article-meta">
	              <span class="article-author"><span class="glyphicon glyphicon-user"></span>&nbsp;${article.author }</span> •
	              <span class="article-type"><span class="glyphicon glyphicon-tasks"></span>&nbsp;${article.type }</span> •
	              <time class="article-date" datetime="${article.writetime }" title="${article.writetime }"><span class="glyphicon glyphicon-time"></span>${article.writetime }</time>
	            </div><br>
	          </div>
	          <div class="article-content">
	            <img class="col-md-3" src="${article.imgurl }">
	            <div class="col-md-9">${article.halfcont }</div>
	          </div>
	          <div class="article-permalink">
	            <a href="${pageContext.request.contextPath }/servlet/DetailArtServlet?id=${article.id }" class="btn btn-default">阅读全文</a>
	          </div>
	        </div>
	      </article>
        </c:forEach>
      </div>
    </div>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/ckeditor/ckeditor.js"></script>
    <jsp:include page="footer.jsp"></jsp:include>
    <script> 
		$(document).ready(function(){
		  $("#add_art").click(function(){
			 $(".add_art").fadeToggle();
		  });
		});
	</script>
  </body>
</html>
