<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>열하고 둘</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath }/resources/plugin/startbootstrap-business-casual-1.0.0/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath }/resources/plugin/startbootstrap-business-casual-1.0.0/css/business-casual.css" rel="stylesheet">
    
    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath }/resources/plugin/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style type="text/css">
    	#title:link, #title:visited { color: #000; text-decoration: none; }
    	#title:hover { text-decoration: underline; }
    	.brand { position: relative; }
    	#loginBtn {
			position: absolute;
			right:0;
			top:0;
			margin:10px;
			font-family: "Open Sans","Helvetica Neue",Helvetica,Arial,sans-serif;
		}
    </style>
</head>
<body>
    <div class="brand">
    	<a id="title" href='${pageContext.request.contextPath }/index.do'>열하고둘</a>
		<button type="button" id="loginBtn" class="btn btn-default loginBtn"><!-- <i class="fa fa-user"></i> --><b>LOGIN</b></button>
    </div>
    <div class="address-bar">덕소 | 친구 | 여행</div>

    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <button type="button" class="btn btn-default navbar-toggle loginBtn"><!-- <i class="fa fa-user"></i> --><b>LOGIN</b></button>
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                <a class="navbar-brand" href="${pageContext.request.contextPath }/index.do">열하고둘</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			    <ul class="nav navbar-nav">
			        <li>
			            <a href="${pageContext.request.contextPath }/about.do">열하고둘</a>
			        </li>
			        <li>
			            <a href="${pageContext.request.contextPath }/photo.do">사진</a>
			        </li>
			        <li>
			            <a href="${pageContext.request.contextPath }/movieClip.do">동영상</a>
			        </li>
			        <li>
			            <a href="${pageContext.request.contextPath }/travel.do">여행</a>
			        </li>
			        <li>
			            <a href="${pageContext.request.contextPath }/history.do">에피소드</a>
			        </li>
			        <li>
			            <a href="${pageContext.request.contextPath }/calendar.do">달력</a>
			        </li>
			        <li>
			            <a href="${pageContext.request.contextPath }/IncExp/IncExp00.do">회계</a>
			        </li>
			    </ul>
			</div>
			<!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath }/resources/plugin/startbootstrap-business-casual-1.0.0/js/jquery.js"></script>
</body>
<script type="text/javascript">
$(function() {
	$(".loginBtn").click(function() {
		location.href="${pageContext.request.contextPath }/loginPage.do";
	});
});
</script>
</html>