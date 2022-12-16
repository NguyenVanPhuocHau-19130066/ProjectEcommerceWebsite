<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/2/2022
  Time: 5:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="common/tablig.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <c:import url="common/header.jsp"></c:import>
</head>
<body>
<c:import url="component/header.jsp"></c:import>
<!-- Header End====================================================================== -->
<div id="carouselBlk">
    <div id="myCarousel" class="carousel slide">
        <div class="carousel-inner">
            <div class="item active">
                <div class="container">
                    <a href="register.html"><img style="width:100%" src="assets/themes/images/carousel/1.png"
                                                 alt="special offers"/></a>
                    <div class="carousel-caption">
                        <h4>Second Thumbnail label</h4>
                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta
                            gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="container">
                    <a href="register.html"><img style="width:100%" src="assets/themes/images/carousel/2.png"
                                                 alt=""/></a>
                    <div class="carousel-caption">
                        <h4>Second Thumbnail label</h4>
                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta
                            gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="container">
                    <a href="register.html"><img src="assets/themes/images/carousel/3.png" alt=""/></a>
                    <div class="carousel-caption">
                        <h4>Second Thumbnail label</h4>
                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta
                            gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>

                </div>
            </div>
            <div class="item">
                <div class="container">
                    <a href="register.html"><img src="assets/themes/images/carousel/4.png" alt=""/></a>
                    <div class="carousel-caption">
                        <h4>Second Thumbnail label</h4>
                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta
                            gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>

                </div>
            </div>
            <div class="item">
                <div class="container">
                    <a href="register.html"><img src="assets/themes/images/carousel/5.png" alt=""/></a>
                    <div class="carousel-caption">
                        <h4>Second Thumbnail label</h4>
                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta
                            gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="container">
                    <a href="register.html"><img src="assets/themes/images/carousel/6.png" alt=""/></a>
                    <div class="carousel-caption">
                        <h4>Second Thumbnail label</h4>
                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta
                            gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
    </div>
</div>
<div id="mainBody">
    <div class="container">

        <div class="row">
            <!-- Sidebar ================================================== -->
            <c:import url="/component/sidebar.jsp"></c:import>
            <!-- Sidebar end=============================================== -->
            <div class="span9">
                <div class="well well-small">
                    <h4>Featured Products <small class="pull-right">200+ featured products</small></h4>
                    <div class="row-fluid">
                        <div id="featured" class="carousel slide">
                            <div class="carousel-inner">
                                <div class="item active">
                                    <ul class="thumbnails">
                                        <c:forEach items="${requestScope.listProductNew}" begin="0" end="3" var="prnew">
                                            <li class="span3">
                                                <div class="thumbnail">
                                                    <i class="tag"></i>
                                                    <a href="product_details.html"><img
                                                            src="${prnew.img_url}" alt=""></a>
                                                    <div class="caption">
                                                        <h5>${prnew.product_name}</h5>
                                                        <h4><a class="btn" href="product_details.html">VIEW</a> <span
                                                                class="pull-right">${prnew.product_price} VNĐ</span></h4>
                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>

                                <div class="item">
                                    <ul class="thumbnails">
                                        <c:forEach items="${requestScope.listProductNew}" begin="4" end="7" var="prnew">
                                            <li class="span3">
                                                <div class="thumbnail">
                                                    <i class="tag"></i>
                                                    <a href="product_details.html"><img
                                                            src="${prnew.img_url}" alt=""></a>
                                                    <div class="caption">
                                                        <h5>${prnew.product_name}</h5>
                                                        <h4><a class="btn" href="product_details.html">VIEW</a> <span
                                                                class="pull-right">${prnew.product_price} VNĐ</span></h4>
                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>

                                    </ul>
                                </div>

                            </div>
                            <a class="left carousel-control" href="#featured" data-slide="prev">‹</a>
                            <a class="right carousel-control" href="#featured" data-slide="next">›</a>
                        </div>
                    </div>
                </div>
                <h4>Latest Products </h4>
                <ul class="thumbnails">
                    <c:forEach items="${requestScope.listProductLast}"  var="prlast">

                        <li class="span3">
                            <div class="thumbnail">
                                <a href="product_details.html"><img src="${prlast.img_url}"
                                                                    alt=""/></a>
                                <div class="caption">
                                    <h5>${prlast.product_name}</h5>
                                    <p>
                                        ${prlast.product_des}
                                    </p>

                                    <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i
                                            class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i
                                            class="icon-shopping-cart"></i></a> <a class="btn btn-primary"
                                                                                   href="#">${prlast.product_price} VNĐ</a></h4>
                                </div>
                            </div>
                        </li>
                    </c:forEach>

                </ul>

            </div>
        </div>
    </div>
</div>
</div>
<!-- MainBody End ============================= -->
<!-- Footer ================================================================== -->
<c:import url="component/footer.jsp"></c:import>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
<c:import url="common/js.jsp"></c:import>

</body>
</html>
