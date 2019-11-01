<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jqury cdn -->
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="utf-8" />
<title>사업자 메인 페이지</title>
<meta name="viewport"
content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta
content="A fully featured admin theme which can be used to build CRM, CMS, etc."
name="description" />
<meta content="Coderthemes" name="author" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="shortcut icon"
href="/administrator/resources/assets/images/favicon.ico">
<!-- Bootstrap core CSS -->
<link
href="/administrator/resources/assets/css/bootstrap.min.css"
rel="stylesheet">
<!-- MetisMenu CSS -->
<link
href="/administrator/resources/assets/css/metisMenu.min.css"
rel="stylesheet">
<!-- Icons CSS -->
<link
href="/administrator/resources/assets/css/icons.css"
rel="stylesheet">
<!-- Custom styles for this template -->
<link
href="/administrator/resources/assets/css/style.css"
rel="stylesheet">
<link
href="/administrator/resources/assets/css/bootstrap-datepicker.min.css"
rel="stylesheet">
</head>
<body>
<!-- 메뉴바 include -->
<!-- 1. 캠핑장 등록 -->
<div id="page-wrapper">
<!-- Top Bar Start -->
<div class="topbar">
<!-- LOGO -->
<div class="topbar-left">
<div class="">
<a href="index.html" class="logo"> <img
src="/administrator/resources/assets/images/logo.png"
alt="logo" class="logo-lg"> <img
src="/administrator/resources/assets/images/logo_sm.png"
alt="logo" class="logo-sm hidden">
</a>
</div>
</div>
<!-- Top navbar -->
<div class="navbar navbar-default" role="navigation">
<div class="container">
<div class="">
<!-- Mobile menu button -->
<div class="pull-left">
<button type="button"
class="button-menu-mobile visible-xs visible-sm">
<i class="fa fa-bars"></i>
</button>
<span class="clearfix"></span>
</div>
<!-- Top nav left menu -->
<ul class="nav navbar-nav hidden-sm hidden-xs top-navbar-items">
<li><a href="#">About</a></li>
<li><a href="#">Help</a></li>
<li><a href="#">Contact</a></li>
</ul>
<!-- Top nav Right menu -->
<ul
class="nav navbar-nav navbar-right top-navbar-items-right pull-right">
<li class="hidden-xs">
<form role="search" class="navbar-left app-search pull-left">
<input type="text" placeholder="Search..." class="form-control">
<a href=""><i class="fa fa-search"></i></a>
</form>
</li>
<li class="dropdown top-menu-item-xs"><a href="#"
data-target="#" class="dropdown-toggle menu-right-item"
data-toggle="dropdown" aria-expanded="true"> <i
class="mdi mdi-bell"></i> <span class="label label-danger">3</span>
</a>
<ul class="dropdown-menu p-0 dropdown-menu-lg">
<!--<li class="notifi-title"><span class="label label-default pull-right">New 3</span>Notification</li>-->
<li class="list-group notification-list" style="height: 267px;">
<div class="slimScrollDiv"
style="position: relative; overflow: hidden; width: auto; height: 267px;">
<div class="slimscroll"
style="overflow: hidden; width: auto; height: 267px;">
<!-- list item-->
<a href="javascript:void(0);" class="list-group-item">
<div class="media">
<div class="media-left p-r-10">
<em class="fa fa-diamond bg-primary"></em>
</div>
<div class="media-body">
<h5 class="media-heading">A new order has been
placed A new order has been placed</h5>
<p class="m-0">
<small>There are new settings available</small>
</p>
</div>
</div>
</a>
<!-- list item-->
<a href="javascript:void(0);" class="list-group-item">
<div class="media">
<div class="media-left p-r-10">
<em class="fa fa-cog bg-warning"></em>
</div>
<div class="media-body">
<h5 class="media-heading">New settings</h5>
<p class="m-0">
<small>There are new settings available</small>
</p>
</div>
</div>
</a>
<!-- list item-->
<a href="javascript:void(0);" class="list-group-item">
<div class="media">
<div class="media-left p-r-10">
<em class="fa fa-bell-o bg-custom"></em>
</div>
<div class="media-body">
<h5 class="media-heading">Updates</h5>
<p class="m-0">
<small>There are <span
class="text-primary font-600">2</span> new updates
available
</small>
</p>
</div>
</div>
</a>
<!-- list item-->
<a href="javascript:void(0);" class="list-group-item">
<div class="media">
<div class="media-left p-r-10">
<em class="fa fa-user-plus bg-danger"></em>
</div>
<div class="media-body">
<h5 class="media-heading">New user registered</h5>
<p class="m-0">
<small>You have 10 unread messages</small>
</p>
</div>
</div>
</a>
<!-- list item-->
<a href="javascript:void(0);" class="list-group-item">
<div class="media">
<div class="media-left p-r-10">
<em class="fa fa-diamond bg-primary"></em>
</div>
<div class="media-body">
<h5 class="media-heading">A new order has been
placed A new order has been placed</h5>
<p class="m-0">
<small>There are new settings available</small>
</p>
</div>
</div>
</a>
<!-- list item-->
<a href="javascript:void(0);" class="list-group-item">
<div class="media">
<div class="media-left p-r-10">
<em class="fa fa-cog bg-warning"></em>
</div>
<div class="media-body">
<h5 class="media-heading">New settings</h5>
<p class="m-0">
<small>There are new settings available</small>
</p>
</div>
</div>
</a>
</div>
<div class="slimScrollBar"
style="background: rgb(158, 165, 171); width: 5px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div>
<div class="slimScrollRail"
style="width: 5px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
</div>
</li>
<!--<li>-->
<!--<a href="javascript:void(0);" class="list-group-item text-right">-->
<!--<small class="font-600">See all notifications</small>-->
<!--</a>-->
<!--</li>-->
</ul></li>
<li class="dropdown top-menu-item-xs"><a href=""
class="dropdown-toggle menu-right-item profile"
data-toggle="dropdown" aria-expanded="true"><img
src="/administrator/resources/assets/images/users/avatar-1.jpg"
alt="user-img" class="img-circle"> </a>
<ul class="dropdown-menu">
<li><a href="javascript:void(0)"><i
class="ti-user m-r-10"></i> Profile</a></li>
<li><a href="javascript:void(0)"><i
class="ti-settings m-r-10"></i> Settings</a></li>
<li><a href="javascript:void(0)"><i
class="ti-lock m-r-10"></i> Lock screen</a></li>
<li class="divider"></li>
<li><a href="javascript:void(0)"><i
class="ti-power-off m-r-10"></i> Logout</a></li>
</ul></li>
</ul>
</div>
</div>
<!-- end container -->
</div>
<!-- end navbar -->
</div>
<!-- Top Bar End -->
<!-- Page content start -->
<div class="page-contentbar">
<!--left navigation start-->
<aside class="sidebar-navigation">
<div class="scrollbar-wrapper">
<div>
<button type="button"
class="button-menu-mobile btn-mobile-view visible-xs visible-sm">
<i class="mdi mdi-close"></i>
</button>
<!-- User Detail box -->
<div class="user-details">
<div class="pull-left">
<img
src="/administrator/resources/assets/images/users/avatar-1.jpg"
alt="" class="thumb-md img-circle">
</div>
<div class="user-info">
<a href="#">Stanley Jones</a>
<p class="text-muted m-0">Administrator</p>
</div>
</div>
<!--- End User Detail box -->
<!-- Left Menu Start -->
<ul class="metisMenu nav" id="side-menu">
<li><a href="/administrator"><i
class="ti-home"></i> 사업자 메인 </a></li>
<li><a href="/administrator/reservation.li"><span
class="label label-custom pull-right">11</span> <i
class="ti-paint-bucket"></i> 예약내역 </a></li>
<li class=""><a href="javascript: void(0);"
aria-expanded="false"><i class="ti-menu-alt"></i> 매출내역확인 <span
class="fa arrow"></span></a> <!-- <ul class="nav-second-level nav collapse" aria-expanded="false" style="height: 0px;">
<li><a href="tables-basic.html">전체 매출내역</a></li>
<li><a href="tables-advanced.html">사업장별 매출내역</a></li>
</ul> --></li>
<li><a href="javascript: void(0);" aria-expanded="true"><i
class="ti-light-bulb"></i> 정보등록/수정 <span class="fa arrow"></span></a>
<ul class="nav-second-level nav collapse" aria-expanded="false">
<li><a href="insert.ca">정보 등록</a></li>
<li><a href="components-alerts.html">정보 수정</a></li>
</ul></li>
<li><a href="javascript: void(0);" aria-expanded="true"><i
class="ti-pencil-alt"></i> 문의답변 <span class="fa arrow"></span></a>
<!-- <ul class="nav-second-level nav collapse" aria-expanded="false">
<li><a href="forms-general.html">공지사항</a></li>
<li><a href="forms-advanced.html">문의답변</a></li>
</ul> --></li>
</ul>
</div>
</div>
<!--Scrollbar wrapper-->
</aside>
<!--left navigation end-->
<!-- START PAGE CONTENT -->
<div id="page-right-content">
<div class="container">
<div class="row">
<div class="col-sm-12">
<h4 class="m-b-20 header-title">캠핑장 정보 등록</h4>
<!-- 1_1. 등록 폼 시작 -->
<div class="row">
<div class="col-md-6">
<form class="form-horizontal" role="form" id="campInsertForm"
action="/administrator/insert.ca" method="post">
<div class="form-group">
<label class="col-md-2 control-label">캠핑장 이름</label>
<div class="col-md-10">
<input type="text" class="form-control" name="campName">
</div>
</div>
<div class="form-group">
<label class="col-md-2 control-label">사업자 번호</label>
<div class="col-md-10">
<input type="text" class="form-control" name="operatorNo">
</div>
</div>
<div class="form-group">
<label class="col-md-2 control-label">사업자 이름</label>
<div class="col-md-10">
<input type="text" class="form-control" name="operatorName">
</div>
</div>
<div class="form-group">
<label class="col-md-2 control-label">주소</label>
<div class="col-md-10">
<input type="text" class="form-control"
placeholder="정확한 주소를 입력해주세요." name="campAddress">
</div>
</div>
<div class="form-group">
<label class="col-md-2 control-label">전화번호</label>
<div class="col-md-10">
<input type="text" class="form-control" name="campPhone">
</div>
</div>
<div class="form-group">
<label class="col-md-2 control-label">홈페이지 주소</label>
<div class="col-md-10">
<input type="text" class="form-control" value="htttp://" name="campUrl">
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">테마 선택</label>
<div class="col-sm-10">
<select class="form-control" name="campTheme">
<option id="mountain" value="산">산</option >
<option id="river" value="강">강</option>
<option id="sea" value="바다">바다</option>
<option id="etc" value="기타">기타</option>
</select>
</div>
</div>
<div class="m-b-20">
<label class="col-md-2 control-label">시설현황 선택</label>
<div class="col-sm-10">
<table class="table table-bordered m-0">
<tbody>
<tr>
<td>
<div class="checkbox checkbox-dark checkbox-circle">
<input id="checkbox-15" type="checkbox" name="electronic">
<label for="checkbox-15">전기</label>
</div>
</td>
<td>
<div class="checkbox checkbox-dark checkbox-circle">
<input id="checkbox-15" type="checkbox"> <label
for="checkbox-15">샤워실</label>
</div>
</td>
<td>
<div class="checkbox checkbox-dark checkbox-circle">
<input id="checkbox-15" type="checkbox"> <label
for="checkbox-15">수세식</label>
</div>
</td>
<td>
<div class="checkbox checkbox-dark checkbox-circle">
<input id="checkbox-15" type="checkbox"> <label
for="checkbox-15">화로사용</label>
</div>
</td>
<td>
<div class="checkbox checkbox-dark checkbox-circle">
<input id="checkbox-15" type="checkbox"> <label
for="checkbox-15">와이파이</label>
</div>
</td>
</tr>
<tr>
<td>
<div class="checkbox checkbox-dark checkbox-circle">
<input id="checkbox-15" type="checkbox"> <label
for="checkbox-15">동계가능</label>
</div>
</td>
<td>
<div class="checkbox checkbox-dark checkbox-circle">
<input id="checkbox-15" type="checkbox"> <label
for="checkbox-15">팬션/민박</label>
</div>
</td>
<td>
<div class="checkbox checkbox-dark checkbox-circle">
<input id="checkbox-15" type="checkbox"> <label
for="checkbox-15">데크</label>
</div>
</td>
<td>
<div class="checkbox checkbox-dark checkbox-circle">
<input id="checkbox-15" type="checkbox"> <label
for="checkbox-15">잔디</label>
</div>
</td>
<td>
<div class="checkbox checkbox-dark checkbox-circle">
<input id="checkbox-15" type="checkbox"> <label
for="checkbox-15">카라반</label>
</div>
</td>
</tr>
<tr>
<td>
<div class="checkbox checkbox-dark checkbox-circle">
<input id="checkbox-15" type="checkbox"> <label
for="checkbox-15">글램핑</label>
</div>
</td>
<td>
<div class="checkbox checkbox-dark checkbox-circle">
<input id="checkbox-15" type="checkbox"> <label
for="checkbox-15">온수</label>
</div>
</td>
<td>
<div class="checkbox checkbox-dark checkbox-circle">
<input id="checkbox-15" type="checkbox"> <label
for="checkbox-15">난로대여</label>
</div>
</td>
<td>
<div class="checkbox checkbox-dark checkbox-circle">
<input id="checkbox-15" type="checkbox"> <label
for="checkbox-15">파쇄석</label>
</div>
</td>
<td>
<div class="checkbox checkbox-dark checkbox-circle">
<input id="checkbox-15" type="checkbox"> <label
for="checkbox-15">썰매장</label>
</div>
</td>
</tr>
<tr>
<td>
<div class="checkbox checkbox-dark checkbox-circle">
<input id="checkbox-15" type="checkbox"> <label
for="checkbox-15">물놀이가능</label>
</div>
</td>
<td>
<div class="checkbox checkbox-dark checkbox-circle">
<input id="checkbox-15" type="checkbox"> <label
for="checkbox-15">애견가능</label>
</div>
</td>
<td>
<div class="checkbox checkbox-dark checkbox-circle">
<input id="checkbox-15" type="checkbox"> <label
for="checkbox-15">놀이터</label>
</div>
</td>
<td>
<div class="checkbox checkbox-dark checkbox-circle">
<input id="checkbox-15" type="checkbox"> <label
for="checkbox-15">낚시</label>
</div>
</td>
<td>
<div class="checkbox checkbox-dark checkbox-circle">
<input id="checkbox-15" type="checkbox"> <label
for="checkbox-15">매점</label>
</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>
<div class="row">
<div class="col-sm-12">
<div class="p-20 m-b-20">
<div class="row">
<div class="">
<form action="#">
<div class="form-group">
<label class="col-md-2 control-label">예약가능시작일</label>
<div class="col-sm-10">
<input type="text" class="form-control"
placeholder="mm/dd/yyyy" id="datepicker-autoclose">
<span class="input-group-addon bg-custom b-0"><i
class="mdi mdi-calendar text-white"></i></span>
</div>
</div>
</div>
<div class="col-sm-10">
<label class="col-md-2 control-label">포스팅 제휴 여부</label>
<div class="radio radio-info radio-inline">
<input type="radio" id="inlineRadio1" value="가입"
name="radioInline" checked> <label
for="inlineRadio1"> 유료 포스팅 서비스 가입 </label>
</div>
<div class="radio radio-inline">
<input type="radio" id="inlineRadio2" value="미가입"
name="radioInline"> <label for="inlineRadio2">
미가입 </label>
</div>
</div>
<div class="col-md-10">
<label class="col-md-2 control-label">환불 규정</label>
<div class="col-md-10">
<textarea class="form-control" rows="5"></textarea>
</div>
</div>
<div class="col-md-10">
<label class="col-md-2 control-label">제안/기타</label>
<div class="col-md-10">
<textarea class="form-control" rows="5"></textarea>
</div>
</div>
<div class="form-group">
<label class="control-label">캠핑장 사진 첨부 1</label>
<input type="file" class="filestyle" data-buttonname="btn-default">
</div>
<div class="form-group">
<label class="control-label">캠핑장 사진 첨부 2</label>
<input type="file" class="filestyle" data-buttonname="btn-default">
</div>
<div class="form-group">
<label class="control-label">캠핑장 사진 첨부 3</label>
<input type="file" class="filestyle" data-buttonname="btn-default">
</div>
<div class="form-group">
<label class="control-label">캠핑장 사진 첨부 4</label>
<input type="file" class="filestyle" data-buttonname="btn-default">
</div>
<div class="form-group">
<label class="control-label">캠핑장 사진 첨부 5</label>
<input type="file" class="filestyle" data-buttonname="btn-default">
</div>
<div class="form-group">
<label class="control-label">사업자 등록증 첨부</label>
<input type="file" class="filestyle" data-buttonname="btn-default">
</div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
<!-- end row -->
<div class="row">
<div class="col-lg-6">
<button class="btn btn-default waves-effect waves-light btn-sm"
id="sa-success">등록 신청</button>
</div>
<!-- end col -->
</div>
<!-- end row -->
<div class="row">
<div class="col-sm-12"></div>
</div>
</div>
<!-- end container -->
</div>
<!-- End #page-right-content -->
</div>
<!-- end .page-contentbar -->
</div>
<script type="text/javascript">
function delete1(value){
var reNo = $(value).parent().parent().children().eq(1).text()
location.href = "/administrator/delete.re?reNo="+reNo;
}
</script>
<!-- js placed at the end of the document so the pages load faster -->
<script
src="/administrator/resources/assets/js/jquery-2.1.4.min.js"></script>
<script
src="/administrator/resources/assets/js/bootstrap.min.js"></script>
<script
src="/administrator/resources/assets/js/metisMenu.min.js"></script>
<script
src="/administrator/resources/assets/js/jquery.slimscroll.min.js"></script>
<!-- Datatable js -->
<script
src="/administrator/resources/assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script
src="/administrator/resources/assets/plugins/datatables/dataTables.bootstrap.js"></script>
<script
src="/administrator/resources/assets/plugins/datatables/dataTables.buttons.min.js"></script>
<script
src="/administrator/resources/assets/plugins/datatables/buttons.bootstrap.min.js"></script>
<script
src="/administrator/resources/assets/plugins/datatables/jszip.min.js"></script>
<script
src="/administrator/resources/assets/plugins/datatables/pdfmake.min.js"></script>
<script
src="/administrator/resources/assets/plugins/datatables/vfs_fonts.js"></script>
<script
src="/administrator/resources/assets/plugins/datatables/buttons.html5.min.js"></script>
<script
src="/administrator/resources/assets/plugins/datatables/buttons.print.min.js"></script>
<script
src="/administrator/resources/assets/plugins/datatables/dataTables.keyTable.min.js"></script>
<script
src="/administrator/resources/assets/plugins/datatables/dataTables.responsive.min.js"></script>
<script
src="/administrator/resources/assets/plugins/datatables/responsive.bootstrap.min.js"></script>
<script
src="/administrator/resources/assets/plugins/datatables/dataTables.scroller.min.js"></script>
<script
src="/administrator/resources/assets/plugins/datatables/dataTables.colVis.js"></script>
<script
src="/administrator/resources/assets/plugins/datatables/dataTables.fixedColumns.min.js"></script>
<!-- init -->
<script
src="/administrator/resources/assets/pages/jquery.datatables.init.js"></script>
<!-- Sweet-Alert -->
<script
src="/administrator/resources/assets/plugins/sweet-alert2/sweetalert2.min.js"></script>
<script
src="/administrator/resources/assets/pages/jquery.sweet-alert.init.js"></script>
<!-- App Js -->
<script
src="/administrator/resources/assets/js/jquery.app.js"></script>
<!-- js placed at the end of the document so the pages load faster -->
<script src="/administrator/resources/assets/js/jquery-2.1.4.min.js"></script>
<script src="/administrator/resources/assets/js/bootstrap.min.js"></script>
<script src="/administrator/resources/assets/js/metisMenu.min.js"></script>
<script src="/administrator/resources/assets/js/jquery.slimscroll.min.js"></script>
<script src="/administrator/resources/assets/plugins/bootstrap-tagsinput/js/bootstrap-tagsinput.min.js"></script>
<script src="/administrator/resources/assets/plugins/select2/js/select2.min.js" type="text/javascript"></script>
<script src="/administrator/resources/assets/plugins/bootstrap-filestyle/js/bootstrap-filestyle.min.js" type="text/javascript"></script>
<script src="/administrator/resources/assets/plugins/switchery/switchery.min.js"></script>
<script type="text/javascript" src="/administrator/resources/assets/plugins/parsleyjs/parsley.min.js"></script>
<script src="/administrator/resources/assets/plugins/moment/moment.js"></script>
<script src="/administrator/resources/assets/plugins/timepicker/bootstrap-timepicker.js"></script>
<script src="/administrator/resources/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<script src="/administrator/resources/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<script src="/administrator/resources/assets/plugins/clockpicker/js/bootstrap-clockpicker.min.js"></script>
<script src="/administrator/resources/assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="/administrator/resources/assets/plugins/summernote/summernote.min.js"></script>
<!-- form advanced init js -->
<script src="/administrator/resources/assets/pages/jquery.form-advanced.init.js"></script>
<!-- App Js -->
<script src="/administrator/resources/assets/js/jquery.app.js"></script>
<script type="text/javascript">
$(document).ready(function() {
$('.form-validation').parsley();
$('.summernote').summernote({
height: 350, // set editor height
minHeight: null, // set minimum height of editor
maxHeight: null, // set maximum height of editor
focus: false // set focus to editable area after initializing summernote
});
});
</script>
</body>
</html>
 