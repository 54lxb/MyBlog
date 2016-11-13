<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <title>大爱我小宝哥的博客---个人相册</title>
	<jsp:include page="top.jsp"></jsp:include>
	<style type="text/css">
	  .col-md-12 {
		 margin-top: 40px;
	  }
	  h2 {
	    margin: 2%;
	  }
	  .gallery img {
		 width: 30%;
		 margin: 1%;
	  }
	</style>
  </head>
  <body>
   <jsp:include page="header.jsp"></jsp:include>
   <div class="container">
     <p id="back-to-top"><a href="#top"><span></span>返回顶部</a></p>
     <div id="content" class="text-center col-md-12">
       <hr><h2 class="text-center">小宝哥的相册</h2><hr>
	   <div class="gallery">
		<img src="/MyBlog/static/img/gallery/01.jpg" data-rel="lightbox" class="fa fa-expand"></img>
		<img src="/MyBlog/static/img/gallery/02.jpg" data-rel="lightbox" class="fa fa-expand"></img>
		<img src="/MyBlog/static/img/gallery/03.jpg" data-rel="lightbox" class="fa fa-expand"></img>
		<img src="/MyBlog/static/img/gallery/04.jpg" data-rel="lightbox" class="fa fa-expand"></img>
		<img src="/MyBlog/static/img/gallery/05.jpg" data-rel="lightbox" class="fa fa-expand"></img>
		<img src="/MyBlog/static/img/gallery/06.jpg" data-rel="lightbox" class="fa fa-expand"></img>
		<img src="/MyBlog/static/img/gallery/07.jpg" data-rel="lightbox" class="fa fa-expand"></img>
		<img src="/MyBlog/static/img/gallery/08.jpg" data-rel="lightbox" class="fa fa-expand"></img>
		<img src="/MyBlog/static/img/gallery/10.jpg" data-rel="lightbox" class="fa fa-expand"></img>
		<img src="/MyBlog/static/img/gallery/11.jpg" data-rel="lightbox" class="fa fa-expand"></img>
		<img src="/MyBlog/static/img/gallery/12.jpg" data-rel="lightbox" class="fa fa-expand"></img>
		<img src="/MyBlog/static/img/gallery/13.jpg" data-rel="lightbox" class="fa fa-expand"></img>
		<img src="/MyBlog/static/img/gallery/14.jpg" data-rel="lightbox" class="fa fa-expand"></img>
		<img src="/MyBlog/static/img/gallery/15.jpg" data-rel="lightbox" class="fa fa-expand"></img>
		<img src="/MyBlog/static/img/gallery/16.jpg" data-rel="lightbox" class="fa fa-expand"></img>
		<img src="/MyBlog/static/img/gallery/17.jpg" data-rel="lightbox" class="fa fa-expand"></img>
		<img src="/MyBlog/static/img/gallery/18.jpg" data-rel="lightbox" class="fa fa-expand"></img>
		<img src="/MyBlog/static/img/gallery/19.jpg" data-rel="lightbox" class="fa fa-expand"></img>
		<img src="/MyBlog/static/img/gallery/20.jpg" data-rel="lightbox" class="fa fa-expand"></img>
		<img src="/MyBlog/static/img/gallery/21.jpg" data-rel="lightbox" class="fa fa-expand"></img>
	   </div>
	 </div>	
   </div>
   <jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>
