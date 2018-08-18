<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isThreadSafe="false" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>Shoppe Bootstarp Website Template | Buy :: 小贝壳网站模板</title>
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
				<h2><a href="#">50%off</a> use coupon code "big61" and get extra 33% off on orders above rs 2,229 </h2>
			</div>
			<div class="top_right">
				<ul>
					<li><a href="#">Recently viewed</a></li>|
					<li><a href="contact.html">Contact</a></li>|
						<%
				String userName = (String)session.getAttribute("userName");
			if(userName != null){
			%>
					<li><a href="#">${sessionScope.userName},welcome</a></li>|
					<li class="login" >
						<div id="loginout">
							<form id="logoutForm" action="${pageContext.request.contextPath}/User/logout" method="POST">
								<fieldset id="outbody">
									<%--<input type="submit" id="logout" value="log out">--%>
									<a href="/User/logout">log out</a>
								</fieldset>
							</form>
						</div>
			</div>
			</li>
			<%} else{%>
			<li class="login" >
				<div id="loginContainer"><a href="#" id="loginButton"><span>Login</span></a>
					<div id="loginBox">
						<form id="loginForm" action="${pageContext.request.contextPath}/User/login" method="POST">
							<fieldset id="body">
								<fieldset>
									<label for="email">Email Address</label>
									<input type="text" name="email2" id="email2">
								</fieldset>
								<fieldset>
									<label for="password">Password</label>
									<input type="password" name="password" id="password">
								</fieldset>
								<input type="submit" id="login" value="Sign in">
								<label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>
							</fieldset>
							<span><a href="#">Forgot your password?</a></span>
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
					<a class="arrow"  href="${pageContext.request.contextPath}/registration">create account <img src="${pageContext.request.contextPath}/resources/images/right_arrow.png" alt=""/>  </a>

					<%} else{%>
					<a class="arrow"  href="${pageContext.request.contextPath}/goods/goodsManage">manage Goods <img src="${pageContext.request.contextPath}/resources/images/right_arrow.png" alt=""/>  </a>
					<%}%>
				</div>
				<ul class="icon1 sub-icon1 profile_img">
					<li><a class="active-icon c2" href="#"> </a>
						<ul class="sub-icon1 list">
							<li><h3>shopping cart empty</h3><a href=""></a></li>
							<li><p>if items in your wishlit are missing, <a href="">login to your account</a> to view them</p></li>
						</ul>
					</li>
				</ul>
				<ul class="icon1 sub-icon1 profile_img">
					<li><a class="active-icon c1" href="#"> </a>
						<ul class="sub-icon1 list">
							<li><h3>wishlist empty</h3><a href=""></a></li>
							<li><p>if items in your wishlit are missing, <a href="">login to your account</a> to view them</p></li>
						</ul>
					</li>
				</ul>
				<div class="search">
					<form>
						<input type="text" value="" placeholder="search...">
						<input type="submit" value="">
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
			<!-- start header menu -->
			<ul class="megamenu skyblue">
				<li><a class="color1" href="${pageContext.request.contextPath}/index">Home</a></li>
				<li class="grid"><a class="color2" href="#">new arrivals</a>
					<div class="megapanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<h4>shop</h4>
									<ul>
										<li><a href="${pageContext.request.contextPath}/goods/goods">new arrivals</a></li>
										<li><a href="${pageContext.request.contextPath}/goods/goodsList">men</a></li>
										<li><a href="${pageContext.request.contextPath}/woman">women</a></li>
										<li><a href="${pageContext.request.contextPath}/woman">accessories</a></li>
										<li><a href="${pageContext.request.contextPath}/woman">kids</a></li>
										<li><a href="${pageContext.request.contextPath}/woman">brands</a></li>
									</ul>
								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>help</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>my company</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>account</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>my company</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>popular</h4>

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
				<li class="active grid"><a class="color4" href="#">women</a>
					<div class="megapanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<h4>shop</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>help</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>my company</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>account</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>my company</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>popular</h4>

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
				<li><a class="color5" href="#">accessories</a>
					<div class="megapanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<h4>shop</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>help</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>my company</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>account</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>my company</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>popular</h4>

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
				<li><a class="color6" href="#">kids</a>
					<div class="megapanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<h4>shop</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>help</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>my company</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>account</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>my company</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>popular</h4>

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
				<li><a class="color7" href="#">brands</a>
					<div class="megapanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<h4>shop</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>help</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>my company</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>account</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>my company</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>popular</h4>

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
				<li><a class="color8" href="#">trends</a>
					<div class="megapanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<h4>shop</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>help</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>my company</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>account</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>my company</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>popular</h4>

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
				<li><a class="color9" href="#">sale</a>
					<div class="megapanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<h4>shop</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>help</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>my company</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>account</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>my company</h4>

								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>popular</h4>

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
				<li><a class="color10" href="contact.html">Contact</a>
					<div class="megapanel">
						<div class="row">
							<div class="col3">
								<div class="h_nav">
									<h4>contact us</h4>
								</div>
								<form class="contact">
									<label for="name">Name</label>
									<input id="name" type="text"/>
									<label for="email">E-mail</label>
									<input id="email" type="text"/>
									<label for="message">Message</label>
									<textarea rows="8" id="message"></textarea>
									<input type="submit" value="Send"/>
								</form>
							</div>
							<div class="col3">
							</div>
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
		<div class="shoping_bag">
			<h4><img src="${pageContext.request.contextPath}/resources/images/bag1.png">my shopping bag / <span> 11 item</span></h4>
			<ul class="s_art">
				<li><img src="${pageContext.request.contextPath}/resources/images/art1.png"></li>
				<li><span> 11 item</span></li>
			</ul>
			<div class="clearfix"></div>
		</div>
		<div class="shoping_bag1">
			<div class="shoping_left">
				<div class="shoping1_of_1">
					<img src="${pageContext.request.contextPath}/resources/images/w3.jpg"  class="img-responsive" alt="" />
				</div>
				<div class="shoping1_of_2">
					<h4><a href="#">shakumbhari women black kurtas</a> </h4>
					<span>size <b>xl</b>&nbsp;&nbsp; qty <b>1</b> | code :1175</span>
					<ul class="s_icons">
						<li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/s_icon1.png" alt=""></a></li>
						<li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/s_icon2.png" alt=""></a></li>
						<li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/s_icon3.png" alt=""></a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="shoping_right">
				<p>35% off &nbsp;<span> Rs. 1,899</span></p>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="shoping_bag1">
			<div class="shoping_left">
				<h2><a href="#"><img src="${pageContext.request.contextPath}/resources/images/gift.jpg">gift wrap </a> <span> for rs. 25</span></h2>
			</div>
			<div class="shoping_right">
				<p>sub total &nbsp;<span> Rs. 1,899</span></p>
				<p>vat collected &nbsp;<span> Rs. 91</span></p>
				<p>delivery &nbsp;<a href="#">free</a>&nbsp;<span> Rs. 0</span></p>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="shoping_bag1">
			<div class="shoping_left">
				<h2><a href="#"><img src="${pageContext.request.contextPath}/resources/images/login.jpg">login </a> <span> to apply coupons</span></h2>
			</div>
			<div class="shoping_right">
				<p>coupon discount &nbsp;<span class="color"> Rs. 0</span></p>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="shoping_bag2">
			<div class="shoping_left">
				<a class="btn1" href="details.html">place order</a>
			</div>
			<div class="shoping_right">
				<p class="tot">total &nbsp;<span class="color"> Rs. 2,109</span></p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- footer_top -->
