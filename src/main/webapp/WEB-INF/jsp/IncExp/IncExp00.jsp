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

    <title>회계관리</title>

    <!-- Bootstrap Core CSS -->
    <link href="../resources/plugin/startbootstrap-business-casual-1.0.0/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../resources/plugin/startbootstrap-business-casual-1.0.0/css/business-casual.css" rel="stylesheet">

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

    <jsp:include page="../share/menu.jsp"/>

    <div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">회계관리
                    </h2>
                    <hr>
                </div>
                <div class="col-lg-12">
					<h3><a href="IncExp01.do">입출금 내역</a></h3>
					<h3><a href="IncExp02.do">회비 납입 내역</a></h3>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>


    </div>
    <!-- /.container -->

    <jsp:include page="../share/bottom.jsp"/>

    <!-- jQuery -->
    <script src="../resources/plugin/startbootstrap-business-casual-1.0.0/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../resources/plugin/startbootstrap-business-casual-1.0.0/js/bootstrap.min.js"></script>

</body>
</html>
