<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>관리자 페이지</title>
  
  <!-- Jquery -->
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="resources/plugins/fontawesome-free/css/all.min.css">
  <!-- IonIcons -->
  <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="resources/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

<style type="text/css">
.cal_top{
    text-align: center;
    font-size: 30px;
}
.cal{
    text-align: center; 
}
table.calendar{
    border: 1px solid black;
    display: inline-table;
    text-align: left;
}
table.calendar td{
    vertical-align: top;
    border: 1px solid skyblue;
    width: 100px;
}

table {
	border-collapse: collapse;
}

table tr th, td {
	border : 1px solid gray;
	text-align: center;
	text-align: center;
	padding: 5px;
}
</style>
</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to to the body tag
to get the desired effect
|---------------------------------------------------------|
|LAYOUT OPTIONS | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Q&A게시판</a>
      </li>
    </ul>

    

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">      
      <!-- <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button"><i
            class="fas fa-th-large"></i></a>
      </li> -->
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
      <img src="resources/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">kosmoD팀</span>
    </a>

   <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview">
          	<a href="main.jsp" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>
               MAIN
              </p>
            </a>
          </li>
          
          <li class="nav-item has-treeview">
            <a href="DoctorReservation.jsp" class="nav-link">
              <i class="nav-icon fas fa-calendar-check"></i>
              <p>
                예약현황
                
              </p>
            </a>
          </li>
          <li class="nav-item has-treeview">
            <a href="popup.jsp" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>
                환자관리
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="DoctorChart.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>진료차트</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="DoctorDetail.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>검진결과조회</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-calendar-check"></i>
              <p>
                입원관리
                <i class="fas fa-angle-left right"></i>
                <!-- <span class="badge badge-info right">6</span> -->                
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="inout_check.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>입퇴원조회/내역</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="operation_schedule.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>환자수술일정조회</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="room_check.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>병실조회</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                게시판
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="doctorQnA.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Q&A</p>
                </a>
              </li>
            </ul>
          </li>          
        </ul>
       </li>
      </ul>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">공지사항</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <!-- <li class="breadcrumb-item active">Dashboard v3</li> -->
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-9">
            <div class="card card-primary">
              <div class="card-body p-0">
                <!-- THE MAIN -->
                
                <caption>시스템공지사항</caption>
                <table border="1">
                	<tr>
                		<th>NO</th><th>내용</th><th>작성자</th><th>날짜</th><th>조회수</th>
                	</tr>
                	<tr>
                		<td>5</td><td><a href="#">시스템 공지사항 내용입니다.</a></td><td>관리자</td><td>2020-11-20</td><td>5</td>
                	</tr>
                	<tr>
                		<td>4</td><td><a href="#">시스템 공지사항 내용입니다.</a></td><td>관리자</td><td>2020-11-19</td><td>8</td>
                	</tr>
                	<tr>
                		<td>3</td><td><a href="#">시스템 공지사항 내용입니다.</a></td><td>관리자</td><td>2020-11-18</td><td>3</td>
                	</tr>
                	<tr>
                		<td>2</td><td><a href="#">시스템 공지사항 내용입니다.</a></td><td>관리자</td><td>2020-11-17</td><td>2</td>
                	</tr>
                	<tr>
                		<td>1</td><td><a href="#">시스템 공지사항 내용입니다.</a></td><td>관리자</td><td>2020-11-16</td><td>9</td>
                	</tr>
                </table>
                
                <br>
                
                
                
                <caption>병원공지사항</caption>
                <table border="1">
                	<tr>
                		<th>NO</th><th>내용</th><th>작성자</th><th>날짜</th><th>조회수</th>
                	</tr>
                	<tr>
                		<td>5</td><td><a href="#">병원 공지사항 내용입니다.</a></td><td>병원장</td><td>2020-11-20</td><td>5</td>
                	</tr>
                	<tr>
                		<td>4</td><td><a href="#">병원 공지사항 내용입니다.</a></td><td>병원장</td><td>2020-11-19</td><td>8</td>
                	</tr>
                	<tr>
                		<td>3</td><td><a href="#">병원 공지사항 내용입니다.</a></td><td>병원장</td><td>2020-11-18</td><td>3</td>
                	</tr>
                	<tr>
                		<td>2</td><td><a href="#">병원 공지사항 내용입니다.</a></td><td>병원장</td><td>2020-11-17</td><td>2</td>
                	</tr>
                	<tr>
                		<td>1</td><td><a href="#">병원 공지사항 내용입니다.</a></td><td>병원장</td><td>2020-11-16</td><td>9</td>
                	</tr>
                </table>
                
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <!-- <aside class="control-sidebar control-sidebar-dark"> -->
    <!-- Control sidebar content goes here -->
  <!-- </aside> -->
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
    </div>
  </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE -->
