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
  	</style>
</head>

<body>

    <jsp:include page="share/menu.jsp"/>

    <div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center"><strong>Episode</strong>
                                                      입력
                    </h2>
                    <hr>
                </div>
                <div class="col-lg-12">
	                <form class="form-horizontal" role="form">
						<div class="form-group">
							<label for="inputCate" class="col-sm-2 control-label">분류(*)</label>
							<div class="col-sm-10">
								<select id="inputCate" class="form-control">
									<option disabled="disabled" selected="selected">선택</option>
									<option>사건</option>
									<option>여행</option>
									<option>사진</option>
									<option>동영상</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="inputTitle" class="col-sm-2 control-label">제목(*)</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputTitle" placeholder="제목">
							</div>
						</div>
						<div class="form-group">
							<label for="inputDesc" class="col-sm-2 control-label">내용(*)</label>
							<div class="col-sm-10">
								<textarea class="form-control" rows="3" id="inputDesc"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="fromDate" class="col-sm-2 control-label">시작일(*)</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="fromDate">
							</div>
						</div>
						<div class="form-group">
							<label for="toDate" class="col-sm-2 control-label">종료일</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="toDate">
							</div>
						</div>
						<div class="form-group">
							<label for="inputLocation" class="col-sm-2 control-label">위치</label>
							<div class="col-sm-10">
								<div id="inputLocation">지도</div>
							</div>
						</div>
						<div class="form-group">
							<label for="inputImage" class="col-sm-2 control-label">Image</label>
							<div class="col-sm-10">
								<input type="file" class="form-control" id="inputImage" multiple="multiple">
							</div>
						</div>
						<div class="form-group">
							<label for="inputVideo" class="col-sm-2 control-label">Video</label>
							<div class="col-sm-10">
								<input type="file" class="form-control" id="inputVideo" multiple="multiple">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"></label>
							<div class="col-sm-10">
								(*)은 필수 입력 항목
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">Submit</button>
								<button type="reset" class="btn btn-default">Reset</button>
								<button type="button" class="btn btn-default" onclick="history.go(-1)">cancel</button>
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
</body>
</html>
