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
    <link href="resources/plugin/startbootstrap-business-casual-1.0.0/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/plugin/startbootstrap-business-casual-1.0.0/css/business-casual.css" rel="stylesheet">

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
    	#title:link, #title:visited { color: #fff; text-decoration: none; }
    	#title:hover { text-decoration: underline; }
    </style>
</head>
<body>
    <div class="brand"><a id="title" href='index.go'>Ten And Two</a></div>
    <div class="address-bar">덕소 | 친구 | 여행 | 열하고 둘</div>

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
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                <a class="navbar-brand" href="index.go">Ten And Two</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			    <ul class="nav navbar-nav">
			        <li>
			            <a href="index.go">Home</a>
			        </li>
			        <li>
			            <a href="about.go">About</a>
			        </li>
			        <li>
			            <a href="photo.go">Photo</a>
			        </li>
			        <li>
			            <a href="travel.go">Travel</a>
			        </li>
			        <li>
			            <a href="history.go">History</a>
			        </li>
			        <li>
			            <a href="calendar.go">Calendar</a>
			        </li>
			        <li>
			            <a href="account.go">Account</a>
			        </li>
			    </ul>
			</div>
			<!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
</body>
</html>