<script src="resources/js/adminlte.js"></script>

<!-- OPTIONAL SCRIPTS -->
<script src="resources/plugins/chart.js/Chart.min.js"></script>
<script src="resources/js/demo.js"></script>
<script src="resources/js/pages/dashboard3.js"></script>


<!-- jQuery UI -->
<script src="resources/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- AdminLTE App -->
<script src="resources/js/adminlte.min.js"></script>

<script type="text/javascript">
    
    var today = null;
    var year = null;
    var month = null;
    var firstDay = null;
    var lastDay = null;
    var $tdDay = null;
    var $tdSche = null;
    var jsonData = null;
    $(document).ready(function() {
        drawCalendar();
        initDate();
        drawDays();
        drawSche();
        $("#movePrevMonth").on("click", function(){movePrevMonth();});
        $("#moveNextMonth").on("click", function(){moveNextMonth();});
    });
    
    //Calendar 그리기
    function drawCalendar(){
        var setTableHTML = "";
        setTableHTML+='<table class="calendar">';
        setTableHTML+='<tr><th>SUN</th><th>MON</th><th>TUE</th><th>WED</th><th>THU</th><th>FRI</th><th>SAT</th></tr>';
        for(var i=0;i<6;i++){
            setTableHTML+='<tr height="100">';
            for(var j=0;j<7;j++){
                setTableHTML+='<td style="text-overflow:ellipsis;overflow:hidden;white-space:nowrap">';
                setTableHTML+='    <div class="cal-day"></div>';
                setTableHTML+='    <div class="cal-schedule"></div>';
                setTableHTML+='</td>';
            }
            setTableHTML+='</tr>';
        }
        setTableHTML+='</table>';
        $("#cal_tab").html(setTableHTML);
    }
    
    //날짜 초기화
    function initDate(){
        $tdDay = $("td div.cal-day")
        $tdSche = $("td div.cal-schedule")
        dayCount = 0;
        today = new Date();
        year = today.getFullYear();
        month = today.getMonth()+1;
        if(month < 10){month = "0"+month;}
        firstDay = new Date(year,month-1,1);
        lastDay = new Date(year,month,0);
    }
    
    //calendar 날짜표시
    function drawDays(){
        $("#cal_top_year").text(year);
        $("#cal_top_month").text(month);
        for(var i=firstDay.getDay();i<firstDay.getDay()+lastDay.getDate();i++){
            $tdDay.eq(i).text(++dayCount);
        }
        for(var i=0;i<42;i+=7){
            $tdDay.eq(i).css("color","red");
        }
        for(var i=6;i<42;i+=7){
            $tdDay.eq(i).css("color","blue");
        }
    }
    
    //calendar 월 이동
    function movePrevMonth(){
        month--;
        if(month<=0){
            month=12;
            year--;
        }
        if(month<10){
            month=String("0"+month);
        }
        getNewInfo();
        }
    
    function moveNextMonth(){
        month++;
        if(month>12){
            month=1;
            year++;
        }
        if(month<10){
            month=String("0"+month);
        }
        getNewInfo();
    }
    
    //정보갱신
    function getNewInfo(){
        for(var i=0;i<42;i++){
            $tdDay.eq(i).text("");
            $tdSche.eq(i).text("");
        }
        dayCount=0;
        firstDay = new Date(year,month-1,1);
        lastDay = new Date(year,month,0);
        drawDays();
        drawSche();
    }
    
    //2019-08-27 추가본
    
    //데이터 등록
    function setData(){
        jsonData = 
        {
            "2019":{
                "07":{
                    "17":"제헌절"
                }
                ,"08":{
                    "7":"칠석"
                    ,"15":"광복절"
                    ,"23":"처서"
                }
                ,"09":{
                    "13":"추석"
                    ,"23":"추분"
                }
            }
        
        	,"2020":{
        		"12":{
        			"25":"크리스마스"
        		} // 데이터 입력 여기서부터
        	}
        }
    }
    
    //스케줄 그리기
    function drawSche(){
        setData();
        var dateMatch = null;
        for(var i=firstDay.getDay();i<firstDay.getDay()+lastDay.getDate();i++){
            var txt = "";
            txt =jsonData[year];
            if(txt){
                txt = jsonData[year][month];
                if(txt){
                    txt = jsonData[year][month][i];
                    dateMatch = firstDay.getDay() + i -1; 
                    $tdSche.eq(dateMatch).text(txt);
                }
            }
        }
    }
    
    // 상세페이지 팝업창 띄우기
    function popup(){
            var url = "popup.html";
            var name = "popup test";
            var option = "width = 500, height = 500, top = 100, left = 200, location = no"
            window.open(url, name, option);
    }
 
</script>

</body>
</html>
