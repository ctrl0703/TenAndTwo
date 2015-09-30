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

    <title>History</title>

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
    
	<script src='resources/js/jquery-2.1.1.min.js'></script>
	<script src="resources/js/jquery.form.js"></script>
	<script src="resources/js/jquery-form-plugin.js"></script>
	<link rel="stylesheet" href="resources/plugin/jquery-ui-themes-1.11.2/themes/smoothness/jquery-ui.css">
	
  	<style type="text/css">
	  #cd-timeline {
	    margin-top: 10em;
	    margin-bottom: 3em;
	  }
	  @media only screen and (min-width: 768px) {
	  .cd-timeline-content h2 {
	    font-size: 20px;
	  }
	  .cd-timeline-content p {
	    font-size: 16px;
	  }
	  .cd-timeline-content .cd-read-more, .cd-timeline-content .cd-date {
	    font-size: 14px;
	  }
	}
	.form-control[readonly], fieldset[disabled] .form-control {
		cursor: default;
		background-color: #fff;
	}
	.control-label { margin-top: 5px; }
  	</style>
</head>

<body>

    <jsp:include page="share/menu.jsp"/>

    <div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center"><strong>Event</strong>
                                                      입력
                    </h2>
                    <hr>
                </div>
                <div class="col-lg-12">
					<form class="form-horizontal" role="form" id="form" action="Servlet?class=Schedule&method=insert">
						<div class="form-group">
							<label for="title" class="col-sm-2 control-label">일정 제목</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="title" name="title"	placeholder="일정 제목" value="${requestScope.title }"	valid="trim,required" element-name="제목">
							</div>
						</div>
						<div class="form-group">
							<label for="start" class="col-sm-2 control-label">시작일</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="start" name="start"	value="${param.start }" valid="trim,required" element-name="시작일" readonly>
							</div>
						</div>
						<div class="form-group">
							<label for="end" class="col-sm-2 control-label">종료일</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="end" name="end"	value="${param.end }" valid="trim,required" element-name="종료일" readonly>
							</div>
						</div>
						<div class="form-group">
							<label for="time" class="col-sm-2 control-label">시간</label>
							<div class="col-sm-10">
								<select id="time" name="time" class="form-control">
									<c:forEach begin="0" end="23" step="1" varStatus="status">
										<option><c:if test="${status.index < 10}">0</c:if>${status.index }:00</option>
										<option><c:if test="${status.index < 10}">0</c:if>${status.index }:30</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="desc" class="col-sm-2 control-label">내용</label>
							<div class="col-sm-10">
								<textarea rows="3" class="form-control" id="desc" name="desc">${requestScope.desc }</textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<c:choose>
									<c:when test="${!empty requestScope.scheId }">
										<button type="button" class="btn btn-default" id="updateBtn">Update</button>
										<button type="button" class="btn btn-default" id="deleteBtn">Delete</button>
									</c:when>
									<c:otherwise>
										<button type="button" class="btn btn-default" id="submitBtn">Submit</button>
									</c:otherwise>
								</c:choose>
								<button type="button" class="btn btn-default" id="closeBtn">Close</button>
							</div>
						</div>
					</form>
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

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="resources/plugin/vertical-timeline/js/main.js"></script> <!-- Resource jQuery -->
	
	<!-- jquery ui -->
	<script src="resources/plugin/jquery-ui-1.11.2/jquery-ui.js"></script>
	
</body>
<script type="text/javascript">
function checkForm() {
    if($('#form').validate()) {
        alert('폼 검사에 성공했습니다.');
    } else {
        alert('입력오류');
    }
}
$(function() {
	$("#submitBtn").click(function() {
	    if($('#form').validate()) {
			$("#form").ajaxSubmit({
				success : function(data) {
					if(JSON.parse(data).result == "success") {
						alert("등록을 완료하였습니다.");
						location.href="calendar.go";
					} else {
						alert("등록에 실패하였습니다.");
					}
				}
			});
	    }
	});
	$("#closeBtn").click(function() {
		history.go(-1);
	});
	$("#updateBtn").click(function() {
    	$.ajax({
    		type: 'post',
			url: 'Servlet?class=Schedule&method=update',
			data: 'scheId=' + "${requestScope.scheId}"
				+ '&title=' + $("#title").val()
				+ '&start=' + $("#start").val()
				+ '&end=' + $("#end").val()
				+ '&time=' + $("#time").val()
				+ '&desc=' + $("#desc").val(),
			success: function(data) {
				if(JSON.parse(data).result == "success") {
					alert("수정을 완료하였습니다.");
				} else {
					alert("수정에 실패하였습니다.");
				}
				opener.window.location.reload(true);
				self.close();
			},
		});
	});
	$("#deleteBtn").click(function() {
    	$.ajax({
    		type: 'post',
			url: 'Servlet?class=Schedule&method=delete',
			data: 'scheId=' + "${requestScope.scheId}",
			success: function(data) {
				if(JSON.parse(data).result == "success") {
					alert("삭제를 완료하였습니다.");
				} else {
					alert("삭제를 실패하였습니다.");
				}
				opener.window.location.reload(true);
				self.close();
			},
		});
	});
	$("#time option").each(function() {
		if($(this).val() == "${requestScope.time}") {
			$(this).attr('selected', 'selected');
		}
	});

    $( "#start" ).datepicker({
    	dateFormat: "yy-mm-dd",
		defaultDate: "+1w",
		changeMonth: true,
		onClose: function( selectedDate ) {
		  $( "#end" ).datepicker( "option", "minDate", selectedDate );
		}
    });
    $( "#end" ).datepicker({
		dateFormat: "yy-mm-dd",
		defaultDate: "+1w",
		changeMonth: true,
		onClose: function( selectedDate ) {
		  $( "#start" ).datepicker( "option", "maxDate", selectedDate );
		}
    });
});
</script>
</html>
