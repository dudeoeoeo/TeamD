<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>의료진 페이지</title>
  
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
        <a href="index" class="nav-link">의료진 페이지</a>
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
            <a href="DoctorReservation" class="nav-link">
              <i class="nav-icon fas fa-calendar-check"></i>
              <p>
                예약현황
                
              </p>
            </a>
          </li>
          <li class="nav-item has-treeview">
            <a href="popup" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>
                환자관리
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="DoctorChart" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>진료차트</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="DoctorDetail" class="nav-link">
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
                <a href="inout_check" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>입퇴원조회/내역</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="operation_schedule" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>환자수술일정조회</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="room_check" class="nav-link">
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
                <a href="doctorQnA" class="nav-link">
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
		                <h3 class="card-title">입퇴원조회/내역</h3>
		
		                <div class="card-tools">
		                  <div class="input-group input-group-sm" style="width: 150px;">
		                    <input type="text" name="table_search" class="form-control float-right" placeholder="진료과를 입력해주세요.">
		
		                    <div class="input-group-append">
		                      <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
		                    </div>
		                  </div>
		                </div>
		              </div>
		              <!-- /.card-header -->
		             <div class="page-content">
		<div class="card mb-0">
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col">병실</th>
								<th scope="col">정원</th>
								<th scope="col">현재인원</th>
								<th scope="col">병실구분</th>
								<th scope="col">남녀구분</th>
								<th scope="col">진료과</th>
								<th scope="col">담당간호사</th>
								<th scope="col">만석여부</th>
								<th scope="col">수정/저장</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><strong>1301</strong></td>
								<td><div class="text-muted text-nowrap">4</div></td>
								<td><select class="form-control custom-select">
						       		  <option selected="" disabled="">2</option>
					                  <option>1</option>
					                  <option>2</option>
					                  <option>3</option>
					                  <option>4</option>
					                </select>	
                       				 </div></td>
								<td><div class="text-muted text-nowrap">일반병실</div></td>
								<td><div class="text-muted text-nowrap">남성</div></td>
								<td><div class="text-muted text-nowrap">정형외과</div></td>
								<td><div class="text-muted text-nowrap">권웅순</div></td>
								<td><div class="text-muted text-nowrap"> </div></td>
								<td><div class="actions">
										<a class="btn btn-info btn-sm" href="edit_appointment"> <i
											class="fas fa-pencil-alt"> </i>
										</a> <a class="btn btn-danger btn-sm" href="#"> <i
											class="fas fa-trash"> </i> 	</a>
									</div></td>
							</tr>
							<tr>
								<td><strong>1302</strong></td>
								<td><div class="text-muted text-nowrap">6</div></td>
								<td><select class="form-control custom-select">
						       		  <option selected="" disabled="">4</option>
					                  <option>1</option>
					                  <option>2</option>
					                  <option>3</option>
					                  <option>4</option>
					                  <option>5</option>
					                  <option>6</option>
					                </select>	
                       				 </div></td>
								<td><div class="text-muted text-nowrap">일반병실</div></td>
								<td><div class="text-muted text-nowrap">남성</div></td>
								<td><div class="text-muted text-nowrap">정형외과</div></td>
								<td><div class="text-muted text-nowrap">권웅순</div></td>
								<td><div class="text-muted text-nowrap"> </div></td>
								<td><div class="actions">
										<a class="btn btn-info btn-sm" href="edit_appointment"> <i
											class="fas fa-pencil-alt"> </i>
										</a> <a class="btn btn-danger btn-sm" href="#"> <i
											class="fas fa-trash"> </i> 	</a>
									</div></td>
							</tr>
							<tr>
								<td><strong>1303</strong></td>
								<td><div class="text-muted text-nowrap">3</div></td>
								<td><select class="form-control custom-select">
						       		  <option selected="" disabled="">2</option>
					                  <option>1</option>
					                  <option>2</option>
					                  <option>3</option>
					                </select>	
                       				 </div></td>
								<td><div class="text-muted text-nowrap">상급병실</div></td>
								<td><div class="text-muted text-nowrap">여성</div></td>
								<td><div class="text-muted text-nowrap">피부과</div></td>
								<td><div class="text-muted text-nowrap">김승민</div></td>
								<td><div class="text-muted text-nowrap"> </div></td>
								<td><div class="actions">
										<a class="btn btn-info btn-sm" href="edit_appointment"> <i
											class="fas fa-pencil-alt"> </i>
										</a> <a class="btn btn-danger btn-sm" href="#"> <i
											class="fas fa-trash"> </i> 	</a>
									</div></td>
							</tr>
							<tr>								
								<td><strong>1304</strong></td>
								<td><div class="text-muted text-nowrap">4</div></td>
								<td><select class="form-control custom-select">
						       		  <option selected="" disabled="">4</option>
					                  <option>1</option>
					                  <option>2</option>
					                  <option>3</option>
					                  <option>4</option>
					                </select>	
                       				 </div></td>
								<td><div class="text-muted text-nowrap">상급병실</div></td>
								<td><div class="text-muted text-nowrap">여성</div></td>
								<td><div class="text-muted text-nowrap">안과</div></td>
								<td><div class="text-muted text-nowrap">김대경</div></td>
								<td><div class="text-muted text-nowrap">만석</div></td>
								<td><div class="actions">
										<a class="btn btn-info btn-sm" href="edit_appointment"> <i
											class="fas fa-pencil-alt"> </i>
										</a> <a class="btn btn-danger btn-sm" href="#"> <i
											class="fas fa-trash"> </i> 	</a>
									</div></td>
							</tr>
							<tr>
								<td><strong>1305</strong></td>
								<td><div class="text-muted text-nowrap">4</div></td>
								<td><select class="form-control custom-select">
						       		  <option selected="" disabled="">4</option>
					                  <option>1</option>
					                  <option>2</option>
					                  <option>3</option>
					                  <option>4</option>
					                </select>	
                       				 </div></td>
								<td><div class="text-muted text-nowrap">일반병실</div></td>
								<td><div class="text-muted text-nowrap">여성</div></td>
								<td><div class="text-muted text-nowrap">이비인후과</div></td>
								<td><div class="text-muted text-nowrap">김환수</div></td>
								<td><div class="text-muted text-nowrap">만석</div></td>
								<td><div class="actions">
										<a class="btn btn-info btn-sm" href="edit_appointment"> <i
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
                  <li class="page-item"><a class="page-link" href="#">4</a></li>
                </ul>
						
			</div>
		</div>
		
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

</body>
</html>
