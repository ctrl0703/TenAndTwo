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

    <title>Travel</title>

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
	<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=507d68fd913eb2b2de1b5f7073e10450b58218b3"></script>
	<!-- 개발용 map api key : 507d68fd913eb2b2de1b5f7073e10450b58218b3 -->
	<!-- 배포용 map api key : d9e328670bf1beb319b2aa1d9d732211eb2dfc8c -->
</head>

<body>

    <jsp:include page="share/menu.jsp"/>

    <div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">우리들의 여행
                    </h2>
                    <hr>
                </div>
                
                <div class="col-lg-12" align="center" id="map-wrap">
                	<div id="map" style="width: 90%; height:0; padding-bottom: 50%;"></div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Summer
                        <strong>2015. 08</strong>
                    </h2>
                    <hr>
                </div>
                <div class="col-md-6">
                    <img class="img-responsive img-border-left" src="resources/img/photo/DSC_0087.JPG" alt="">
                </div>
                <div class="col-md-6">
                	<p>회차 : 9회차</p>
                	<p>장소 : 용문</p>
                	<p>회장 : 정현수, 이창희</p>
                	<p>참석자 : 장석원, 이대수, 김광민, 김진웅, 이해준, 대구, 김길훈, 사공, 정현수, 이창희, 임용수</p>
                	<p>불참자 : 없음</p>
                	<p>사건 : 어게인 양평</p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Summer
                        <strong>2015. 02</strong>
                    </h2>
                    <hr>
                </div>
                <div class="col-md-6">
                	<p>회차 : 8회차</p>
                	<p>장소 : 안면도</p>
                	<p>회장 : 이대수, 대구</p>
                	<p>참석자 : 장석원, 이대수, 김광민, 김진웅, 이해준, 대구, 김길훈, 사공, 정현수, 이창희</p>
                	<p>불참자 : 임용수</p>
                	<p>사건 : 스파</p>
                </div>
                <div class="col-md-6">
                    <img class="img-responsive img-border-left" src="resources/img/photo/DSC_00872.JPG" alt="">
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        
         <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Summer
                        <strong>2014. 08</strong>
                    </h2>
                    <hr>
                </div>
                <div class="col-md-6">
                    <img class="img-responsive img-border-left" src="resources/img/photo/IMG_1371.JPG" alt="">
                </div>
                <div class="col-md-6">
                	<p>회차 : 7회차</p>
                	<p>장소 : 단양</p>
                	<p>회장 : 김광민, 김진웅</p>
                	<p>참석자 : 장석원, 이대수, 김광민, 김진웅, 이해준, 대구, 김길훈, 사공, 정현수, 이창희</p>
                	<p>불참자 : 임용수</p>
                	<p>사건 : 수중 체육대회</p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        
         <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Winter
                        <strong>2014. 02</strong>
                    </h2>
                    <hr>
                </div>
                <div class="col-md-6">
                	<p>회차 : 6회차</p>
                	<p>장소 : 화천 산천어 축제</p>
                	<p>회장 : 김길훈, 장석원 </p>
                	<p>참석자 : 장석원, 이대수, 김광민, 김진웅, 이해준, 대구, 김길훈, 사공, 이창희</p>
                	<p>불참자 : 채민성, 임용수, 정현수</p>
                	<p>사건 :  드립상 수상, 사공 낚시 0마리</p>
                </div>
                <div class="col-md-6">
                    <img class="img-responsive img-border-left" src="resources/img/photo/DSC_0193.JPG" alt="">
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        
         <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Summer
                        <strong>2013. 08</strong>
                    </h2>
                    <hr>
                </div>
                <div class="col-md-6">
                    <img class="img-responsive img-border-left" src="resources/img/photo/201308.jpg" alt="">
                </div>
                <div class="col-md-6">
                	<p>회차 : 5회차</p>
                	<p>장소 : 강화도 해오름 펜션</p>
                	<p>회장 : 대구, 이창희</p>
                	<p>참석자 : 장석원, 이대수, 김광민, 김진웅, 이해준, 대구, 김길훈, 사공, 이창희, 채민성</p>
                	<p>불참자 : 임용수, 정현수</p>
                	<p>사건 : 전야제 사건</p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        
         <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Winter
                        <strong>2013. 02</strong>
                    </h2>
                    <hr>
                </div>
                <div class="col-md-6">
                	<p>회차 : 4회차</p>
                	<p>장소 : 정선 펜션</p>
                	<p>회장 : 사공, 정현수</p>
                	<p>참석자 : 장석원, 이대수, 김광민, 김진웅, 이해준, 사공, 장석원, 정현수, 채민성, 임용수</p>
                	<p>불참자 : 대구(혼자 내일로 여행), 김길훈</p>
                	<p>사건 : 광자 스와핑, 현토 </p>
                </div>
                <div class="col-md-6">
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        
         <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Summer
                        <strong>2012. 08</strong>
                    </h2>
                    <hr>
                </div>
                <div class="col-md-6">
                    <img class="img-responsive img-border-left" src="resources/img/photo/1345280341659.jpg" alt="">
                </div>
                <div class="col-md-6">
                	<p>회차 : 3회차</p>
                	<p>장소 : 철원 한탄강 펜션</p>
                	<p>회장 : 김진웅, 이해준</p>
                	<p>참석자 : 장석원, 이대수, 김광민, 김진웅, 이해준, 대구, 사공, 채민성, 이창희, 정현수</p>
                	<p>불참자 : 임용수, 김길훈</p>
                	<p>사건 : 장진탕 사건</p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        
         <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Winter
                        <strong>2012. 02</strong>
                    </h2>
                    <hr>
                </div>
                <div class="col-md-6">
                	<p>회차 : 2회차</p>
                	<p>장소 : 속초 코레스코 콘도</p>
                	<p>회장 : 장석원, 이대수</p>
                	<p>참석자 : 임용수, 장석원, 이대수, 김광민, 김진웅, 이해준, 대구, 사공, 이창희, 정현수</p>
                	<p>불참자 : 김길훈(성당), 채민성(군대)</p>
                	<p>사건 : 장쫄보이, 강원대 삼척캠</p>
                </div>
                <div class="col-md-6">
                    <img class="img-responsive img-border-left" src="resources/img/photo/IMG_9446.jpg" alt="">
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        
         <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Summer
                        <strong>2011. 08</strong>
                    </h2>
                    <hr>
                </div>
                <div class="col-md-6">
                    <img class="img-responsive img-border-left" src="resources/img/photo/IMG_8130.jpg" alt="">
                </div>
                <div class="col-md-6">
                	<p>회차 : 1회차</p>
                	<p>장소 : 양평 들마루 펜션</p>
                	<p>회장 : 임용수, 김광민</p>
                	<p>참석자 : 임용수, 장석원, 이대수, 김광민, 김진웅, 이해준, 대구, 김길훈, 사공, 정현수</p>
                	<p>불참자 : 이창희(군대), 채민성(군대)</p>
                	<p>사건 : 맥주파티, 카나페</p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        
    </div>
    <!-- /.container -->

    <jsp:include page="share/bottom.jsp"/>

    <!-- jQuery -->
    <script src="resources/plugin/startbootstrap-business-casual-1.0.0/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/plugin/startbootstrap-business-casual-1.0.0/js/bootstrap.min.js"></script>
