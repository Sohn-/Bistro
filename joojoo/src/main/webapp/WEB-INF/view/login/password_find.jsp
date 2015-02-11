<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../bootstrap.min.css" type="text/css" rel="stylesheet">

<script type="text/javascript"> 
	$(document).ready(function(){ 
		$(".popover-top").popover({trigger: 'hover click','placement': 'top'}); 
		$("#btn").click(function(){
			window.alert("버튼 눌림");
			$("#modal").modal('show');
		})
	}); 
</script>
<body>
<button type="button" name = "btn" >modal테스트</button>
<button type="button" name = "modal" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Small modal</button>

<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      ...
    </div>
  </div>
</div>
</html>