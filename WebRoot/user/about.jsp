<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <title>大爱我小宝哥的博客---关于我</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/about.css">
	<jsp:include page="top.jsp"></jsp:include>
  </head>
  <body>
    <jsp:include page="header.jsp"></jsp:include>
     <div class="container">
      <p id="back-to-top"><a href="#top"><span></span>返回顶部</a></p>
      <div class="about_left col-md-4">
       <aside>
        <!-- 头像开始 -->
        <div class="avatar" style="background: url('${pageContext.request.contextPath }/static/img/head.jpg') no-repeat;">
          <a href="javascript:showMe()"><span>小宝哥</span></a>
        </div><hr>
        <p class="text-center">你曾予我怦然欢喜，未料爱情徒有虚名</p><hr>
        <!-- 头像结束 -->
        
        <!-- 基本信息开始 -->
        <div class="basic_info">
          <h2>基本信息</h2><hr>
          <div class="text-center">
            <p>Age：20</p>
		    <p>Birthday：1996-09-13</p>
            <p>Address：四川省成都市</p>
		    <p>QQNumber：1025502782</p>
            <p>CellPhone：18783060927</p>
            <p>Email：836124978@qq.com</p>
		    <p>工作：在校大学生</p>
            <p>在这个不知所措的年纪，好像一切都那么不尽人意。</p>
          </div>
        </div><hr>
        <!-- 基本信息结束 -->
        
        <!-- 个人技能开始 -->
        <div class="my_skills">
          <h2>个人技能</h2><hr>
          <div class="text-center">
            <p>JSP</p>
            <p>XML</p>
            <p>SSM</p>
            <p>CSS</p>
            <p>Java</p>
            <p>AJAX</p>
            <p>MySQL</p>
            <p>HTML5</p>
            <p>JQuery</p>
            <p>JavaEE</p>
            <p>Android</p>
            <p>JavaWeb</p>
          </div>
        </div><hr>
        <!-- 个人技能结束 -->
        
        <!-- 兴趣爱好开始 -->
        <div class="my_hobby">
          <h2>兴趣爱好</h2><hr>
          <div class="text-center">
            <p><span class="glyphicon glyphicon-camera"></span>&nbsp;&nbsp;<span>摄影</span></p>
            <p><span class="glyphicon glyphicon-headphones"></span>&nbsp;&nbsp;<span>听歌</span></p>
            <p><span class="glyphicon glyphicon-film"></span>&nbsp;&nbsp;<span>看电影</span></p>
            <p><span class="glyphicon glyphicon-flag"></span>&nbsp;&nbsp;<span>远足旅行</span></p>
          </div>
        </div><hr>
        <!-- 兴趣爱好结束 -->
      </aside>
      </div>
      
      <div class="about_right col-md-8">
      <section>
        <!-- 求职意向开始 -->
        <div>
          <h1>姓名：刘小宝</h1>
          <h2><small>求职意向：Java工程师，VR，人工智能</small></h2>
        </div>
        <!-- 求职意向结束 -->
        
        <!-- 教育背景开始 -->
        <div class="edu-back">
          <hr><h2><span class="glyphicon glyphicon-user"></span>教育背景</h2><hr>
          <p>
            <span>2015.9-2018.9</span>&nbsp;&nbsp;&nbsp;&nbsp;
            <span>四川托普信息技术职业学院</span>&nbsp;&nbsp;&nbsp;&nbsp;
            <span>计算机系移动软件开发专业</span>&nbsp;&nbsp;&nbsp;&nbsp;
          </p>
          <p>主修课程：Java,数据结构，数据库概论，数据库应用，数字逻辑，操作系统，计算方法，JavaEE，计算机网络，编译原理。</p>
        </div>
        <!-- 教育背景结束 -->
        
        <!-- 工作经历开始 -->
        <div class="work-road">
          <div class="road-one">
            <hr><h2><span class="glyphicon glyphicon-leaf"></span>工作经历</h2><hr>
            <p>因为本人还是在校学生，所以至今暂无任何与软件开发相关工作经历！</p>
          </div>
        </div>
        <!-- 工作经历结束 -->
        
         <!-- 项目经验开始 -->
        <div class="say-project">
          <hr><h2><span class="glyphicon glyphicon-tint"></span>项目经验</h2><hr>
          <h4>自写博客项目----<small>2016.9-2016.10</small></h4>
          <p>目的：为了巩固Java Web基础而写的整体案例，前端后台都是自己亲自撸码，总觉得欠缺什么！正在逐渐努力完善中！</p>
          <p>一。实现功能：</p>
          <div>
            <p>登录，注册(发送激活邮件)，注销，自动登录</p>
			<p>查看博文列表，博文详情，发表，评论博文</p>
			<p>留言板留言，博文内容回复</p>
          </div>
		  <p>二。使用技术：</p>
		  <div>
            <p>面向切面编程(AOP)，动态代理，线程安全ThreadLocal</p>
			<p>Java Web开发经典三层架构(MVC)</p>
			<p>MySQL，C3P0，Dbutils，BeanUtils，MD5加密</p>
			<p>Bootstrap，ckeditor，jstl标签，JQuery</p>
          </div>
        </div>
        <!-- 项目经验结束 -->
        
        <!-- 自我评价开始 -->
        <div>
          <div class="say-myself">
            <hr><h2><span class="glyphicon glyphicon-edit"></span>自我评价</h2><hr>
            <p>本人做事稳重，对待工作认真，责任心较强，待人真诚，善于沟通，时刻保持学习，积极拥抱变化。
          	      喜欢Java开发，具备一定的软件分析、设计、开发和应用能力，拥有较强的学习能力与团队精神，能
          	      够很快的适应工作环境。
		    </p>
          </div>
　　　         <div class="say-heart">
            <hr><h2><span class="glyphicon glyphicon-heart"></span>心灵鸡汤</h2><hr>
            <P>别人怎么看你，其实和你毫无关系，也不重要。你要怎么活，也和别人毫无关系，任何人也无权干涉。活自己的人生，走自己的路，路在脚下。</P>
            <p>现在越懒，以后要付出的就越多，现在爱拖，以后负担的就越多，人生的很多不如意并不是你运气不好，不是你不够漂亮，不是你没有机会，都是因为懒和拖。</p>
          </div>
        </div><hr>
        <!-- 自我评价结束 -->
      </section>
      </div> 
    </div>
    <script type="text/javascript">
      function showMe() {
          alert("大爱我小宝哥，小宝哥超级帅！");
      }
    </script>
    <jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>
