<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>예약 수정</title>

<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href="resources/plugins/fontawesome-free/css/all.min.css">
<!-- IonIcons -->
<link rel="stylesheet"
	href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="resources/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">

<link rel="shortcut icon" href="resources/img/favicon.ico">


<style type="text/css">
a:link {
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

a:hover {

	color: blue;
	text-decoration: underline;
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
	
						
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">예약 수정</h3>
							</div>
							<!-- /.card-header -->
							<div class="card-body" id="bar-parent">
							<form action="edit_po" class="form-horizontal" name="content_form" method="get" onkeydown="return captureReturnKey(event)">
							<!--  	<form action="#" id="form_sample_1" class="form-horizontal"
									novalidate="novalidate"> -->
									<div class="form-body">
										<div class="form-group row">
											<label class="control-label col-md-3 text-right">성별 <span
												class="required" aria-required="true"> * </span>
											</label>
											<div class="col-md-5">
												<select class="form-control input-height" name="gender">
													<option value="">Select...</option>
													<option value="여자">여자</option>
													<option value="남자">남자</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="control-label col-md-3 text-right">이름
											<span class="required" aria-required="true"> * </span>
											</label>
											<div class="col-md-5">
												<input type="text" name="user_name" data-required="1"
													placeholder="이름" value=""
													class="form-control input-height">
											</div>
										</div>
										
										<div class="form-group row">
											<label class="control-label col-md-3 text-right">예약날짜<span class="required" aria-required="true">
													* </span>
											</label>
											<div class="col-md-5 input-append date" id="dp1">
												<input type="date" value="" min="1980-01-01" max=""  class="form-control formDatePicker" >
											</div>
										</div>
										<div class="form-group row">
											<label class="control-label col-md-3 text-right">From</label>
											<div class="col-md-5">
												<div class="row">
													<div class="col-md-5">
														<input type="time" value="" min="9:30" max="18:30" step="600" class="form-control" >
													</div>
													<label class="control-label small-label col-md-2 text-right">To</label>
													<div class="col-md-5">
														<input class="form-control" type="time"
															value="" id="" min="9:30" max="18:30" step="600">
													</div>
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label class="control-label col-md-3 text-right">주소<span
												class="required" aria-required="true"> * </span>
											</label>
											<div class="col-md-5">
												<textarea name="address" placeholder="address"
													class="form-control form-control-textarea" style="resize: none;"></textarea>
											</div>
										</div>
										<div class="form-group row">
											<label class="control-label col-md-3 text-right">생년월일
												<span class="required" aria-required="true"> * </span>
											</label>
											<div class="col-md-5 input-append date" id="dp2">
												<input type="date" value="" min="1980-01-01" max=""  class="form-control formDatePicker" >
											</div>
										</div>
										<div class="form-group row">
											<label class="control-label col-md-3 text-right">전화번호<span
												class="required" aria-required="true"> * </span>
											</label>
											<div class="col-md-5">
												<input name="number" type="text"
													placeholder="전화번호" value=""
													class="form-control input-height">
											</div>
										</div>
										
										<div class="form-group row">
											<label class="control-label col-md-3 text-right">담당의사<span class="required" aria-required="true">
													* </span>
											</label>
											<div class="col-md-5">
												<select class="form-control input-height" name="doctor_select">
													<option value="">Select...</option>
													<option value="Category 1">Dr. Rajesh</option>
													<option value="Category 2">Dr. Sarah Smith</option>
													<option value="Category 3">Dr. John Deo</option>
													<option value="Category 3">Dr. Jay Soni</option>
													<option value="Category 3">Dr. Jacob Ryan</option>
													<option value="Category 3">Dr. Megha Trivedi</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="control-label col-md-3 text-right">증상
											</label>
											<div class="col-md-5">
												<input name="creditcard" type="text"
													placeholder="증상" value=""
													class="form-control input-height">
											</div>
										</div>
										
										<div class="form-group row">
											<label class="control-label col-md-3 text-right">비고</label>
											<div class="col-md-5">
												<textarea name="address" class="form-control form-control-textarea"
													placeholder="비고" style="resize: none;"></textarea>
											</div>
										</div>
									</div>
									<div class="form-actions">
										<div class="row">
											<div class="offset-md-3 col-md-9">
												<button type="submit" class="btn btn-info m-r-20" name="btn_sub" onClick="checkForm()" onsubmit="return true;">Submit</button>
												<button type="button" class="btn btn-default" onClick="closeForm()" onsubmit="return true;">Cancel</button>
											</div>
										</div>
									</div>
								</form>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
						
						<!--  이 밑으로는 필요 X  -->
					
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
<script>

function checkForm(){ 

    document.content_form.target="_parent"; 

    document.content_form.submit(); 

} 
$(function(){
	/*
	$('.btn-default').click(function(){
		//location.reload();
		//closeForm();
		window.open("about:blank","_self").close(); 
	});
	*/
}) // ready
function closeForm(){
	document.content_form.target="_parent";
	document.content_form.submit(); 
    //document.content_form.selt.close()
	/*
	window.open('','_self').close();     
	//document.content_form.self.close()
	
	self.opener = self; 
	self.close()
	
	//self.opener = null;
	*/
}
/*
if(parent.document.referrer==''){
	alert('비정상적인 접근입니다.')
	//parent.opener=self
	//parent.window.open('about:blank','_self').close()
	self.close()
}*/
</script>
</body>
</html>
