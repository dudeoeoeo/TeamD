<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>설문 결과</title>
  
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="resources/plugins/fontawesome-free/css/all.min.css">
  <!-- IonIcons -->
  <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="resources/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  
  <!-- daterange picker -->
  <link rel="stylesheet" href="resources/plugins/daterangepicker/daterangepicker.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="resources/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="resources/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="resources/plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="resources/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
  <!-- Bootstrap4 Duallistbox -->
  <link rel="stylesheet" href="resources/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">

<style type="text/css">

body {
    font-family: "Nanum Gothic", sans-serif;
}
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
        <a href="mainPage" class="nav-link">Home</a>
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
      <span class="brand-text font-weight-light">Dr.Link</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="resources/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">관리자</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>
                회원관리
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="medical_user_management" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>의료진 회원</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="user_management" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>일반 회원</p>
                </a>
              </li>
              
            </ul>
          </li>
          <li class="nav-item has-treeview">
            <a href="schedules" class="nav-link">
              <i class="nav-icon fas fa-clock"></i>
              <p>
                일정관리 <i class="fas fa-angle-left right"></i>
                <!-- <span class="badge badge-info right">6</span> -->                
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="schedule_list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>일정 리스트로 보기</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="schedule_calender" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>일정 달력으로 보기</p>
                </a>
              </li>            
          </ul></li>
          <li class="nav-item has-treeview">
            <a href="appointment" class="nav-link">
              <i class="nav-icon fas fa-calendar-check"></i>
              <p>
                예약현황
                <!-- <span class="badge badge-info right">6</span> -->                
              </p>
            </a>            
          </li>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-file-alt"></i>
              <p>
				설문
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="survey_list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>설문관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="survey_result" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>설문결과</p>
                </a>
              </li>
            </ul>
          </li><li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                통계
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="chart_board" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>통계</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>통계</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>통계</p>
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
                <a href="notice_table" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>공지 게시판</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="qna_table" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Q&A</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="free_table" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>자유게시판</p>
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
    <div class="content-header"><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
	        <div class="col-12">
	            <div class="card">
	              <div class="card-header">
	                <h3 class="card-title">설문 결과</h3>
	
	                <div class="card-tools">
	                  <div class="input-group input-group-sm" style="width: 150px;">
	                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">
	
	                    <div class="input-group-append">
	                      <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
	                    </div>
	                  </div>
	                </div>
	              </div>
	              <!-- /.card-header -->
	              <div class="card-body table-responsive p-0">
	                <table class="table table-hover text-nowrap">
	                  <thead>
	                    <tr>
	                      <th width="5%" >번호</th>
	                      <th width="40%" >제목</th>
	                      <th width="10%" >파일</th>
	                      <th width="15%" >등록일</th>
	                      <th width="5%" >조회수</th>
	                    </tr>
	                  </thead>
	                  <tbody>
		                  
		                    <tr>
		                      <td>1</td>
		                      <td><a href="#">환자 의료진 서비스 만족도 조사</a></td>
		                      <td> </td>
		                      <td><span class="tag tag-success">2020.11.20</span></td>
		                      <td>270</td>
		                    </tr>
		                  
		                    <tr>
		                      <td>2</td>
		                      <td><a href="#">환자군 파악 조사</a></td>
		                      <td> </td>
		                      <td><span class="tag tag-success">2020.11.20</span></td>
		                      <td>270</td>
		                    </tr>
		                  
		                    <tr>
		                      <td>3</td>
		                      <td><a href="#">환자 병원 시설 만족도 조사</a></td>
		                      <td> </td>
		                      <td><span class="tag tag-success">2020.11.20</span></td>
		                      <td>270</td>
		                    </tr>
	                  
	                  
						<c:forEach var="m" items="${list}">
	                    <tr>
	                      <td>${m.no}</td>
	                      <td>${m.subject}</td>
	                      <td>${m.file}</td>
	                      <td><span class="tag tag-success">${m.date}</span></td>
	                      <td>${m.views}</td>
	                    </tr>
						</c:forEach>
	                  </tbody>
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
<!-- Select2 -->
<script src="resources/plugins/select2/js/select2.full.min.js"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="resources/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<!-- InputMask -->
<script src="resources/plugins/moment/moment.min.js"></script>
<script src="resources/plugins/inputmask/min/jquery.inputmask.bundle.min.js"></script>
<!-- date-range-picker -->
<script src="resources/plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap color picker -->
<script src="resources/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="resources/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Bootstrap Switch -->
<script src="resources/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>

</body>
</html>
