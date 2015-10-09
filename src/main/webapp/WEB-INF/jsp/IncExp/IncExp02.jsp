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

    <title>회비납입내역</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath }/resources/plugin/startbootstrap-business-casual-1.0.0/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath }/resources/plugin/startbootstrap-business-casual-1.0.0/css/business-casual.css" rel="stylesheet">

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
                    <h2 class="intro-text text-center">회비 납입 내역
                    </h2>
                    <hr>
                </div>
                <div class="col-lg-12">
					<h3><span id="year1"></span>년 ~ <span id="year2"></span>년</h3>
					<table class="table table-bordered">
						<tr><th>이름</th><th>3월</th><th>4월</th><th>5월</th><th>6월</th><th>7월</th><th>8월</th><th>9월</th><th>10월</th><th>11월</th><th>12월</th><th>1월</th><th>2월</th></tr>
						<c:forEach var="data" items="${list }" >
							<tr>
								<th>${data.NAME }</th>
								<c:forEach begin="1" end="12" varStatus="month">
									<td>${data.COUNT >= month.index ? 'o' : 'x' }</td>
								</c:forEach>
							</tr>
						</c:forEach>
					</table> 
                </div>
                <div class="clearfix"></div>
            </div>
        </div>


    </div>
    <!-- /.container -->

    <jsp:include page="../share/bottom.jsp"/>

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath }/resources/plugin/startbootstrap-business-casual-1.0.0/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath }/resources/plugin/startbootstrap-business-casual-1.0.0/js/bootstrap.min.js"></script>

</body>
<script type="text/javascript">
function calYear() {
	var today = new Date();
	var year = today.getFullYear();
	var month = today.getMonth() + 1;
	var year1 = month <= 2 ? year - 1 : year;
	var year2 = month <= 2 ? year : year + 1;
	
	$("#year1").text(year1);
	$("#year2").text(year2);
}
$(function() {
	calYear();
});
</script>
</html>
