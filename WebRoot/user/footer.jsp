<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <footer>
    <p class="text-center">版权所有 2016-10-30 欢迎借鉴</p>
  </footer>
  <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/bootstrap.js"></script>
  <script type="text/javascript">
		$(function(){  
	        //当滚动条的位置处于距顶部100像素以下时，跳转链接出现，否则消失  
	        $(function () {  
	            $(window).scroll(function(){  
	                if ($(window).scrollTop()>100) {  
	                    $("#back-to-top").fadeIn(1500);  
	                }  
	                else {  
	                    $("#back-to-top").fadeOut(1500);  
	                }  
	            });  
	  
	            //当点击跳转链接后，回到页面顶部位置  
	  
	            $("#back-to-top").click(function(){  
	                $('body,html').animate({scrollTop:0},1000);  
	                return false;  
	            });
	            
	            /*
	            $("ul.nav :li>a").click(function(){
	            	$('ul.nav :li').attr("class","");
	            	$('ul.nav li').attr("class","active"); 
	            });  
	            */
	        });  
	    });  
	</script>  
