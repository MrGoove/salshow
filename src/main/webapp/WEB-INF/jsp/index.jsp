<%@ page import="com.salshow.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
<title>salshow main page</title>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="${pageContext.request.contextPath}/resources/js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='${pageContext.request.contextPath}/resources/http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="${pageContext.request.contextPath}/resources/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- start slider -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fwslider.css" media="all">
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/fwslider.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/menu_jquery.js"></script>
<!--end slider -->
</head>
<body>
<!-- header_top -->
<div class="top_bg">
	<div class="container">
		<div class="header_top">
			<div class="top_left">
				<h2><a href="#">50%off</a>清爽五折季</h2>
			</div>
			<div class="top_right">
				<ul>
					<li><a href="#">最近浏览</a></li>|
					<li><a href="contact.html">联系我</a></li>|
						<%
				String userName = (String)session.getAttribute("userName");
			if(userName != null){
			%>
					<li><a href="#">${sessionScope.userName},欢迎,您的登陆次数为:${loginCount}</a></li>|
					<li class="login" >
						<div id="logoutD">
							<form id="logoutForm" action="${pageContext.request.contextPath}/User/logout" method="POST">
								<fieldset id="outbody">
									<input type="submit" id="logout" value="登出">
								</fieldset>
							</form>
						</div>
			</div>
			</li>
			<%} else{%>
			<li class="login" >
				<div id="loginContainer"><a href="#" id="loginButton"><span>登陆</span></a>
					<div id="loginBox">
						<form id="loginForm" action="${pageContext.request.contextPath}/User/login" method="POST">
							<fieldset id="body">
								<fieldset>
									<label for="email">邮箱</label>
									<input type="text" name="email2" id="email2">
								</fieldset>
								<fieldset>
									<label for="password">密码</label>
									<input type="password" name="password" id="password">
								</fieldset>
								<input type="submit" id="login" value="Sign in">
								<label for="checkbox"><input type="checkbox" id="checkbox"> <i>记住我</i></label>
							</fieldset>
							<span><a href="#">忘记密码?</a></span>
						</form>
					</div>
				</div>
			</li>
			<%}%>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
</div>
<!-- header -->
<div class="header_bg">
	<div class="container">
		<div class="header">
			<div class="logo">
				<a href="${pageContext.request.contextPath}/index"><img src="${pageContext.request.contextPath}/resources/images/logo.png" alt=""/> </a>
			</div>
			<!-- start header_right -->
			<div class="header_right">
				<div class="create_btn">
					<% if(userName==null){%>
					<a class="arrow"  href="${pageContext.request.contextPath}/registration">创建账号<img src="${pageContext.request.contextPath}/resources/images/right_arrow.png" alt=""/>  </a>

					<%} else{%>
					<a class="arrow"  href="${pageContext.request.contextPath}/goods/goodsManage">管理商品<img src="${pageContext.request.contextPath}/resources/images/right_arrow.png" alt=""/>  </a>
					<%}%>
				</div>
				<ul class="icon1 sub-icon1 profile_img">
					<li><a class="active-icon c2" href="#"> </a>
						<ul class="sub-icon1 list">
							<li><h3>购物车（空）</h3><a href=""></a></li>
							<li><p>查看购物车<a href="">请登陆</a></p></li>
						</ul>
					</li>
				</ul>
				<ul class="icon1 sub-icon1 profile_img">
					<li><a class="active-icon c1" href="#"> </a>
						<ul class="sub-icon1 list">
							<li><h3>心愿单（空）</h3><a href=""></a></li>
							<li><p>查看心愿单<a href="">请登陆</a></p></li>
						</ul>
					</li>
				</ul>
				<div class="search">
					<form action="${pageContext.request.contextPath}/goods/goodsList" method="GET">
						<input type="text" id="goodsName" name="goodsName"  placeholder="搜索...">
						<input type="submit" value="">
					</form>
				</div>
				<div class="clearfix"> </div>
			</div>

			<!-- start header menu -->
			<ul class="megamenu skyblue">
				<li><a class="color1" href="${pageContext.request.contextPath}/index">主页</a></li>
				<li class="grid"><a class="color2" href="#">分类</a>
					<div class="megapanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<h4>商店</h4>
									<ul>
										<li><a href="${pageContext.request.contextPath}/goods/goodsList">新品</a></li>
										<li><a href="${pageContext.request.contextPath}/goods/goodsList?category=2">男装</a></li>
										<li><a href="${pageContext.request.contextPath}/goods/goodsList">女装</a></li>
										<li><a href="${pageContext.request.contextPath}/goods/goodsList">装饰</a></li>
										<li><a href="${pageContext.request.contextPath}/goods/goodsList">童装</a></li>
										<li><a href="${pageContext.request.contextPath}/goods/goodsList">品牌</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col2"></div>
							<div class="col1"></div>
							<div class="col1"></div>
							<div class="col1"></div>
							<div class="col1"></div>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>
