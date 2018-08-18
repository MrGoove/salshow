<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Shoppe Bootstarp Website Template | Details :: 小贝壳网站模板</title>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/etalage.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery.etalage.min.js"></script>
<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 900,
					source_image_height: 1200,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>
<!-- the jScrollPane script -->
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script> 
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
<div class="women_main">
	<!-- start content -->
			<div class="row single">
				<div class="col-md-9">
				  <div class="single_left">
					<div class="grid images_3_of_2">
						<ul id="etalage">
							<%--<li>
								<a href="optionallink.html">
									<img class="etalage_thumb_image" src="${goods.photomain}" class="img-responsive" />
									<img class="etalage_source_image" src="${pageContext.request.contextPath}/resources/images/d1.jpg" class="img-responsive" title="" />
								</a>
							</li>
							<li>
								<img class="etalage_thumb_image" src="${pageContext.request.contextPath}/resources/images/d2.jpg" class="img-responsive" />
								<img class="etalage_source_image" src="${pageContext.request.contextPath}/resources/images/d2.jpg" class="img-responsive" title="" />
							</li>
							<li>
								<img class="etalage_thumb_image" src="${pageContext.request.contextPath}/resources/images/d3.jpg" class="img-responsive"  />
								<img class="etalage_source_image" src="${pageContext.request.contextPath}/resources/images/d3.jpg"class="img-responsive"  />
							</li>
						    <li>
								<img class="etalage_thumb_image" src="${pageContext.request.contextPath}/resources/images/d4.jpg" class="img-responsive"  />
								<img class="etalage_source_image" src="${pageContext.request.contextPath}/resources/images/d4.jpg"class="img-responsive"  />
							</li>
						</ul>--%>

						<li>
						<a href="optionallink.html">
						<img class="etalage_thumb_image" src="${pageContext.request.contextPath}${goods.photo1}" class="img-responsive"/>
							<img class="etalage_source_image" src="${pageContext.request.contextPath}${goods.photo1}"class="img-responsive"  />
							</a>
						</li>
								<li><img class="etalage_thumb_image" src="${pageContext.request.contextPath}${goods.photo2}" class="img-responsive" />
									<img class="etalage_source_image" src="${pageContext.request.contextPath}${goods.photo2}"class="img-responsive"  />
								</li><li><img class="etalage_thumb_image" src="${pageContext.request.contextPath}${goods.photo3}" class="img-responsive"/>
								<img class="etalage_source_image" src="${pageContext.request.contextPath}${goods.photo3}"class="img-responsive"  />
							</li><li><img class="etalage_thumb_image" src="${pageContext.request.contextPath}${goods.photo4}" class="img-responsive"/>
								<img class="etalage_source_image" src="${pageContext.request.contextPath}${goods.photo4	}"class="img-responsive"  />
							</li>
						</ul>

				  </div>
				  <div class="desc1 span_3_of_2">
					<h3>${goods.goodsname}</h3>
					<p>${goods.price}<a href="#">click for offer</a></p>
					<div class="det_nav">
						<h4>related styles :</h4>
						<ul>
							<li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/w6.jpg" class="img-responsive" alt=""/></a></li>
							<li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/w8.jpg" class="img-responsive" alt=""/></a></li>
							<li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/w4.jpg" class="img-responsive" alt=""/></a></li>
							<li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/w9.jpg" class="img-responsive" alt=""/></a></li>
						</ul>
					</div>
					<div class="det_nav1">
						<h4>Select a size :</h4>
							<div class=" sky-form col col-4">
								<ul>
									<li><label class="checkbox"><input type="checkbox" name="checkbox"><i></i>L</label></li>
									<li><label class="checkbox"><input type="checkbox" name="checkbox"><i></i>S</label></li>
									<li><label class="checkbox"><input type="checkbox" name="checkbox"><i></i>M</label></li>
									<li><label class="checkbox"><input type="checkbox" name="checkbox"><i></i>XL</label></li>
								</ul>
							</div>
					</div>
					<div class="btn_form">
						<a href="${pageContext.request.contextPath}/buy">buy</a>
					</div>
					<a href="#"><span>login to save in wishlist </span></a>

			   	 </div>
          	    <div class="clearfix"></div>
          	   </div>
          	    <div class="single-bottom1">
					<h6>Details</h6>
					<p class="prod-desc">${goods.descriptionbrief}</p>
				</div>
				<div class="single-bottom2">
					<h6>Related Products</h6>
						<div class="product">
						   <div class="product-desc">
								<div class="product-img">
		                           <img src="${pageContext.request.contextPath}/resources/images/pic1.jpg" class="img-responsive " alt=""/>
		                       </div>
		                       <div class="prod1-desc">
		                           <h5><a class="product_link" href="#">Excepteur sint</a></h5>
		                           <p class="product_descr"> Vivamus ante lorem, eleifend nec interdum non, ullamcorper et arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>
							   </div>
							  <div class="clearfix"></div>
					      </div>
						  <div class="product_price">
								<span class="price-access">$597.51</span>
								<button class="button1"><span>Add to cart</span></button>
		                  </div>
						 <div class="clearfix"></div>
				     </div>
				     <div class="product">
						   <div class="product-desc">
								<div class="product-img">
		                           <img src="${pageContext.request.contextPath}/resources/images/pic2.jpg" class="img-responsive " alt=""/>
		                       </div>
		                       <div class="prod1-desc">
		                           <h5><a class="product_link" href="#">Excepteur sint</a></h5>
		                           <p class="product_descr"> Vivamus ante lorem, eleifend nec interdum non, ullamcorper et arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>
							   </div>
							   <div class="clearfix"></div>
					      </div>
						  <div class="product_price">
								<span class="price-access">$597.51</span>
								<button class="button1"><span>Add to cart</span></button>
		                  </div>
						 <div class="clearfix"></div>
				     </div>
		   	  </div>
	       </div>
	       			<div class="col-md-3">
	  <div class="w_sidebar">
		<div class="w_nav1">
			<h4>All</h4>
			<ul>
				<li><a href="${pageContext.request.contextPath}/woman">women</a></li>
				<li><a href="#">new arrivals</a></li>
				<li><a href="#">trends</a></li>
				<li><a href="#">boys</a></li>
				<li><a href="#">girls</a></li>
				<li><a href="#">sale</a></li>
			</ul>
		</div>
		<h3>filter by</h3>
		<section  class="sky-form">
					<h4>catogories</h4>
						<div class="row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>kurtas</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>kutis</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>churidar kurta</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>salwar</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>printed sari</label>
								<label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>shree</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Anouk</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>biba</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
							</div>
						</div>
		</section>
		<section  class="sky-form">
					<h4>brand</h4>
						<div class="row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>shree</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Anouk</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>biba</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>vishud</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>amari</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>shree</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Anouk</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>biba</label>
								<label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>shree</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Anouk</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>biba</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>shree</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Anouk</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>biba</label>
							</div>
						</div>
		</section>
		<section class="sky-form">
			<h4>colour</h4>
			<ul class="w_nav2">
				<li><a class="color1" href="#"></a></li>
				<li><a class="color2" href="#"></a></li>
				<li><a class="color3" href="#"></a></li>
				<li><a class="color4" href="#"></a></li>
				<li><a class="color5" href="#"></a></li>
				<li><a class="color6" href="#"></a></li>
				<li><a class="color7" href="#"></a></li>
				<li><a class="color8" href="#"></a></li>
				<li><a class="color9" href="#"></a></li>
				<li><a class="color10" href="#"></a></li>
				<li><a class="color12" href="#"></a></li>
				<li><a class="color13" href="#"></a></li>
				<li><a class="color14" href="#"></a></li>
				<li><a class="color15" href="#"></a></li>
				<li><a class="color5" href="#"></a></li>
				<li><a class="color6" href="#"></a></li>
				<li><a class="color7" href="#"></a></li>
				<li><a class="color8" href="#"></a></li>
				<li><a class="color9" href="#"></a></li>
				<li><a class="color10" href="#"></a></li>
			</ul>
		</section>
		<section class="sky-form">
						<h4>discount</h4>
						<div class="row1 scroll-pane">
							<div class="col col-4">
								<label class="radio"><input type="radio" name="radio" checked=""><i></i>60 % and above</label>
								<label class="radio"><input type="radio" name="radio"><i></i>50 % and above</label>
								<label class="radio"><input type="radio" name="radio"><i></i>40 % and above</label>
							</div>
							<div class="col col-4">
								<label class="radio"><input type="radio" name="radio"><i></i>30 % and above</label>
								<label class="radio"><input type="radio" name="radio"><i></i>20 % and above</label>
								<label class="radio"><input type="radio" name="radio"><i></i>10 % and above</label>
							</div>
						</div>
		</section>
	</div>
   </div>
		   <div class="clearfix"></div>
	  </div>
	<!-- end content -->
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