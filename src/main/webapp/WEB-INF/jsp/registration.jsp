<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Shoppe Bootstarp Website Template | Registration :: 小贝壳网站模板</title>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="${pageContext.request.contextPath}/resources/js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="${pageContext.request.contextPath}/resources/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="${pageContext.request.contextPath}/resources/js/menu_jquery.js"></script>
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
					<li><a href="#">${sessionScope.userName},欢迎</a></li>|
					<li class="login" >
						<div id="loginout">
							<form id="logoutForm" action="${pageContext.request.contextPath}/User/logout" method="POST">
								<fieldset id="outbody">
									<%--<input type="submit" id="logout" value="log out">--%>
									<a href="/User/logout">登出</a>
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
					<a class="arrow"  href="${pageContext.request.contextPath}/registration">新建账号<img src="${pageContext.request.contextPath}/resources/images/right_arrow.png" alt=""/>  </a>

					<%} else{%>
					<a class="arrow"  href="${pageContext.request.contextPath}/goods/goodsManage">管理商品<img src="${pageContext.request.contextPath}/resources/images/right_arrow.png" alt=""/>  </a>
					<%}%>
				</div>
				<ul class="icon1 sub-icon1 profile_img">
					<li><a class="active-icon c2" href="#"> </a>
						<ul class="sub-icon1 list">
							<li><h3>购物车空</h3><a href=""></a></li>
							<li><p>查看购物车<a href="">请点击登陆</a> </p></li>
						</ul>
					</li>
				</ul>
				<ul class="icon1 sub-icon1 profile_img">
					<li><a class="active-icon c1" href="#"> </a>
						<ul class="sub-icon1 list">
							<li><h3>心愿单空</h3><a href=""></a></li>
							<li><p>查看心愿单 <a href="">请点击登陆</a></p></li>
						</ul>
					</li>
				</ul>
				<div class="search">
					<form>
						<input type="text" value="" placeholder="搜索...">
						<input type="submit" value="">
					</form>
				</div>
				<div class="clearfix"></div>
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
                                        <li><a href="${pageContext.request.contextPath}/goods/goodsList?catogory=1">女装</a></li>
                                        <li><a href="${pageContext.request.contextPath}/goods/goodsList?catogory=2">男装</a></li>
                                        <li><a href="${pageContext.request.contextPath}/goods/goodsList?catogory=3">装饰</a></li>
                                        <li><a href="${pageContext.request.contextPath}/goods/goodsList?catogory=4">皮具/包包</a></li>
                                        <li><a href="${pageContext.request.contextPath}/goods/goodsList?catogory=5">品牌</a></li></ul>
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
	<!-- start registration -->
	<div class="registration">
		<div class="registration_left">
		<h2>新顾客? <span> 请注册 </span></h2>
		<!-- [if IE]
		    < link rel='stylesheet' type='text/css' href='ie.css'/>  
		 [endif] -->  
		  
		<!-- [if lt IE 7]>  
		    < link rel='stylesheet' type='text/css' href='ie6.css'/>  
		<! [endif] -->  
		<script>
			(function() {
		
			// Create input element for testing
			var inputs = document.createElement('input');
			
			// Create the supports object
			var supports = {};
			
			supports.autofocus   = 'autofocus' in inputs;
			supports.required    = 'required' in inputs;
			supports.placeholder = 'placeholder' in inputs;
		
			// Fallback for autofocus attribute
			if(!supports.autofocus) {
				
			}
			
			// Fallback for required attribute
			if(!supports.required) {
				
			}
		
			// Fallback for placeholder attribute
			if(!supports.placeholder) {
				
			}
			
			// Change text inside send button on submit
			var send = document.getElementById('register-submit');
			if(send) {
				send.onclick = function () {
					this.innerHTML = '...Sending';
				}
			}
		
		})();
		</script>
		 <div class="registration_form">
		 <!-- Form -->
			<form id="registration_form" action="${pageContext.request.contextPath}/User/regist" method="post">
				<div>
					<label>
						<input name="FName" placeholder="姓:" type="text" tabindex="1" required autofocus>
					</label>
				</div>
				<div>
					<label>
						<input name="LName" placeholder="名:" type="text" tabindex="2" required autofocus>
					</label>
				</div>
				<div>
					<label>
						<input name="Email" placeholder="邮箱:" type="email" tabindex="3" required>
					</label>
				</div>
				<div>
					<label>
						<input name="Address" placeholder="地址:" type="text" tabindex="4" required>
					</label>
				</div>
				<div class="sky-form">
					<div class="sky_form1">
						<ul>
							<li><label class="radio left"><input type="radio" name="radio" checked=""><i></i>男生</label></li>
							<li><label class="radio"><input type="radio" name="radio"><i></i>女生</label></li>
							<div class="clearfix"></div>
						</ul>
					</div>
				</div>
				<div>
					<label>
						<input name="password" placeholder="密码" type="password" tabindex="5" required>
					</label>
				</div>						
				<div>
					<label>
						<input placeholder="确认密码" type="password" tabindex="5" required>
					</label>
				</div>	
				<div>
					<input type="submit" value="注册" id="register-submit">
				</div>
				<div class="sky-form">
					<label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>我同意shoppe.cn的&nbsp;<a class="terms" href="#">服务协议</a> </label>
				</div>
			</form>
			<!-- /Form -->
		</div>
	</div>
	<div class="registration_left">
		<h2></h2>
		 <div class="registration_form">
			 <h2> <span> 急速注册 </span></h2>
		 <!-- Form -->
			<form id="registration_form" action="${pageContext.request.contextPath}/User/regist" method="post">
				<div>
					<label>
						<input name="Email" placeholder="邮箱:" type="email" tabindex="3" required>
					</label>
				</div>
				<div>
					<label>
						<input name="password" placeholder="密码" type="password" tabindex="4" required>
					</label>
				</div>						
				<div>
					<input type="submit" value="注册" id="register-submit">
				</div>
				<div class="forget">
					<a href="#">忘记密码</a>
				</div>
			</form>
			<!-- /Form -->
			</div>
	</div>
	<div class="clearfix"></div>
	</div>
	<!-- end registration -->
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