<!-- content -->
<div class="container">
<div class="main">
	<div class="row content_top">
		<div class="col-md-9 content_left">
	<!-- start slider -->
    <div id="fwslider">
        <div class="slider_container">
            <div class="slide"> 
                <!-- Slide image -->
                    <img src="${pageContext.request.contextPath}/resources/images/slider1.jpg" class="img-responsive" alt=""/>
                <!-- /Slide image -->
            </div>
            <!-- /Duplicate to create more slides -->
            <div class="slide">
                <img src="${pageContext.request.contextPath}/resources/images/slider2.jpg" class="img-responsive" alt=""/>
            </div>
            <div class="slide">
                <img src="${pageContext.request.contextPath}/resources/images/slider3.jpg" class="img-responsive" alt=""/>
            </div>
            <!--/slide -->
        </div>
        <div class="timers"></div>
        <div class="slidePrev"><span></span></div>
        <div class="slideNext"><span></span></div>
    </div>

	<!-- end  slider -->
		</div>
		<div class="col-md-3 sidebar">
		<div class="grid_list">
			<a href="${pageContext.request.contextPath}/details"> 
				<div class="grid_img"> 
					<img src="${pageContext.request.contextPath}/resources/images/grid_pic1.jpg" class="img-responsive" alt=""/>
				</div>
				<div class="grid_text left">
					<h3><a href="#">35折钜惠<sub></sub></a></h3>
					<p>精选男士皮包</p>
				</div>
				<div class="clearfix"></div>
			</a>	
			</div>	
		<div class="grid_list">
			<a href="${pageContext.request.contextPath}/details"> 
				<div class="grid_text-middle">
					<h3><a href="#">潮流前沿</a></h3>
					<p>新品潮流服装</p>
				</div>
				<div class="grid_img last"> 
					<img src="${pageContext.request.contextPath}/resources/images/grid_pic2.jpg" class="img-responsive" alt=""/>
				</div>
				<div class="clearfix"></div>
			  </a>
			</div>				
		<div class="grid_list"> 
			<a href="${pageContext.request.contextPath}/details">
				<div class="grid_img"> 
					<img src="${pageContext.request.contextPath}/resources/images/grid_pic3.jpg" class="img-responsive" alt=""/>
				</div>
				<div class="grid_text left">
					<h3><a href="#">活力一夏</a></h3>
					<p>精彩点击就有</p>
				</div>
				<div class="clearfix"></div>
			</a>
			</div>				
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- start content -->
	<div class="content">
		<div class="content_text">
			<h3>每周明星品牌</h3>
			<h4><a href="#">Levis Abrand</a></h4>
		</div>
		<!-- grids_of_3 -->
		<div class="row grids">
			<div class="col-md-3 grid1">
			  <a href="${pageContext.request.contextPath}/details">
				<img src="${pageContext.request.contextPath}/resources/images/pic1.jpg" class="img-responsive" alt=""/>
				<div class="look">			
					<h4>轻奢购物主义</h4>
					<p>点击阅读</p>
				</div></a>
			</div>
			<div class="col-md-3 grid1">
			  <a href="${pageContext.request.contextPath}/details">
				<img src="${pageContext.request.contextPath}/resources/images/pic2.jpg" class="img-responsive" alt=""/>
				<div class="look">			
					<h4>买家贴士</h4>
					<p>点击阅读</p>
				</div></a>
			</div>
			<div class="col-md-3 grid1">
			  <a href="${pageContext.request.contextPath}/details">
				<img src="${pageContext.request.contextPath}/resources/images/pic3.jpg" class="img-responsive" alt=""/>
				<div class="look">			
					<h4>Levis的历史</h4>
					<p>点击阅读</p>
				</div></a>
			</div>
			<div class="col-md-3 grid1">
			  <a href="${pageContext.request.contextPath}/details">
				<img src="${pageContext.request.contextPath}/resources/images/pic4.jpg" class="img-responsive" alt=""/>
				<div class="look">			
					<h4>潮流嗅探</h4>
					<p>点击阅读</p>
				</div></a>
			</div>
		</div>
		<!-- end grids_of_3 -->
	</div>
	<!-- end content -->
</div>
</div>
<!-- footer_top -->
<div class="footer_top">
 <div class="container">
	<div class="span_of_4">
		<div class="span1_of_4">
			<h4>商店</h4>
			<ul class="f_nav">
				<li><a href="#">新品</a></li>
				<li><a href="#">男士</a></li>
				<li><a href="#">女人</a></li>
				<li><a href="#">饰品</a></li>
				<li><a href="#">儿童</a></li>
				<li><a href="#">品牌</a></li>
				<li><a href="#">流行趋势</a></li>
				<li><a href="#">抢购</a></li>
			</ul>
		</div>
		<div class="span1_of_4">
			<h4>帮助</h4>
			<ul class="f_nav">
				<li><a href="#">最多提问解答</a></li>
				<li><a href="#">人工服务</a></li>
				<li><a href="#">售后</a></li>
				<li><a href="#">联系地址</a></li>
			</ul>

		</div>
		<div class="span1_of_4">
			<h4>账号</h4>
			<ul class="f_nav">
				<li><a href="#">登陆</a></li>
				<li><a href="#">新建账号</a></li>
				<li><a href="#">新建心愿单</a></li>
				<li><a href="#">新建购物车</a></li>
			</ul>

		</div>
		<div class="span1_of_4">
		</div>
		<div class="clearfix"></div>
		</div>
		<!-- start span_of_2 -->
		<div class="span_of_2">
		<div class="span1_of_2">
			<h5>需要帮助? <a href="#">联系我 <span> ></span> </a> </h5>
			<p>手机:13286116949</p>
		</div>
		<div class="span1_of_2">
			<h5>可通过以下方式与我联系：</h5>
			<div class="social-icons">
				     <ul>
				        <li><a href="#" target="_blank"></a></li>
				        <li><a href="#" target="_blank"></a></li>
				        <li><a href="#" target="_blank"></a></li>
				        <li><a href="#" target="_blank"></a></li>
				        <li><a href="#" target="_blank"></a></li>
					</ul>
			</div>
		</div>
		<div class="clearfix"></div>
		</div>
  </div>
</div>
<!-- footer -->
<div class="footer">
 <div class="container">
	<div class="copy">
		<p class="link">&copy; All rights reserved | Design by MrGoove; <a href="sphinx12252@hotmail.com">联系我</a></p>
	</div>
 </div>
</div>
</body>
</html>