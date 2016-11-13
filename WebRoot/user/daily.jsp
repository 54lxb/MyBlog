<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <title>大爱我小宝哥的博客---个人日记</title>
    <style type="text/css">
       .col-md-12 {
			margin-top: 40px;
		}
       article {
		 background: rgba(119,195,218,0.4);
	     border-radius: 10px;
	   }
	
	  .text { 
		 text-indent: 40px;
		 font-size: 1.4em;
		 padding: 10px 20px;
	  }
	
	  .text li { 
		 margin-bottom: 5px; 
		 list-style: none;
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
        <div class="text-center">
          <h2 class="title" style="padding-top: 2%;">别人不是你的彼岸</h2>
          <h3><small>用心甘情愿的态度，过随遇而安的生活</small></h3>
          <div style="border-bottom: 2px solid #e2e2e2; "></div>
        </div>
        <ul class="text">
          <li>人生的轻松，就是能在这个喧嚣的尘世，不用献媚于谁，也不必跟谁说讨好的话，他玩他的，你活你的。两不相干，然后，两相安。</li>
          <li>你在意谁，在意到极致，就会活在这个人的阴影里。这种在意，不外乎两种情况：想求取和怕得罪。也就是说，人生的疲惫，更多的不是在自己这里拎不起，而是在别人那里撇不清。别人，成了自己沉重的彼岸。</li>
          <li>越在他人那里唯唯诺诺，就越会在自我的言行里战战兢兢。生怕说错什么，做错什么，进一步畏首畏尾，退一步左顾右盼，是进亦忧退亦忧。在这样的境况里，最累人的，不是做，而是拿捏着分寸去做。一个低声下气的人，凭恃他人，无论得到过多少，繁盛也好，光鲜也罢，最终，在自我矮化的奴才人格里，冷暖自知，甘苦备尝。</li>
          <li class="text-center">
            <img width="60%" src="${pageContext.request.contextPath }/static/img/article/s-banner1.jpg">
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
