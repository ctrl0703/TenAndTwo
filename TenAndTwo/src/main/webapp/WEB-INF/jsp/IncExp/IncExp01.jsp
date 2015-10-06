<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>IncomeExpense</title>
<link rel="stylesheet" type="text/css" media="screen" href="../resources/plugin/jquery-ui-themes-1.11.2/themes/redmond/jquery-ui.min.css" />
<link rel="stylesheet" type="text/css" media="screen" href="../resources/plugin/jquery.jqGrid-4.6.0/css/ui.jqgrid.css" />
<link rel="stylesheet" type="text/css" media="screen" href="../resources/css/IncExp.css" />

<script src="../resources/plugin/jquery.jqGrid-4.6.0/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="../resources/plugin/jquery.jqGrid-4.6.0/js/i18n/grid.locale-kr.js" type="text/javascript"></script>
<script src="../resources/plugin/jquery.jqGrid-4.6.0/js/jquery.jqGrid.min.js" type="text/javascript"></script>

</head>
<body>
<h1>
	입출금내역
</h1>
<p>입출금 내역은 통장으로 확인할 수 있으므로 실제 통장 입출금 내역보다는 실제 사용한 형식으로 입력</p>
<div id="grid-div">
	<table id="list"><tr><td></td></tr></table> 
	<div id="pager"></div>
</div> 
</body>
<script type="text/javascript">
$(function() {
    $("#list").jqGrid({
        url: "getGridList.do?namespace=IncExp&queryName=selectList",
        datatype: "json",
        mtype: "GET",
        width:$("#grid-div").width(),
//        height:300,
        colNames: ["RID", "ROWSTAT", "일자", "분류1", "분류2", "내역", "입금", "입금자", "출금", "출금자", "입출금방식", "입력자", "입력일", "수정자", "수정일"],
        colModel: [
                { name: "RID", hidden: true},
       			{ name: "ROWSTAT", hidden: true},
       			{ name: "REPORT_DATE", width: 60, align:"center", sortable: true, editable: false, hidden: false, formatter: "date", formatoptions:{srcformat: 'Y-m-d', newformat: 'Y-m-d'} },
    			{ name: "CATEGORY1", width: 50, align:"center", sortable: true, editable: false, hidden: false },
    			{ name: "CATEGORY2", width: 50, align:"center", sortable: true, editable: false, hidden: false },
    			{ name: "REPORT_DESC", width: 200, align:"center", sortable: true, editable: false, hidden: false },
    			{ name: "INCOME", width: 50, align:"center", sortable: true, editable: false, hidden: false },
    			{ name: "INCOMER", width: 60, align:"center", sortable: true, editable: false, hidden: false },
    			{ name: "EXPENSE", width: 60, align:"center", sortable: true, editable: false, hidden: false },
    			{ name: "EXPENSER", width: 60, align:"center", sortable: true, editable: false, hidden: false },
    			{ name: "INOUT_METHOD", width: 50, align:"center", sortable: true, editable: false, hidden: false },
    			{ name: "INST_USER", width: 60, align:"center", sortable: true, editable: false, hidden: true },
    			{ name: "INST_DATE", width: 60, align:"center", sortable: true, editable: false, hidden: true, formatter: "date", formatoptions:{srcformat: 'Y-m-d', newformat: 'Y-m-d'} },
    			{ name: "UPD_USER", width: 60, align:"center", sortable: true, editable: false, hidden: true },
    			{ name: "UPD_DATE", width: 60, align:"center", sortable: true, editable: false, hidden: true, formatter: "date", formatoptions:{srcformat: 'Y-m-d', newformat: 'Y-m-d'} }
        ],
        pager: "#pager",
        rowNum: 10,
        rowList: [10, 20, 30],
        sortname: "REPORT_DATE",
        sortorder: "asc",
        viewrecords: true,
        gridview: true,
        autoencode: true,
        caption: "입출금내역",
	 	loadError: function(xhr,status,error) { alert('서버와의 통신에 실패하였습니다.'); }
    });
    $("#list").jqGrid('bindKeys', {'scrollingRows':true });
	$("#list").bind("jqGridBeforeSaveCell", function (e, rowid, cellname, value, iRow, iCol) {
	 	if($("#list").getCell(rowid, "ROWSTAT") != "I") {
	 		$("#list").jqGrid('setRowData', rowid, {ROWSTAT:'U'}, {background:"#FFFFFF"});
	 	}
	});
    
    $( window ).resize(function() {
    	$("#list").jqGrid("setGridWidth", $("#grid-div").width(), true);
    });
    
    $("#pager_left").addClass("resizeBar");
    $("#pager_right").addClass("resizeBar");
    var state = "idle";
    $(".resizeBar").hover(
    		function() { 
    			$(this).css("cursor", "n-resize");
    			state = "resizable";
    			//console.log(state);
    		}, 
    		function() { 
    			state = ((state == "resize") ? "resize" : "idle"); 
    			//console.log(state);
    		}
    );
    
    $(".resizeBar").mousedown( function() {
    	state = ((state == "resizable") ? "resize" : "idle"); 
    	//console.log(state); 
    });
    
    $("body").mousemove( function(e) { 
    	if(state == "resize") {
    		state = "resize";
    		$("#list").jqGrid("setGridHeight",e.pageY-160, false);
    	} 
    });
    
    $("body").mouseup( function() {
    	if(state == "resize") {
    		state = "idle";
    		//console.log(state); 
    	} 
    });
});
</script>
</html>
