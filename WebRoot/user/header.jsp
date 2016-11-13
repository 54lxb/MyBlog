<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
  <!-- 顶部导航栏开始 -->
  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="navbar-inner">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="${pageContext.request.contextPath }/user/index.jsp">小宝哥的博客</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li class="active"><a href="${pageContext.request.contextPath }/user/index.jsp" title="Protal">主页</a></li>
            <!-- 
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Live And Learn">学无止境<b class="caret"></b></a>
              <ul class="dropdown-menu text-center">
                <li><a href="${pageContext.request.contextPath }/user/classictext.jsp" title="Classic Text">经典美文</a></li>
                <li><a href="${pageContext.request.contextPath }/user/programlife.jsp" title="Program Life">程序人生</a></li>
              </ul>
            </li>
            -->
            <li><a href="${pageContext.request.contextPath }/servlet/SelectArtServlet" title="Live And Learn">学无止境</a></li>
            <li><a href="${pageContext.request.contextPath }/user/daily.jsp" title="Daily">个人日记</a></li>
            <li><a href="${pageContext.request.contextPath }/user/album.jsp" title="Album">个人相册</a></li>
            <li><a href="${pageContext.request.contextPath }/servlet/SelectMsgServlet" title="Message">留言板</a></li>
            <li><a href="${pageContext.request.contextPath }/user/about.jsp" title="About">关于我</a></li>
          </ul>
          <!-- 
          <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
          </form>
          -->
          <div class="navbar-right">
            <c:if test="${sessionScope.user == null }">
    	      <span style="color: #fff;">欢迎光临，游客！</span>
         	  <font color="#fff">[</font><a href="${pageContext.request.contextPath }/user/login.jsp" title="Login">登录</a><font color="#fff">]</font>
       	      <font color="#fff">[</font><a href="${pageContext.request.contextPath }/user/regist.jsp" title="Regist">注册</a><font color="#fff">]</font>
       	    </c:if>
       	    <c:if test="${sessionScope.user != null }">
    	      <span style="color: #fff;">欢迎回来，${user.username }！</span>
         	  <font color="#fff">[</font><a href="${pageContext.request.contextPath }/servlet/LogoutServlet" title="Logout">注销</a><font color="#fff">]</font>
       	      <c:if test="${sessionScope.user.role == 1 }">
       	        <font color="#fff">[</font><a href="${pageContext.request.contextPath }/admin/admin.jsp" title="BackStage">后台</a><font color="#fff">]</font>
       	      </c:if>
       	    </c:if>
          </div><!-- /.navbar-right end -->
        </div><!-- /.navbar-collapse end -->
      </div><!-- /.container-fluid end -->
    </div>
  </nav>
  <!-- 顶部导航栏结束 -->
</header>
