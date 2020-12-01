<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>관리자 페이지</title>
<style type="text/css">
.iframebox {

 position: relative;
 text-align:center;
 width: 100%;
 height: 100%;
 padding-bottom: 56.25%;

}
​

</style>

</head>


<body id="ttb">
<input type="button" id="btn_ifr" value="아이프레임"/>
<div id="rightGroup" class=".iframebox">
<!--  
<iframe src="edit_appointment_2" id="the_iframe" onload="calcHeight();" 
name="WrittenPublic" title="게시판뷰" frameborder="0" scrolling="no" 
style="overflow-x:hidden; overflow:auto; width:100%; min-height:500px;"></iframe>


<iframe class="product_de" src="edit_appointment" width="400px" height="250px" 
seamless="seamless" style="display=none"> 이 페이지</iframe>
-->
<p align="center" style="height: 200px;">
<iframe class="product_de" src="edit_appointment_2" scrolling="no" seamless="seamless" width="50%" height="700px" frameborder="0" border="0" cellspacing="0"
        style="border-style: none; "> 이 페이지</iframe></p>
</div>

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

<script type="text/javascript"> 
//<![CDATA[
function calcHeight(){
 //find the height of the internal page

 var the_height=
 document.getElementById('the_iframe').contentWindow.
 document.body.scrollHeight;

 //change the height of the iframe
 document.getElementById('the_iframe').height=the_height;

 //document.getElementById('the_iframe').scrolling = "no";
 document.getElementById('the_iframe').style.overflow = "hidden";
}
//
</script>

<script>

$(function () {
	
$(".product_de").hide();
  //$('#rightGroup').css({'display':'none' }); 
	var flag = false;
	$('#btn_ifr').click(function(){
	   flag = !flag;
	   if(flag) {
	     $(".product_de").show();
	   } else {$(".product_de").hide();}
		 //$('#rightGroup').toggle();
	}) // click
})

 
</script>

</body>
</html>
