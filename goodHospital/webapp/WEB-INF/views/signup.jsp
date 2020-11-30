<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>회원가입</title>
  
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="resources/plugins/fontawesome-free/css/all.min.css">
  <!-- IonIcons -->
  <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="resources/css/adminlte.min.css">
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
    <a href="index" class="brand-link">
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
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>통계</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>통계</p>
                </a>
              </li>
            </ul>
          </li>
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
			<div class="card">
				<div class="card-body">
				<div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label">아이디</label>
                        <div class="col-sm-4">
                          <input type="text" class="form-control" id="" placeholder="아이디" readonly="readonly">
                        </div>
                </div>
				<div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label">비밀번호</label>
                        <div class="col-sm-4">
                          <input type="password" class="form-control" id="" placeholder="비밀번호">
                        </div>
                </div>
				<div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label">비밀번호 확인</label>
                        <div class="col-sm-4">
                          <input type="password" class="form-control" id="" placeholder="비밀번호 확인">
                        </div>
                </div>
                
				
				<div class="form-actions">
					<div class="row">
						<button type="submit" style="float: left;" class="btn btn-info m-r-20" formaction="#">Save</button>
					</div>
				</div>
				</div><!-- /card-body  -->
				
				
			</div>
			
			<div class="card">				
				<div class="card-body">
				<div class="form-group">
		            <div class="row">
	                   <div class="col-lg-2">
	                   	<input type="date" value="" min="1980-01-01" max="" class="form-control formDatePicker">
	                   </div>
	                   <div class="col-lg-3">
	                     <input type="text" class="form-control" placeholder="연락처">
	                   </div>
	                   <div class="col-lg-4">
		                   <select class="form-control input-height" name="select">
								<option value="">혈액형</option>
								<option value="Category 1">A+</option>
								<option value="Category 1">A-</option>
								<option value="Category 2">B+</option>
								<option value="Category 2">B-</option>
								<option value="Category 2">AB+</option>
								<option value="Category 2">AB-</option>
								<option value="Category 2">O+</option>
								<option value="Category 2">O-</option>
							</select>
	                   </div>
	               </div>
               </div>
				
				
				<div class="form-actions">
					<div class="row">
						<button type="submit" style="float: left;" class="btn btn-info m-r-20" formaction="#">Save</button>
					</div>
				</div>
				</div><!-- /card-body  -->
			</div>
		</div>
		<!-- /.container-fluid -->
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

</body>
</html>