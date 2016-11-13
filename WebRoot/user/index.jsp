<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <title>大爱我小宝哥的博客---主页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/index.css">
	<jsp:include page="top.jsp"></jsp:include>
  </head>
  <body>
    <jsp:include page="header.jsp"></jsp:include>
    <div class="container">
      <p id="back-to-top"><a href="#top"><span></span>返回顶部</a></p>
      <!-- 顶部滚动幻灯片开始 -->
	  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
		  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		  <li data-target="#carousel-example-generic" data-slide-to="1"></li>
		  <li data-target="#carousel-example-generic" data-slide-to="2"></li>
		  <li data-target="#carousel-example-generic" data-slide-to="3"></li>
		  <li data-target="#carousel-example-generic" data-slide-to="4"></li>
		</ol>
		
		<!-- Carousel items -->
		<div class="carousel-inner">
		  <div class="active item">
		    <img src="${pageContext.request.contextPath }/static/img/carousel/slide0.jpg" alt="Taylor Swift"/>
	        <div class="carousel-caption">
	          <div class="carousel_font">
	            <p>我们不停的翻弄着回忆，却再也找不回那时的自己！</p>
		        <p><small>By---小宝</small></p>
		      </div>
	        </div>
		  </div>
		  <div class="item">
		    <img src="${pageContext.request.contextPath }/static/img/carousel/slide1.jpg" alt=""/>
	        <div class="carousel-caption">
	          <div class="carousel_font">
	            <p>好心不如好嘴，会做得不如会说的！</p>
		        <p><small>By---小宝</small></p>
		      </div>
	        </div>
		  </div>
		  <div class="item">
		    <img src="${pageContext.request.contextPath }/static/img/carousel/slide2.jpg" alt=""/>
	        <div class="carousel-caption">
	          <div class="carousel_font">
	            <p>别把自己想的太伟大，要知道，在别人的世界里。不管你做的多好，你都只是个配角而已。</p>
		        <p><small>By---小宝</small></p>
		      </div>
	        </div>
		  </div>
		  <div class="item">
	        <img src="${pageContext.request.contextPath }/static/img/carousel/slide3.jpg" alt=""/>
	        <div class="carousel-caption">
	          <div class="carousel_font">
	            <p>我不去想是否能够成功，既然选择了远方，便只顾风雨兼程！</p>
	            <p><small>By---小宝</small></p>
	          </div>
	        </div>
		  </div>
		  <div class="item">
		    <img src="${pageContext.request.contextPath }/static/img/carousel/slide4.jpg" alt=""/>
		    <div class="carousel-caption">
		      <div class="carousel_font">
		        <p>有望得到的要努力，无望得到的不介意，这样无论输赢，姿态都会好看。</p>
			    <p><small>By---小宝</small></p>
			  </div>
	        </div>
		  </div>
		</div>
		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
		  <span class="glyphicon glyphicon-chevron-left"></span>
		  <span class="sr-only">上一页</span>
		</a>
		<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
		  <span class="glyphicon glyphicon-chevron-right"></span>
		  <span class="sr-only">下一页</span>
		</a>
	  </div>
	  <!-- 顶部滚动幻灯片结束 -->
	  
	  <!-- 主页主要内容开始 -->
	  <div class="col-md-4 section-content">
      <section>
	    <embed src="${pageContext.request.contextPath }/static/swf/clock.swf" type="application/x-shockwave-flash"
          quality="high" bgcolor="#ffffff" wmode="transparent" allowscriptaccess="always" name="honehoneclock" 
          pluginspage="http://www.macromedia.com/go/getflashplayer" >
        </embed>
        <div class="myinfo">
          <div class="header" style="background: url('${pageContext.request.contextPath }/static/img/head.jpg') no-repeat;">
	        <a href="about.jsp"><span>小宝哥</span></a>
	      </div>
          <p class="text-center">用心甘情愿的态度，过随遇而安的生活</p>
        </div><hr>
        <div class="text-center"> 
		  <h3>博客分类</h3>
	      <p><a href="#">个人日记(30)</a></p>
	      <p><a href="#">程序人生(25)</a></p>
	      <p><a href="#">经典美文(40)</a></p>
		</div><hr>
		<div class="text-center">
		  <h3>近期文章</h3>
	      <p><a href="${pageContext.request.contextPath }/servlet/DetailArtServlet?id=1">不要随便找喜欢的人聊天</a></p>
	      <p><a href="${pageContext.request.contextPath }/servlet/DetailArtServlet?id=3">怕黑就开灯，想念就联系</a></p>
	      <p><a href="${pageContext.request.contextPath }/servlet/DetailArtServlet?id=5">原来，灯火阑珊处空无一人</a></p>
		</div><hr>
        <object type="application/x-shockwave-flash" style="outline:none;"
          data="${pageContext.request.contextPath }/static/swf/hamster.swf">
          <param name="movie" value="swf/hamster.swf">
          <param name="AllowScriptAccess" value="always">
          <param name="wmode" value="opaque">
        </object><br>
        <div class="text-center">
		  <h4>友情链接</h4>
		  <p>
		    <a href="http://bbs.csdn.net/home">CSDN</a>
		    &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
		    <a href="http://www.getbootstrap.com/">Bootstrap</a>
		  </p>
		  <p>
		    <a href="https://github.com/">Github</a>
		    &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
		    <a href="http://www.w3school.com.cn/">W3School</a>
		  </p>
		</div><hr>
		<p class="text-center">生命不息，奋斗不止，万事起于忽微，量变引起质变</p>
      </section>
      </div>
      
      <div class="col-md-8 article-content">
      <article>
        <p class="title text-center">别人不是你的彼岸</p>
        <ul class="text">
          <li>人生的轻松，就是能在这个喧嚣的尘世，不用献媚于谁，也不必跟谁说讨好的话，他玩他的，你活你的。两不相干，然后，两相安。</li>
          <li>你在意谁，在意到极致，就会活在这个人的阴影里。这种在意，不外乎两种情况：想求取和怕得罪。也就是说，人生的疲惫，更多的不是在自己这里拎不起，而是在别人那里撇不清。别人，成了自己沉重的彼岸。</li>
          <li>越在他人那里唯唯诺诺，就越会在自我的言行里战战兢兢。生怕说错什么，做错什么，进一步畏首畏尾，退一步左顾右盼，是进亦忧退亦忧。在这样的境况里，最累人的，不是做，而是拿捏着分寸去做。一个低声下气的人，凭恃他人，无论得到过多少，繁盛也好，光鲜也罢，最终，在自我矮化的奴才人格里，冷暖自知，甘苦备尝。</li>
          <li class="text-center">
            <img width="70%" src="${pageContext.request.contextPath }/static/img/article/s-banner1.jpg">
          </li>
          <li>不是一路人，就不会在一个语言系统里。不在一个语言系统，就不会在同一个世界中。知心的话，不必说给不懂的人听，说了不懂还在其次，最怕的，是说了不屑。不懂已是伤害，不屑便是亵渎。</li>
          <li>散淡的人，只与散淡的人合得来。而奸邪的人，看起来跟谁都合得来。这不奇怪，因为在这个世界里，有的人只认对的人，有的人，似乎跟谁都对。只因为，有的人，是奔着相宜的心去的;而有的人，是奔着可逐的名利去的。</li>
          <li>在交往上，目的性太强，原则性就会差。在左右逢源的人那里，找不到纯美的人性;在蝇营狗苟的人那里，找不到纯净的人格。这个世界，总有狷介甚或狂傲的人，看起来，没有几个可以合得来的人，他们不迎合，不投降，只是不想生命苟且于世俗。</li>
          <li>伟岸的人心中常常都有一些孤傲，他们遗世独立，盛享着内心孤独的清凉。每一个窝藏着的私心，都会影响到对他人公允的评判。盛大的完美，未必坍圮于风雨，却可以瓦解于私心。一千次地改变和完善自己，终难抵别人的一颗横无际涯的私心。</li>
		  <li>所以，不要苛求在所有的人那里都有好的评价。讨好了所有的人，就意味着要彻底得罪了自己。一个人，平庸点不可怕，变得八面玲珑才可怕。你最终要活在相悦的人心里。不为不值得的人去改变，不在飘忽而逝的生命过客那里留恋，也不必为朵朵过眼烟云烦扰。与其要别人看好，不如自己活到好看。</li>
        </ul><hr>
        <div class="footer text-center">
          <span><button id="up" class="btn btn-success"><span class="glyphicon glyphicon-thumbs-up">(</span><span id="clicks_up">50</span>)</button></span>
          <span><button class="btn btn-info" id="myinfo">作者：刘小宝</button></span>
          <span><button id="down" class="btn btn-primary"><span class="glyphicon glyphicon-thumbs-down"></span>(<span id="clicks_down">50</span>)</button></span>
        </div><br>
      </article>
      <!-- 主页主要内容结束 -->
      </div>
	</div>
    <jsp:include page="footer.jsp"></jsp:include>
    <script type="text/javascript">
	  	$(document).ready(function () {
	  	
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
