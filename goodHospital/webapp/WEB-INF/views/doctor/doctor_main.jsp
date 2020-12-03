<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>의료진 메인페이지</title>
  <!-- fullCalendar -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fullcalendar/main.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fullcalendar-daygrid/main.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fullcalendar-timegrid/main.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fullcalendar-bootstrap/main.min.css">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fontawesome-free/css/all.min.css">
  <!-- IonIcons -->
  <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

<style type="text/css">
 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: blue; text-decoration: underline;}
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
        <a href="#" class="nav-link">Home</a>
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

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="resources/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">박충자(의사)님 환영합니다</a>
        </div>
      </div>

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
            <h1 class="m-0 text-dark">박충자(의사)님 환영합니다 :)</h1>
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
          <div class="col-md-3">
              <!-- /.card -->
            </div>
           
              </div>
          </div>
          <!-- /.col -->
          <div class="col-md-9">
            <div class="card card-primary">
              <div class="card-body p-0">
                <!-- THE BOARD READONLY  --> 
                
               <caption><h3>시스템공지사항</h3></caption>
                <table class="table table-hover text-nowrap">
                	<tr>
                		<th width="5%">NO</th><th width="40%">제목</th><th width="15%">작성자</th><th width="15%">날짜</th><th width="5%">조회수</th>
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
                
                
                
                <caption><h3>병원공지사항</h3></caption>
                <table class="table table-hover text-nowrap">
                	<tr>
                		<th>NO</th><th>제목</th><th>작성자</th><th>날짜</th><th>조회수</th>
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
<script src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE -->
<script src="${pageContext.request.contextPath}/resources/js/adminlte.js"></script>

<!-- OPTIONAL SCRIPTS -->
<script src="${pageContext.request.contextPath}/resources/plugins/chart.js/Chart.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/demo.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/pages/dashboard3.js"></script>


<!-- jQuery UI -->
<script src="${pageContext.request.contextPath}/resources/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/resources/js/adminlte.min.js"></script>

<!-- fullCalendar 2.2.5 -->
<script src="${pageContext.request.contextPath}/resources/plugins/moment/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/fullcalendar/main.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/fullcalendar-daygrid/main.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/fullcalendar-timegrid/main.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/fullcalendar-interaction/main.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/fullcalendar-bootstrap/main.min.js"></script>



</body>
</html>
