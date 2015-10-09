<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>회비 납입 내역</title>
<link rel="stylesheet" type="text/css" media="screen" href="../resources/plugin/jquery-ui-themes-1.11.2/themes/redmond/jquery-ui.min.css" />
<link rel="stylesheet" type="text/css" media="screen" href="../resources/css/IncExp.css" />

<script src="../resources/plugin/jquery.jqGrid-4.6.0/js/jquery-1.11.0.min.js" type="text/javascript"></script>

</head>
<body>
	<h1>2015년 ~ 2016년</h1>
	<table>
		<tr><th>이름</th><th>3월</th><th>4월</th><th>5월</th><th>6월</th><th>7월</th><th>8월</th><th>9월</th><th>10월</th><th>11월</th><th>12월</th><th>1월</th><th>2월</th></tr>
		<c:forEach var="data" items="${list }" >
			<tr>
				<td>${data.NAME }</td>
				<c:forEach begin="1" end="12" varStatus="month">
					<td>${data.COUNT >= month.index ? 'o' : 'x' }</td>
				</c:forEach>
			</tr>
		</c:forEach>
	</table> 
</body>
</html>
