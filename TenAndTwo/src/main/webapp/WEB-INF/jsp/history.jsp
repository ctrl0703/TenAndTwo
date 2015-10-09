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

	
	<link href='http://fonts.googleapis.com/css?family=Droid+Serif|Open+Sans:400,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="resources/plugin/vertical-timeline/css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="resources/plugin/vertical-timeline/css/style.css"> <!-- Resource style -->
	<script src="resources/plugin/vertical-timeline/js/modernizr.js"></script> <!-- Modernizr -->
  	
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
                    <h2 class="intro-text text-center">에피소드
                    </h2>
                    <hr>
                </div>
                <div class="col-lg-12" align="center">
                    <button onclick="location.href='historyForm.do'">에피소드 입력</button>
                </div>
                
                <section id="cd-timeline" class="cd-container">
					<div class="cd-timeline-block">
						<div class="cd-timeline-img cd-location">
							<img src="resources/plugin/vertical-timeline/img/cd-icon-location.svg" alt="Picture">
						</div> <!-- cd-timeline-img -->
			
						<div class="cd-timeline-content">
							<h2>열하고둘 회칙 제정</h2>
							<p>임용수, 김광민, 정현수가 가르텐비어에 모여 5시간 30분 동안(22:00 ~ 03:50) 최초로 회칙을 제정하다.</p>
							<span class="cd-date">2010년 10월 6일 (수)</span>
						</div> <!-- cd-timeline-content -->
					</div> <!-- cd-timeline-block -->
			
					<div class="cd-timeline-block">
						<div class="cd-timeline-img cd-picture">
							<img src="resources/plugin/vertical-timeline/img/cd-icon-picture.svg" alt="Picture">
						</div> <!-- cd-timeline-img -->
			
						<div class="cd-timeline-content">
							<h2>최초 여행</h2>
                   			<img class="img-responsive img-border-left" src="resources/img/photo/IMG_8130.jpg" alt="">
		                	<p>장소 : 양평 들마루 펜션</p>
		                	<p>회장 : 임용수, 김광민</p>
		                	<p>참석자 : 임용수, 장석원, 이대수, 김광민, 김진웅, 이해준, 대구, 김길훈, 사공, 정현수</p>
		                	<p>불참자 : 이창희(군대), 채민성(군대)</p>
		                	<p>사건 : 맥주파티, 카나페</p>
							<span class="cd-date">2010년 8월 13일(토) <br>~ 2010년 8월 14일(일)</span>
						</div> <!-- cd-timeline-content -->
					</div> <!-- cd-timeline-block -->
			
					<div class="cd-timeline-block">
						<div class="cd-timeline-img cd-movie">
							<img src="resources/plugin/vertical-timeline/img/cd-icon-movie.svg" alt="Movie">
						</div> <!-- cd-timeline-img -->
			
						<div class="cd-timeline-content" id="video-player">
							<h2>대구 1대100 출연</h2>
							<video controls width="100%">
								<source src="resources/etc/M_20120404200401565806681004.mp4" type="video/quicktime">
								<source src="resources/etc/M_20120404200401565806681004.mp4" type="video/mp4">
							</video>
							<p>대구 중앙대 이유진으로 1대100 출연, 최후의 2인에 올랐으나 아쉽게 마지막 문제에서 탈락 상금을 놓침 </p>
							<span class="cd-date">2012년 4월 3일(화)</span>
						</div> <!-- cd-timeline-content -->
					</div> <!-- cd-timeline-block -->
			
					<div class="cd-timeline-block">
						<div class="cd-timeline-img cd-movie">
							<img src="resources/plugin/vertical-timeline/img/cd-icon-movie.svg" alt="Movie">
						</div> <!-- cd-timeline-img -->
			
						<div class="cd-timeline-content">
							<h2>장진탕 오기</h2>
							<video controls width="100%">
								<source src="resources/etc/M_20120823000801602071961004.mp4" type="video/mp4">
							</video>
							<p>[장진탕]오기 영상'임용수와 어깰 나란히'에 이은'소주 없어갖고 존나 빡칠거같애'</p>
							<span class="cd-date">2012년 8월 19일(토)</span>
						</div> <!-- cd-timeline-content -->
					</div> <!-- cd-timeline-block -->
			
					<div class="cd-timeline-block">
						<div class="cd-timeline-img cd-picture">
							<img src="resources/plugin/vertical-timeline/img/cd-icon-picture.svg" alt="Location">
						</div> <!-- cd-timeline-img -->
			
						<div class="cd-timeline-content">
							<h2>최초로 12명 전원 모인날</h2>
                   			<img class="img-responsive img-border-left" src="resources/img/photo/IMG20141209.jpg" alt="">
							<p>열하고둘 결성 후 처음이자 마지막으로 12명 멤버가 모두 모였던 날...</p>
							<span class="cd-date">2012년 11월 3일(토)</span>
						</div> <!-- cd-timeline-content -->
					</div> <!-- cd-timeline-block -->
			
					<div class="cd-timeline-block">
						<div class="cd-timeline-img cd-location">
							<img src="resources/plugin/vertical-timeline/img/cd-icon-location.svg" alt="Location">
						</div> <!-- cd-timeline-img -->
			
						<div class="cd-timeline-content">
							<h2>홈페이지 제작</h2>
							<p>홈페이지 제작중.. 추후 모바일용 어플까지 예정</p>
							<span class="cd-date">2014년 12월 8일(일)</span>
						</div> <!-- cd-timeline-content -->
					</div> <!-- cd-timeline-block -->
				</section> <!-- cd-timeline -->
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