</body>
<script>
	var container = document.getElementById('map');
	var options = {
		center: new daum.maps.LatLng(37.650701, 127.570667),
		level: 13
	};

	var map = new daum.maps.Map(container, options);
	
	var positions = [
	                 {
	                     title: '11년 여름 : 양평',
	                     latlng: new daum.maps.LatLng(37.5097197, 127.5273596)
	                 },
	                 {
	                     title: '12년 겨울 : 속초', 
	                     latlng: new daum.maps.LatLng(38.3170019, 128.5309772)
	                 },
	                 {
	                     title: '12년 여름 : 한탄강', 
	                     latlng: new daum.maps.LatLng(38.1758624, 127.2982936)
	                 },
	                 {
	                     title: '13년 겨울 : 정선',
	                     latlng: new daum.maps.LatLng(37.3794222, 128.6624859)
	                 },
	                 {
	                     title: '13년 여름 : 강화도',
	                     latlng: new daum.maps.LatLng(37.5930566, 126.4360917)
	                 },
	                 {
	                     title: '14년 겨울 : 화천',
	                     latlng: new daum.maps.LatLng(38.1081904, 127.7073399)
	                 },
	                 {
	                     title: '14년 여름 : 단양',
	                     latlng: new daum.maps.LatLng(37.0139946, 128.3835899)
	                 },
	                 {
	                     title: '15년 겨울 : 안면도',
	                     latlng: new daum.maps.LatLng(36.4673935,126.3866886)
	                 },
	                 {
	                     title: '15년 여름 : 용문',
	                     latlng: new daum.maps.LatLng(37.4987175, 127.6000496)
	                 }
	             ];
	var markers = new Array(positions.length);
	var infowindows = new Array(positions.length);
	
	// 마커 이미지의 이미지 주소입니다
	var imageSrc = "http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
	    
	for (var i = 0; i < positions.length; i ++) {
	    
	    // 마커 이미지의 이미지 크기 입니다
	    var imageSize = new daum.maps.Size(24, 35); 
	    
	    // 마커 이미지를 생성합니다    
	    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
	    
	    // 마커를 생성합니다
	    markers[i] = new daum.maps.Marker({
	        map: map, // 마커를 표시할 지도
	        position: positions[i].latlng, // 마커를 표시할 위치
	        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
	        image : markerImage // 마커 이미지 
	    });

		 // 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다
		 var iwContent = '<div style="padding:5px;">' + positions[i].title + '</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	     iwPosition = positions[i].latlng; //인포윈도우 표시 위치입니다
	     
		// 인포윈도우를 생성합니다
		 infowindows[i] = new daum.maps.InfoWindow({
		     position : iwPosition,
		     content : iwContent
		 });
	     
		// 마커에 마우스오버 이벤트를 등록합니다
		 daum.maps.event.addListener(markers[i], 'mouseover', function() {
		   // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
		     alert(markers[i].getTitle());
		     infowindows[i].open(map, markers[i]);
		 });

		 // 마커에 마우스아웃 이벤트를 등록합니다
		 daum.maps.event.addListener(markers[i], 'mouseout', function() {
		     // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
		     infowindows[i].close();
		 });
	}
</script>
</html>
