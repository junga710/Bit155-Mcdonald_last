<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>McDonalds Admin</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <jsp:include page="./common/head.jsp"></jsp:include>

    <!-- 캘린더 -->
    <link rel='stylesheet' href='./vendors/fullcalendar/core/main.css' />
    <link rel='stylesheet' href='./vendors/fullcalendar/daygrid/main.css' />
    <link rel='stylesheet' href='./vendors/fullcalendar/timegrid/main.css' />
    <link rel='stylesheet' href='./vendors/fullcalendar/list/main.css' />
    <link rel='stylesheet' href='./assets/fullCalendar/css/style.css' />
    <!-- 캘린더 -->

</head>

<body>

    <!-- Left Panel -->

   <jsp:include page="./common/LeftMenu.jsp"></jsp:include>

    <!-- Left Panel -->

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

        <!-- Header-->
      <jsp:include page="./common/TopMenu.jsp"></jsp:include>
        <!-- Header-->

        <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>일정관리</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li class="active">일정관리</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <div class="content mt-3">
                <div id="calendar"></div>
            <!-- /.filter panel -->
        </div>


    </div>
    </div> <!-- .content -->
    </div><!-- /#right-panel -->


	  <jsp:include page="./common/script.jsp"></jsp:include>
<!-- 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="./vendors/jquery/dist/jquery.min.js"></script> 
    <script src="./vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="./vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="./assets/js/main.js"></script>   -->

    <!-- 풀캘린더 -->

    <script src="./vendors/fullcalendar/core/main.js"></script>
    <script src="./vendors/fullcalendar/interaction/main.js"></script>
    <script src="./vendors/fullcalendar/daygrid/main.js"></script>
    <script src="./vendors/fullcalendar/timegrid/main.js"></script>
    <script src="./vendors/fullcalendar/list/main.js"></script>

    <!-- <script src="./assets/fullCalendar/js/style.js"></script>
    <script src="./assets/fullCalendar/js/addEvent.js"></script>
    <script src="./assets/fullCalendar/js/editEvent.js"></script>
    <script src="./assets/fullCalendar/js/etcSetting.js"></script> -->

    <!-- 풀캘린더 -->

    <script>
        $(function () {
            function dateFormat(date){
                var yyyy = date.getFullYear();
                var MM = date.getMonth()+1;
                var dd = date.getDate();
                var rtnDate = yyyy + '-' + MM + '-' + dd;
                return  rtnDate;
            }

            function getEvent(proSeq){
                var events;
                $.ajax({
                    type : 'POST',
                    data : {
                        
                    }
                })
            }
        });

    </script>

<script>
    document.addEventListener('DOMContentLoaded', function () {
      var calendarEl = document.getElementById('calendar');
  
      // $.ajax({
      //   url: "data.json",
      //   type: "get",
      //   dataType: 'json',
      //   success: function (data) {
      //     console.log(data[0].title);
      //   }
      // })
  
      var calendar = new FullCalendar.Calendar(calendarEl, {
        plugins: ['interaction', 'dayGrid'],
        header: {
          left: 'prevYear,prev,next,nextYear today',
          center: 'title',
          right: 'dayGridMonth,dayGridWeek,dayGridDay'
        },
        //defaultDate: '2020-02-12',
        navLinks: true, // can click day/week names to navigate views
        editable: true,
        eventLimit: true, // allow "more" link when too many events
        eventSources: [{
          events: function (info, successCallback, failureCallback) {
            $.ajax({
              url: "data.json",
              type: "get",
              dataType: 'json',
              success: function (data) {
                successCallback(data); //json데이터 화면에 뿌려줌
              }
            })
          }
        }]
        // events: [
        //   {
        //     title: data[0].title,
        //     start: data[0].start
        //   },
        //   {
        //     title: 'Long Event',
        //     start: '2020-05-07',
        //     end: '2020-05-10'
        //   }
        //   // {
        //   //   groupId: 999,
        //   //   title: 'Repeating Event',
        //   //   start: '2020-02-16T16:00:00'
        //   // },
        //   // {
        //   //   title: 'Click for Google',
        //   //   url: 'http://google.com/',
        //   //   start: '2020-02-28'
        //   // }
        // ]
      });
  
      calendar.render();
    });
  
  </script>

</body>

</html>