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

    <title>동영상</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/plugin/startbootstrap-business-casual-1.0.0/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/plugin/startbootstrap-business-casual-1.0.0/css/business-casual.css" rel="stylesheet">
    
    <!-- google-grid-gallery CSS -->
    <link href="resources/plugin/GridGallery/css/demo.css" rel="stylesheet">
    <link href="resources/plugin/GridGallery/css/component.css" rel="stylesheet">
	<script src="resources/plugin/vertical-timeline/js/modernizr.js"></script> <!-- Modernizr -->
	<script src="resources/plugin/GridGallery/js/modernizr.custom.js"></script>
	
	<style>
	    .movie_div {
	    	padding: 40px 20px 20px 40px;
	    	background: #000000;
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
                    <h2 class="intro-text text-center">우리들의 동영상
                    </h2>
                    <hr>
                </div>
                <div class="col-lg-12">
					<c:forEach items="${list }" var="data">
	                	<div class="col-lg-4 movie_div">
							<!-- <h2>대구 1대100 출연</h2> -->
							<video controls width="100%" preload="metadata">
								<source src="http://ctrl0703.iptime.org/TenAndTwo/MovieClip/${data }" type="video/quicktime">
								<source src="http://ctrl0703.iptime.org/TenAndTwo/MovieClip/${data }" type="video/mp4">
							</video>
							<!-- <p>대구 중앙대 이유진으로 1대100 출연, 최후의 2인에 올랐으나 아쉽게 마지막 문제에서 탈락 상금을 놓침 </p> -->
						</div>
					</c:forEach>
            	</div>
            </div>
        </div>

    </div>
    <!-- /.container -->

    <jsp:include page="share/bottom.jsp"/>

    <!-- jQuery -->
    <script src="resources/plugin/startbootstrap-business-casual-1.0.0/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/plugin/startbootstrap-business-casual-1.0.0/js/bootstrap.min.js"></script>
</body>
<script type="text/javascript">
$(function() {
});
</script>
</html>
