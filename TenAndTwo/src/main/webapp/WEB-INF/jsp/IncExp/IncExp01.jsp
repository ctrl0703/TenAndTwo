<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>입출금내역</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath }/resources/plugin/startbootstrap-business-casual-1.0.0/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath }/resources/plugin/startbootstrap-business-casual-1.0.0/css/business-casual.css" rel="stylesheet">
    
    <!-- jqgrid Theme -->
    <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath }/resources/plugin/jquery-ui-themes-1.11.2/themes/redmond/jquery-ui.min.css" />
	<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath }/resources/plugin/jquery.jqGrid-4.6.0/css/ui.jqgrid.css" />
	<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath }/resources/css/IncExp.css" />

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
                    <h2 class="intro-text text-center">입출금내역
                    </h2>
                    <hr>
                </div>
                <div class="col-lg-12">
					<p>입출금 내역은 통장으로 확인할 수 있으므로 실제 통장 입출금 내역보다는 실제 사용한 형식으로 입력</p>
					<div id="grid-div">
						<table id="list"><tr><td></td></tr></table> 
						<div id="pager"></div>
					</div> 
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
    
    <!-- jqgrid script -->
	<script src="${pageContext.request.contextPath }/resources/plugin/jquery.jqGrid-4.6.0/js/jquery-1.11.0.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/resources/plugin/jquery.jqGrid-4.6.0/js/i18n/grid.locale-kr.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/resources/plugin/jquery.jqGrid-4.6.0/js/jquery.jqGrid.min.js" type="text/javascript"></script>

</body>
<script type="text/javascript">
$(function() {
    $("#list").jqGrid({
        url: "getGridList.do?namespace=IncExp&queryName=selectList",
        datatype: "json",
        mtype: "GET",
        width:$("#grid-div").width(),
        height:330,
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
        rowNum: 15,
        rowList: [15, 50, 100],
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
    
    
    /* grid resize bar
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
    */
});
</script>
</html>
