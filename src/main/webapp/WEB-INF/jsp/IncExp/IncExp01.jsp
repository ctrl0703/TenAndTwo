<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>IncomeExpense</title>
<link rel="stylesheet" type="text/css" media="screen" href="../resources/plugin/jquery.jqGrid-4.6.0/css/ui.jqgrid.css" />
 
<script src="../resources/plugin/jquery.jqGrid-4.6.0/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="../resources/plugin/jquery.jqGrid-4.6.0/js/i18n/grid.locale-kr.js" type="text/javascript"></script>
<script src="../resources/plugin/jquery.jqGrid-4.6.0/js/jquery.jqGrid.min.js" type="text/javascript"></script>
</head>
<body>
<h1>
	입출금내역
</h1>
<p>입출금 내역은 통장으로 확인할 수 있으므로 실제 통장 입출금 내역보다는 실제 사용한 형식으로 입력</p>
<!--
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
-->
<table id="list"><tr><td></td></tr></table> 
<div id="pager"></div> 
</body>
<script type="text/javascript">
$(function() {
    $("#list").jqGrid({
        url: "getGridList.do?namespace=IncExp&queryName=selectList",
        datatype: "json",
        mtype: "GET",
        colNames: ["REPORT_DATE", "CATEGORY1", "CATEGORY2", "REPORT_DESC", "INCOME", "INCOMER", "EXPENSE", "EXPENSER", "INOUT_METHOD", "INST_USER", "INST_DATE", "UPD_USER", "UPD_DATE"],
        colModel: [
       			{ name: "REPORT_DATE", width: 100, align:"center", sortable: true, editable: false, hidden: false },
    			{ name: "CATEGORY1", width: 100, align:"center", sortable: true, editable: false, hidden: false },
    			{ name: "CATEGORY2", width: 100, align:"center", sortable: true, editable: false, hidden: false },
    			{ name: "REPORT_DESC", width: 100, align:"center", sortable: true, editable: false, hidden: false },
    			{ name: "INCOME", width: 100, align:"center", sortable: true, editable: false, hidden: false },
    			{ name: "INCOMER", width: 100, align:"center", sortable: true, editable: false, hidden: false },
    			{ name: "EXPENSE", width: 100, align:"center", sortable: true, editable: false, hidden: false },
    			{ name: "EXPENSER", width: 100, align:"center", sortable: true, editable: false, hidden: false },
    			{ name: "INOUT_METHOD", width: 100, align:"center", sortable: true, editable: false, hidden: false },
    			{ name: "INST_USER", width: 100, align:"center", sortable: true, editable: false, hidden: false },
    			{ name: "INST_DATE", width: 100, align:"center", sortable: true, editable: false, hidden: false },
    			{ name: "UPD_USER", width: 100, align:"center", sortable: true, editable: false, hidden: false },
    			{ name: "UPD_DATE", width: 100, align:"center", sortable: true, editable: false, hidden: false }
        ],
        pager: "#pager",
        rowNum: 10,
        rowList: [10, 20, 30],
        sortname: "REPORT_DATE",
        sortorder: "asc",
        viewrecords: true,
        gridview: true,
        autoencode: true,
        caption: "My first grid",
	 	loadError: function(xhr,status,error) { alert('서버와의 통신에 실패하였습니다.'); }
    }); 
});
</script>
</html>
