<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Shoppe</title>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <script type='text/javascript' src="${pageContext.request.contextPath}/resources/js/jquery-1.11.1.min.js"></script>
    <!-- Custom Theme files -->
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel='stylesheet' type='text/css'/>
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!--webfont-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <!-- start menu -->
    <link href="${pageContext.request.contextPath}/resources/css/megamenu.css" rel="stylesheet" type="text/css"
          media="all"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/megamenu.js"></script>
    <script>$(document).ready(function () {
        $(".megamenu").megamenu();
    });</script>
    <script src="${pageContext.request.contextPath}/resources/js/menu_jquery.js"></script>
    <!-- the jScrollPane script -->
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/js/jquery.jscrollpane.min.js"></script>
    <script type="text/javascript" id="sourcecode">
        $(function () {
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
                <h2><a href="#">50%off</a>清爽五折季</h2>
            </div>
            <div class="top_right">
                <ul>
                    <li><a href="#">最近浏览</a></li>
                    |
                    <li><a href="contact.html">联系我</a></li>
                    |
                        <%
				String userName = (String)session.getAttribute("userName");
			if(userName != null){
			%>
                    <li><a href="#">${sessionScope.userName},欢迎</a></li>
                    |
                    <li class="login">
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
            <%} else {%>
            <li class="login">
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
                <a href="${pageContext.request.contextPath}/index"><img
                        src="${pageContext.request.contextPath}/resources/images/logo.png" alt=""/> </a>
            </div>

            <!-- start header_right -->
            <div class="header_right">
                <div class="create_btn">
                    <% if (userName == null) {%>
                    <a class="arrow" href="${pageContext.request.contextPath}/registration">创建账号<img
                            src="${pageContext.request.contextPath}/resources/images/right_arrow.png" alt=""/> </a>

                    <%} else {%>
                    <a class="arrow" href="${pageContext.request.contextPath}/goods/addGoods">管理商品<img
                            src="${pageContext.request.contextPath}/resources/images/right_arrow.png" alt=""/> </a>
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
                        <input type="text" id="goodsName" name="goodsName" placeholder="搜索...">
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
                                        <li><a href="${pageContext.request.contextPath}/goods/goodsList?catogory=5">品牌</a></li> </ul>
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
    <div class="women_main">
        <!-- start sidebar -->
        <div class="col-md-3">
            <div class="w_sidebar">

                <section class="sky-form">

                    <h4>类别</h4>
                    <div class="w_nav1">

                        <ul>
                            <li><a href="${pageContext.request.contextPath}/woman">女人</a></li>
                            <li><a href="#">新品</a></li>
                            <li><a href="#">潮流</a></li>
                            <li><a href="#">男孩</a></li>
                            <li><a href="#">女孩</a></li>
                            <li><a href="#">促销</a></li>
                        </ul>
                    </div>

                </section>

                <section class="sky-form">
                    <h4>品牌</h4>
                    <div class="row1 scroll-pane">
                        <div class="col col-4">
                            <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>七匹狼</label>
                            <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>奥尼</label>
                            <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>BiBA</label>
                            <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>vishud</label>
                            <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>amari</label>
                            <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>shree</label>
                            <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>美登斯邦威</label>
                            <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>biba</label>
                            <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>shree</label>
                            <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Anouk</label>
                            <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>biba</label>
                            <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>shree</label>
                            <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Anouk</label>
                            <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>biba</label>
                        </div>
                    </div>
                </section>
                <section class="sky-form">
                    <h4>颜色</h4>
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
                    <h4>折扣</h4>
                    <div class="row1 scroll-pane">
                        <div class="col col-4">
                            <label class="radio"><input type="radio" name="radio" checked=""><i></i>6折</label>
                            <label class="radio"><input type="radio" name="radio"><i></i>5折</label>
                            <label class="radio"><input type="radio" name="radio"><i></i>4折</label>
                        </div>
                        <div class="col col-4">
                            <label class="radio"><input type="radio" name="radio"><i></i>3折</label>
                            <label class="radio"><input type="radio" name="radio"><i></i>2折</label>
                            <label class="radio"><input type="radio" name="radio"><i></i>1折</label>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <!-- start content -->
        <div class="col-md-9 w_content">
            <div class="women">
                <a href="#"><h4>商品列表<span>共有${goodsList.size()==0?0:goodsList.size()}件商品</span></h4></a>
                <ul class="w_nav">
                    <li>排序：</li>
                    <li><a class="active" href="#">受欢迎</a></li>
                    |
                    <li><a href="#">上架时间</a></li>
                    |
                    <li><a href="#">折扣</a></li>
                    |
                    <li><a href="#">价格: 低 高 </a></li>
                    <div class="clear"></div>
                </ul>
                <div class="clearfix"></div>
            </div>
            <!-- grids_of_4 -->
            <%-- <div class="grids_of_4">
                 <div class="grid1_of_4">
                     <div class="content_box"><a href="${pageContext.request.contextPath}/details">
                         <div class="view view-fifth">
                             <img src="${pageContext.request.contextPath}/resources/images/w1.jpg" class="img-responsive" alt=""/>
                             <div class="mask">
                                 <div class="info">Quick View</div>
                             </div>
                     </a>
                     </div>
                     <h4><a href="${pageContext.request.contextPath}/details"> Duis autem</a></h4>
                     <p>It is a long established fact that a reader</p>
                     Rs. 499
                 </div>
             </div>
             <div class="grid1_of_4">
                 <div class="content_box"><a href="${pageContext.request.contextPath}/details">
                     <div class="view view-fifth">
                         <img src="${pageContext.request.contextPath}/resources/images/w2.jpg" class="img-responsive" alt=""/>
                         <div class="mask">
                             <div class="info">Quick View</div>
                         </div>
                 </a>
                 </div>
                 <h4><a href="${pageContext.request.contextPath}/details"> Duis autem</a></h4>
                 <p>It is a long established fact that a reader</p>
                 Rs. 499
             </div>
         </div>
         <div class="grid1_of_4">
             <div class="content_box"><a href="${pageContext.request.contextPath}/details">
                 <div class="view view-fifth">
                     <img src="${pageContext.request.contextPath}/resources/images/w3.jpg" class="img-responsive" alt=""/>
                     <div class="mask">
                         <div class="info">Quick View</div>
                     </div>
             </a>
             </div>
             <h4><a href="${pageContext.request.contextPath}/details"> Duis autem</a></h4>
             <p>It is a long established fact that a reader</p>
             Rs. 499
         </div>
     </div>
     <div class="grid1_of_4">
         <div class="content_box"><a href="${pageContext.request.contextPath}/details">
             <div class="view view-fifth">
                 <img src="${pageContext.request.contextPath}/resources/images/w4.jpg" class="img-responsive" alt=""/>
                 <div class="mask">
                     <div class="info">Quick View</div>
                 </div>
         </a>
         </div>
         <h4><a href="${pageContext.request.contextPath}/details"> Duis autem</a></h4>
         <p>It is a long established fact that a reader</p>
         Rs. 499
     </div>
 </div>
 <div class="clearfix"></div>
 </div>


 <div class="grids_of_4">
     <div class="grid1_of_4">
         <div class="content_box"><a href="${pageContext.request.contextPath}/details">
             <div class="view view-fifth">
                 <img src="${pageContext.request.contextPath}/resources/images/w5.jpg" class="img-responsive" alt=""/>
                 <div class="mask">
                     <div class="info">Quick View</div>
                 </div>
         </a>
         </div>
         <h4><a href="${pageContext.request.contextPath}/details"> Duis autem</a></h4>
         <p>It is a long established fact that a reader</p>
         Rs. 499
     </div>
 </div>
 <div class="grid1_of_4">
     <div class="content_box"><a href="${pageContext.request.contextPath}/details">
         <div class="view view-fifth">
             <img src="${pageContext.request.contextPath}/resources/images/w6.jpg" class="img-responsive" alt=""/>
             <div class="mask">
                 <div class="info">Quick View</div>
             </div>
     </a>
     </div>
     <h4><a href="${pageContext.request.contextPath}/details"> Duis autem</a></h4>
     <p>It is a long established fact that a reader</p>
     Rs. 499
 </div>
 </div>
 <div class="grid1_of_4">
     <div class="content_box"><a href="${pageContext.request.contextPath}/details">
         <div class="view view-fifth">
             <img src="${pageContext.request.contextPath}/resources/images/w7.jpg" class="img-responsive" alt=""/>
             <div class="mask">
                 <div class="info">Quick View</div>
             </div>
     </a>
     </div>
     <h4><a href="${pageContext.request.contextPath}/details"> Duis autem</a></h4>
     <p>It is a long established fact that a reader</p>
     Rs. 499
 </div>
 </div>
 <div class="grid1_of_4">
     <div class="content_box"><a href="${pageContext.request.contextPath}/details">
         <div class="view view-fifth">
             <img src="${pageContext.request.contextPath}/resources/images/w8.jpg" class="img-responsive" alt=""/>
             <div class="mask">
                 <div class="info">Quick View</div>
             </div>
     </a>
     </div>
     <h4><a href="${pageContext.request.contextPath}/details"> Duis autem</a></h4>
     <p>It is a long established fact that a reader</p>
     Rs. 499
 </div>
 </div>
 <div class="clearfix"></div>
 </div>


 <div class="grids_of_4">
     <div class="grid1_of_4">
         <div class="content_box"><a href="${pageContext.request.contextPath}/details">
             <div class="view view-fifth">
                 <img src="${pageContext.request.contextPath}/resources/images/w9.jpg" class="img-responsive" alt=""/>
                 <div class="mask">
                     <div class="info">Quick View</div>
                 </div>
         </a>
         </div>
         <h4><a href="${pageContext.request.contextPath}/details"> Duis autem</a></h4>
         <p>It is a long established fact that a reader</p>
         Rs. 499
     </div>
 </div>
 <div class="grid1_of_4">
     <div class="content_box"><a href="${pageContext.request.contextPath}/details">
         <div class="view view-fifth">
             <img src="${pageContext.request.contextPath}/resources/images/w10.jpg" class="img-responsive" alt=""/>
             <div class="mask">
                 <div class="info">Quick View</div>
             </div>
     </a>
     </div>
     <h4><a href="${pageContext.request.contextPath}/details"> Duis autem</a></h4>
     <p>It is a long established fact that a reader</p>
     Rs. 499
 </div>
 </div>
 <div class="grid1_of_4">
     <div class="content_box"><a href="${pageContext.request.contextPath}/details">
         <div class="view view-fifth">
             <img src="${pageContext.request.contextPath}/resources/images/w11.jpg" class="img-responsive" alt=""/>
             <div class="mask">
                 <div class="info">Quick View</div>
             </div>
     </a>
     </div>
     <h4><a href="${pageContext.request.contextPath}/details"> Duis autem</a></h4>
     <p>It is a long established fact that a reader</p>
     Rs. 499
 </div>
 </div>--%>

            <c:forEach items="${goodsList}" var="g" varStatus="status">
                <c:if test="${(status.index )%4==0 }">
                    <div class="grids_of_4">
                </c:if>
                <div class="grid1_of_4">
                    <div class="content_box"><a
                            href="${pageContext.request.contextPath}/goods/goods?goodsName=${g.goodsname}">
                        <div class="view view-fifth">
                            <img src="${g.photomain}" class="img-responsive" alt=""/>
                            <div class="mask">
                                <div class="info">Quick View</div>
                            </div>
                        </div>
                        <h4><a href="${pageContext.request.contextPath}/details">${g.goodsname}</a></h4>
                        <p>${g.descriptionbrief}</p>
                        Rmb ${g.price}
                        <c:if test="${(status.index) %4==0}">
                    </div>
                    </c:if>
                </div>
                </div>
            </c:forEach>
        </div>
        <!-- end grids_of_4 -->
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
                <h4>商店</h4>
                <ul class="f_nav">
                    <li><a href="${pageContext.request.contextPath}/goods/goodsList">新品</a></li>
                    <li><a href="${pageContext.request.contextPath}/goods/goodsList?catogory=1">女装</a></li>
                    <li><a href="${pageContext.request.contextPath}/goods/goodsList?catogory=2">男装</a></li>
                    <li><a href="${pageContext.request.contextPath}/goods/goodsList?catogory=3">装饰</a></li>
                    <li><a href="${pageContext.request.contextPath}/goods/goodsList?catogory=4">皮具/包包</a></li>
                    <li><a href="${pageContext.request.contextPath}/goods/goodsList?catogory=5">品牌</a></li>
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
                <h5>需要帮助? <a href="#">联系我 <span> ></span> </a></h5>
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
            <p class="link">&copy; All rights reserved | Design by MrGoove; <a href="/mainPage.jsp">联系我</a></p>
        </div>
    </div>
</div>
</body>
</html>