<div class="footer_top">
	<div class="container">
		<div class="span_of_4">
			<div class="span1_of_4">
				<h4>Shop</h4>
				<ul class="f_nav">
					<li><a href="#">new arrivals</a></li>
					<li><a href="#">men</a></li>
					<li><a href="#">women</a></li>
					<li><a href="#">accessories</a></li>
					<li><a href="#">kids</a></li>
					<li><a href="#">brands</a></li>
					<li><a href="#">trends</a></li>
					<li><a href="#">sale</a></li>
					<li><a href="#">style videos</a></li>
				</ul>
			</div>
			<div class="span1_of_4">
				<h4>help</h4>
				<ul class="f_nav">
					<li><a href="#">frequently asked  questions</a></li>
					<li><a href="#">men</a></li>
					<li><a href="#">women</a></li>
					<li><a href="#">accessories</a></li>
					<li><a href="#">kids</a></li>
					<li><a href="#">brands</a></li>
				</ul>
				<h4 class="top">company name</h4>
				<ul class="f_nav">
					<li><a href="#">frequently asked  questions</a></li>
					<li><a href="#">men</a></li>
					<li><a href="#">women</a></li>
					<li><a href="#">accessories</a></li>
					<li><a href="#">kids</a></li>
					<li><a href="#">brands</a></li>
				</ul>
			</div>
			<div class="span1_of_4">
				<h4>account</h4>
				<ul class="f_nav">
					<li><a href="#">login</a></li>
					<li><a href="#">create an account</a></li>
					<li><a href="#">create wishlist</a></li>
					<li><a href="#">my shopping bag</a></li>
					<li><a href="#">brands</a></li>
					<li><a href="#">create wishlist</a></li>
				</ul>
				<h4 class="top">style zone</h4>
				<ul class="f_nav">
					<li><a href="#">frequently asked  questions</a></li>
					<li><a href="#">men</a></li>
					<li><a href="#">women</a></li>
					<li><a href="#">accessories</a></li>
					<li><a href="#">kids</a></li>
					<li><a href="#">brands</a></li>
				</ul>
			</div>
			<div class="span1_of_4">
				<h4>popular</h4>
				<ul class="f_nav">
					<li><a href="#">new arrivals</a></li>
					<li><a href="#">men</a></li>
					<li><a href="#">women</a></li>
					<li><a href="#">accessories</a></li>
					<li><a href="#">kids</a></li>
					<li><a href="#">brands</a></li>
					<li><a href="#">trends</a></li>
					<li><a href="#">sale</a></li>
					<li><a href="#">style videos</a></li>
					<li><a href="#">login</a></li>
					<li><a href="#">brands</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<!-- start span_of_2 -->
		<div class="span_of_2">
			<div class="span1_of_2">
				<h5>need help? <a href="#">contact us <span> ></span> </a> </h5>
				<p>(or) Call us: +91-70-45022088</p>
			</div>
			<div class="span1_of_2">
				<h5>follow us </h5>
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
			<p class="link">&copy; All rights reserved | Design by&nbsp; <a href="http://www.smallseashell.com">.小贝壳网站模板</a></p>
		</div>
	</div>
</div>
</body>
</html>