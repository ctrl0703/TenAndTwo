<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>IncomeExpense</title>
</head>
<body>
<h1>
	입출금내역
</h1>
<p>입출금 내역은 통장으로 확인할 수 있으므로 실제 통장 입출금 내역보다는 실제 사용한 형식으로 입력</p>
<table>
	<tr><th>날짜</th><th>분류1</th><th>분류2</th><th>내역</th><th>입금</th><th>입금자</th><th>출금</th><th>출금자</th><th>입출금방식</th></tr>
	<c:forEach items="${list }" var="list">
		<tr>
			<td>${list.REPORT_DATE }</td>
			<td>${list.CATEGORY1 }</td>
			<td>${list.CATEGORY2 }</td>
			<td>${list.REPORT_DESC }</td>
			<td>${list.INCOME }</td>
			<td>${list.INCOMER }</td>
			<td>${list.EXPENSE }</td>
			<td>${list.EXPENSER }</td>
			<td>${list.INOUT_METHOD }</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>
