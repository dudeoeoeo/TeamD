<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>예약 현황</title>
  
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
 
. { position:relative; /*감싸는 레이어에 포지션 속성을 잡아주는 게 필수!(relative, absolute, fixed 중 택1*/ width:500px; height:500px; background:#F66; text-align:center; line-height:100px; margin:0 auto;  color:#000; font-size:12px; }
.iframebox { 
position:absolute; 
top:100px; 
left:100px;/*위에 올라가는 레이어의 포지션은 top, bottom 둘 중 하나, left, right 둘 중 하나의 속성을 선택하여 잡아준다.*/ 
width:300px; 
height:300px; 
background:#FFFFCC; 
text-align:center; 
line-height:300px;
z-index: 1;
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
			<div class="page-content" style="position:relative;">
				<div class="card mb-0">
					<div class="card-body" >
						<div class="table-responsive">
							<table class="table table-hover">
								<thead>
									<tr>
										<th scope="col">Photo</th>
										<th scope="col">Name</th>
										<th scope="col">Email</th>
										<th scope="col">Date</th>
										<th scope="col">Visit time</th>
										<th scope="col">Number</th>
										<th scope="col">Doctor</th>
										<th scope="col">Injury / Condition</th>
										<th scope="col">Actions</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><img src="${pageContext.request.contextPath}/resources/img/AdminLTELogo.png" alt=""
											width="40" height="40" class="rounded-500"></td>
										<td><strong>Liam</strong></td>
										<td><div
												class="d-flex align-items-center nowrap text-primary">
												<span class="icofont-ui-email p-0 mr-2"></span>
												liam@gmail.com
											</div></td>
										<td><div class="text-muted text-nowrap">10 Feb 2018</div></td>
										<td><div class="text-muted text-nowrap">9:15 - 9:45</div></td>
										<td><div
												class="d-flex align-items-center nowrap text-primary">
												<span class="icofont-ui-cell-phone p-0 mr-2"></span>
												0126595743
											</div></td>
										<td>Dr. Benjamin</td>
										<td>mumps</td>
										<td>
											<div id="rightGroup" class=".iframebox"  style="position: relative;">
											<!-- <p align="left" style="height: 200px;"></p> -->
											<iframe class="product_de" src="edit_appointment_2" scrolling="no" seamless="seamless" width="50%" height="700px" frameborder="0" border="0" cellspacing="0"
											        style="border-style: none; "> 이 페이지</iframe>
											</div>
											<div class="actions">
											<!--  <a class="btn btn-info btn-sm" href="edit_appointment"></a>
												-->
											<button class="btn btn-info btn-sm">
												<i class="fas fa-pencil-alt"> </i>
												</button>
												
												 <a class="btn btn-danger btn-sm" href="#"> <i
													class="fas fa-trash"> </i> 	</a>

											</div></td>
									</tr>
									<tr>
										<td><img src="../assets/content/user-40-2.jpg" alt=""
											width="40" height="40" class="rounded-500"></td>
										<td><strong>Emma</strong></td>
										<td><div
												class="d-flex align-items-center nowrap text-primary">
												<span class="icofont-ui-email p-0 mr-2"></span>
												emma@gmail.com
											</div></td>
										<td><div class="text-muted text-nowrap">5 Dec 2018</div></td>
										<td><div class="text-muted text-nowrap">9:00 - 9:30</div></td>
										<td><div
												class="d-flex align-items-center nowrap text-primary">
												<span class="icofont-ui-cell-phone p-0 mr-2"></span>
												0126595743
											</div></td>
										<td>Dr. Liam</td>
										<td>arthritis</td>
										<td><div class="actions">
												<a class="btn btn-info btn-sm" href="#"> <i
													class="fas fa-pencil-alt"> </i>
												</a> <a class="btn btn-danger btn-sm" href="#"> <i
													class="fas fa-trash"> </i> 	</a>

											</div></td>
									</tr>
									<tr>
										<td><img src="../assets/content/user-40-3.jpg" alt=""
											width="40" height="40" class="rounded-500"></td>
										<td><strong>Olivia</strong></td>
										<td><div
												class="d-flex align-items-center nowrap text-primary">
												<span class="icofont-ui-email p-0 mr-2"></span>
												olivia@gmail.com
											</div></td>
										<td><div class="text-muted text-nowrap">13 Oct 2018</div></td>
										<td><div class="text-muted text-nowrap">12:00 -
												12:45</div></td>
										<td><div
												class="d-flex align-items-center nowrap text-primary">
												<span class="icofont-ui-cell-phone p-0 mr-2"></span>
												0126595743
											</div></td>
										<td>Dr. Noah</td>
										<td>depression</td>
										<td><div class="actions">
												<a class="btn btn-info btn-sm" href="#"> <i
													class="fas fa-pencil-alt"> </i>
												</a> <a class="btn btn-danger btn-sm" href="#"> <i
													class="fas fa-trash"> </i> 	</a>

											</div></td>
									</tr>
									<tr>
										<td><img src="../assets/content/user-40-4.jpg" alt=""
											width="40" height="40" class="rounded-500"></td>
										<td><strong>Ava</strong></td>
										<td><div
												class="d-flex align-items-center nowrap text-primary">
												<span class="icofont-ui-email p-0 mr-2"></span>
												ava@gmail.com
											</div></td>
										<td><div class="text-muted text-nowrap">26 Dec 2018</div></td>
										<td><div class="text-muted text-nowrap">14:15 -
												14:30</div></td>
										<td><div
												class="d-flex align-items-center nowrap text-primary">
												<span class="icofont-ui-cell-phone p-0 mr-2"></span>
												0126595743
											</div></td>
										<td>Dr. Emma</td>
										<td>diarrhoea</td>
										<td><div class="actions">
												<a class="btn btn-info btn-sm" href="#"> <i
													class="fas fa-pencil-alt"> </i>
												</a> <a class="btn btn-danger btn-sm" href="#"> <i
													class="fas fa-trash"> </i> 	</a>

											</div></td>
									</tr>
									<tr>
										<td><img src="../assets/content/user-40-5.jpg" alt=""
											width="40" height="40" class="rounded-500"></td>
										<td><strong>Noah</strong></td>
										<td><div
												class="d-flex align-items-center nowrap text-primary">
												<span class="icofont-ui-email p-0 mr-2"></span>
												noah@gmail.co
											</div></td>
										<td><div class="text-muted text-nowrap">15 Jun 2018</div></td>
										<td><div class="text-muted text-nowrap">17:30 -
												18:00</div></td>
										<td><div
												class="d-flex align-items-center nowrap text-primary">
												<span class="icofont-ui-cell-phone p-0 mr-2"></span>
												0126595743
											</div></td>
										<td>Dr. James</td>
										<td>dyslexia</td>
										<td><div class="actions">
												<a class="btn btn-info btn-sm" href="#"> <i
													class="fas fa-pencil-alt"> </i>
												</a> <a class="btn btn-danger btn-sm" href="#"> <i
													class="fas fa-trash"> </i> 	</a>

											</div></td>
									</tr>
									<tr>
										<td><img src="../assets/content/user-40-6.jpg" alt=""
											width="40" height="40" class="rounded-500"></td>
										<td><strong>Isabella</strong></td>
										<td><div
												class="d-flex align-items-center nowrap text-primary">
												<span class="icofont-ui-email p-0 mr-2"></span>
												isabella@gmail.com
											</div></td>
										<td><div class="text-muted text-nowrap">2 Jul 2018</div></td>
										<td><div class="text-muted text-nowrap">10:00 -
												10:15</div></td>
										<td><div
												class="d-flex align-items-center nowrap text-primary">
												<span class="icofont-ui-cell-phone p-0 mr-2"></span>
												0126595743
											</div></td>
										<td>Dr. Noah</td>
										<td>flu</td>
										<td><div class="actions">
												<a class="btn btn-info btn-sm" href="#"> <i
													class="fas fa-pencil-alt"> </i>
												</a> <a class="btn btn-danger btn-sm" href="#"> <i
													class="fas fa-trash"> </i> 	</a>

											</div></td>
									</tr>
									<tr>
										<td><img src="../assets/content/user-40-7.jpg" alt=""
											width="40" height="40" class="rounded-500"></td>
										<td><strong>Sophia</strong></td>
										<td><div
												class="d-flex align-items-center nowrap text-primary">
												<span class="icofont-ui-email p-0 mr-2"></span>
												sophia@gmail.com
											</div></td>
										<td><div class="text-muted text-nowrap">9 Oct 2018</div></td>
										<td><div class="text-muted text-nowrap">8:30 - 8:45</div></td>
										<td><div
												class="d-flex align-items-center nowrap text-primary">
												<span class="icofont-ui-cell-phone p-0 mr-2"></span>
												0126595743
											</div></td>
										<td>Dr. Olivia</td>
										<td>fracture</td>
										<td><div class="actions">
												<a class="btn btn-info btn-sm" href="#"> <i
													class="fas fa-pencil-alt"> </i>
												</a> <a class="btn btn-danger btn-sm" href="#"> <i
													class="fas fa-trash"> </i> 	</a>

											</div></td>
									</tr>
									<tr>
										<td><img src="../assets/content/user-40-8.jpg" alt=""
											width="40" height="40" class="rounded-500"></td>
										<td><strong>Mia</strong></td>
										<td><div
												class="d-flex align-items-center nowrap text-primary">
												<span class="icofont-ui-email p-0 mr-2"></span>
												mia000@gmail.com
											</div></td>
										<td><div class="text-muted text-nowrap">17 Mar 2018</div></td>
										<td><div class="text-muted text-nowrap">11:30 -
												11:40</div></td>
										<td><div
												class="d-flex align-items-center nowrap text-primary">
												<span class="icofont-ui-cell-phone p-0 mr-2"></span>
												0126595743
											</div></td>
										<td>Dr. Emma</td>
										<td>hypothermia</td>
										<td><div class="actions">
												<a class="btn btn-info btn-sm" href="#"> <i
													class="fas fa-pencil-alt"> </i>
												</a> <a class="btn btn-danger btn-sm" href="#"> <i
													class="fas fa-trash"> </i> 	</a>

											</div></td>
									</tr>
									
								</tbody>
							</table>
						</div>						
						
						<ul class="pagination pagination-sm m-0 float-middle">
		                  <li class="page-item"><a class="page-link" href="#">1</a></li>
		                  <li class="page-item"><a class="page-link" href="#">2</a></li>
		                  <li class="page-item"><a class="page-link" href="#">3</a></li>
		                </ul>
								
					</div>
				</div>
				
			</div>
			<!-- /.content -->
			
		</div>
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
</script>

<script>

$(function () {
	
$("#rightGroup").hide();
  //$('#rightGroup').css({'display':'none' }); 
	var flag = false;
	$('.btn-info').click(function(){
	   flag = !flag;
	   if(flag) {
	     $("#rightGroup").show();
	   } else {$("#rightGroup").hide();}
		 //$('#rightGroup').toggle();
	}) // click
})

 
</script>
</body>
</html>
