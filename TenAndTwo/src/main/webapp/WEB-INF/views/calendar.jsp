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

    <title>Calendar</title>

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

	<!-- full calendar plugin -->
	<link rel='stylesheet' href='resources/plugin/fullcalendar-2.2.3/fullcalendar.css' />
	<script src='resources/plugin/fullcalendar-2.2.3/lib/jquery.min.js'></script>
	<script src='resources/plugin/fullcalendar-2.2.3/lib/moment.min.js'></script>
	<script src='resources/plugin/fullcalendar-2.2.3/fullcalendar.js'></script>
</head>

<body>

    <jsp:include page="share/menu.jsp"/>

    <div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Our
                        <strong>${path }</strong>
                    </h2>
                    <hr>
                </div>
                <div id='calendar'></div>
            </div>
        </div>

    </div>
    <!-- /.container -->

    <jsp:include page="share/bottom.jsp"/>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/plugin/startbootstrap-business-casual-1.0.0/js/bootstrap.min.js"></script>

</body>
<script>
function popitup(url) {
	newwindow=window.open(url,'name','height=450,width=550');
	if (window.focus) {newwindow.focus()}
	return false;
}
function addZero(i) {
    if (i < 10) {
        i = "0" + i;
    }
    return i;
}
$(document).ready(function() {

    // page is now ready, initialize the calendar...

	$('#calendar').fullCalendar({
		selectable: true,
		selectHelper: true,
		forceEventDuration:true,
		resizable: true,
		select: function(start, end) {
			start = new Date(start);
			start = start.getFullYear() + "-" + addZero(start.getMonth()+1) + "-" + addZero(start.getDate()) 
			end = new Date(end-(1000*3600*24));
			end = end.getFullYear() + "-" + addZero(end.getMonth()+1) + "-" + addZero(end.getDate());
			location.href="eventForm.go?start=" + start + "&end=" + end;
			//addResizable();
		},
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		events: function(start, end, timezone, callback) {
			/*
			$.ajax({
				url: 'Servlet?class=Schedule&method=selectList',
				success: function(data) {
					var events = JSON.parse(data);
					callback(events);
					//addResizable();
				}
			});*/
	    },
	    timeFormat: 'HH:mm',
	    eventDrop: function(event, delta, revertFunc) {
	    	$.ajax({
	    		type: 'post',
				url: 'Servlet?class=Schedule&method=update',
				data: 'scheId=' + event['scheId']
	    			+ '&title=' + event['title']
	    			+ '&start=' + event['start'].format()
	    			+ '&end=' + event['end'].clone().subtract(1, 'days').format()
	    			+ '&time=' + event['time']
	    			+ '&desc=' + event['desc']
	    			+ '&user_id=' + event['user_id'],
				success: function(data) {
					//addResizable();
				},
			});
	    },
        eventClick: function(calEvent, jsEvent, view) {
           	var start = calEvent.start.format().substring(0, 10);
   			var end = calEvent.end.clone().subtract(1, 'days').format().substring(0, 10);
   			popitup("Servlet?class=Schedule&method=modify&scheId=" + calEvent['scheId']);
           	//addResizable();
        },/*
        eventResize: function(event, delta, revertFunc, jsEvent, ui, view) {
        	console.log(event);
        	console.log(delta);
        }*/
	});

});
</script>
</html>
