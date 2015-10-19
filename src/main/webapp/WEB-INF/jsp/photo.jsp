<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="no-js">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Photo</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/plugin/startbootstrap-business-casual-1.0.0/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/plugin/startbootstrap-business-casual-1.0.0/css/business-casual.css" rel="stylesheet">
    
    <!-- google-grid-gallery CSS -->
    <link href="resources/plugin/GridGallery/css/demo.css" rel="stylesheet">
    <link href="resources/plugin/GridGallery/css/component.css" rel="stylesheet">
	<script src="resources/plugin/GridGallery/js/modernizr.custom.js"></script>
	
	<style type="text/css">
		#grid-gallery {
			margin-top: 150px;
		}
		.slideshow .inner_div {
			width: 100%;
			height: 100%;
	   		position: relative;
		}
		.slideshow .inner_div img {
			max-height: 100%;  
			max-width: 100%; 
			width: auto;
			height: auto;
			position: absolute;  
			top: 0;  
			bottom: 0;  
			left: 0;  
			right: 0;  
			margin: auto;
		}
	</style>
	
    <!-- Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <jsp:include page="share/menu.jsp"/>

    <div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">우리들의 사진
                    </h2>
                    <hr>
                </div>
                	<c:choose>
						<c:when test="${tag eq null }">
               				<div class="col-lg-12">
			                	<h3>태그</h3>
			                	<a href="photo.do?tag=">전체</a><br>
			                	<c:forEach items="${photoTagList }" var="photoTag">
			                		<a href="photo.do?tag=${photoTag.PHOTO_TAG_NO }">${photoTag.PHOTO_TAG_NAME }</a><br>
			                	</c:forEach>
                			</div>
						</c:when>
						<c:otherwise>
	                		<div class="col-lg-12 text-center">
	                			<c:forEach items="${photoTagList }" var="photoTag">
	                				<c:if test="${photoTag.PHOTO_TAG_NO eq tag}"><p>태그 : ${photoTag.PHOTO_TAG_NAME }</p></c:if>
	                			</c:forEach>
	                			
	                		</div>
							<div id="grid-gallery" class="grid-gallery">
								<section class="grid-wrap">
									<ul class="grid">
										<li class="grid-sizer"></li><!-- for Masonry column width -->
										<c:forEach items="${photoList }" var="photo">
											<li>
												<figure>
			                                        <a href="http://ctrl0703.iptime.org/TenAndTwo/Photo/${photo.PHOTO_PATH }/${photo.PHOTO_NAME }" onclick="window.open(this.href);return false;" target="_blank">
			                                            <img src="http://ctrl0703.iptime.org/TenAndTwo/PhotoMid/${photo.PHOTO_PATH }/${photo.PHOTO_NAME }" alt="썸네일이 없습니다."/>
													</a>
												</figure>
											</li>
										</c:forEach>
									</ul>
								</section><!-- // grid-wrap -->
								<section class="slideshow">
									<ul>
								<!-- 
									<c:forEach items="${list }" var="data">
										<li>
											<figure>
												<div class="inner_div">
													<a href="http://ctrl0703.iptime.org/TenAndTwo/Photo/${dir }/${data }" onclick="window.open(this.href);return false;" target="_blank">
														<img src="http://ctrl0703.iptime.org/TenAndTwo/PhotoMid/${dir }/${data }"/>
													</a>
												</div>
											</figure>
										</li>
									</c:forEach> -->
									</ul><!-- 
									<nav>
										<span class="icon nav-prev"></span>
										<span class="icon nav-next"></span>
										<span class="icon nav-close"></span>
									</nav>
									<div class="info-keys icon">Navigate with arrow keys</div> -->
								</section>
							</div><!-- // grid-gallery -->
						</c:otherwise>                	
                	</c:choose>
            </div>
        </div>

    </div>
    <!-- /.container -->

    <jsp:include page="share/bottom.jsp"/>

    <!-- jQuery -->
    <script src="resources/plugin/startbootstrap-business-casual-1.0.0/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/plugin/startbootstrap-business-casual-1.0.0/js/bootstrap.min.js"></script>
	
	<!-- google-grid-gallery -->
	<script src="resources/plugin/GridGallery/js/imagesloaded.pkgd.min.js"></script>
	<script src="resources/plugin/GridGallery/js/masonry.pkgd.min.js"></script>
	<script src="resources/plugin/GridGallery/js/classie.js"></script>
	<script src="resources/plugin/GridGallery/js/cbpGridGallery.js"></script>
	<script>
		new CBPGridGallery( document.getElementById( 'grid-gallery' ) );
	</script>
</body>
<script type="text/javascript">
$(function() {
});
</script>
</html>
