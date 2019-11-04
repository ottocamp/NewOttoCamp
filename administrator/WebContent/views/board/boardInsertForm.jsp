
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jqury cdn -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<meta charset="utf-8" />
<title>SimpleAdmin - Responsive Admin Dashboard Template</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta
	content="A fully featured admin theme which can be used to build CRM, CMS, etc."
	name="description" />
<meta content="Coderthemes" name="author" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<link rel="shortcut icon"
	href="<%= request.getContextPath() %>/resources/assets/images/favicon.ico">

<!-- include libraries(jQuery, bootstrap) -->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">

<!-- include summernote css/js -->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css"
	rel="stylesheet">

<style>
#outer {
	width: 100%;
	margin: 5px auto;
	/* border: 1px solid purple;  */
}

form {
	margin: 10px;
}

label {
	margin-right: 10px;
}


select {
	height: 30px;
}

#bTitle {
	width: 35%;
	height: 30px;
}

/* #contentfooter{
                border: 1px solid green;
            } */
#memberInfo {
	display: inline-block;
	width: 18%;
	margin: 5px 20px;
}

#memberInfo input {
	display: block;
	width: 100%;
	height: 30px;
	margin-top: 5px;
	font-size: 12px;
}

p {
	display: inline-block;
	font-size: 5px;
}

#btn {
	height: 30px;
	width: 80px;
	border-radius: 5px;
	background-color: gainsboro;
	border-radius: 5px;
	border: 1px solid rgb(197, 197, 243);
	color: darkblue;
}

#btn:hover {
	cursor: pointer;
}

#btnArea {
	margin: 15px 0;
	margin-bottom: 30px;
}

</style>

</head>
<body>

	<div id="page-wrapper">

		<!-- Top Bar Start -->
		<div class="topbar">

			<!-- LOGO -->
			<div class="topbar-left">
				<div class="">
					<a href="index.html" class="logo"> <img
						src="<%= request.getContextPath() %>/resources/assets/images/logo.png"
						alt="logo" class="logo-lg"> <img
						src="<%= request.getContextPath() %>/resources/assets/images/logo_sm.png"
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
									<input type="text"
										placeholder="Search<%= request.getContextPath() %>."
										class="form-control"> <a href=""><i
										class="fa fa-search"></i></a>
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
									src="<%= request.getContextPath() %>/resources/assets/images/users/avatar-1.jpg"
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
						<!-- 게시판 메뉴에선 사용하지 않는 div -->
						<!-- <div class="user-details">
                                <div class="pull-left">
                                    <img src="<%= request.getContextPath() %>/resources/assets/images/users/avatar-1.jpg" alt="" class="thumb-md img-circle">
                                </div>
                                <div class="user-info">
                                    <a href="#">Stanley Jones</a>
                                    <p class="text-muted m-0">Administrator</p>
                                </div>
                            </div> -->
						<!--- End User Detail box -->

						<!-- Left Menu Start -->
						<ul class="metisMenu nav" id="side-menu">
							<li><a href="#"><i class="fa fa-wpforms"></i> 공지사항 </a></li>

							<li><a href="#" aria-expanded="true"><i
									class="mdi mdi-information"></i> 정보 공유 </a>
								<ul class="nav-second-level nav collapse" aria-expanded="false">
									<li><a href="#">서울</a></li>
									<li><a href="#">경기도</a></li>
									<li><a href="#">강원도</a></li>
									<li><a href="#">경상도</a></li>
									<li><a href="#">전라도</a></li>
									<li><a href="#">충청도</a></li>

								</ul></li>

							<li><a href="#"><i class="mdi mdi-message-processing"></i>
									잡담 </a></li>
						</ul>
					</div>
				</div>
				<!--Scrollbar wrapper-->
			</aside>
			<!--left navigation end-->

			<!-- START PAGE CONTENT -->
			<div id="page-right-content">

				<div class="container">
					<div id="outer">
						<form method="post" action="<%= request.getContextPath() %>/insert.bo">
							<div id="tagArea">
								<label>분류</label> 
									<option name="boardTag" value="1">정보공유</option>
									<option name="boardTag" value="2">잡담</option>
								<select>
								</select> &nbsp;&nbsp;
								 <label>지역</label> <select>
									<option name="regionTag" value="0">---</option>
									<option name="regionTag" value="1">서울</option>
									<option name="regionTag" value="2">경기도</option>
									<option name="regionTag" value="3">강원도</option>
									<option name="regionTag" value="4">경상도</option>
									<option name="regionTag" value="5">충청도</option>
									<option name="regionTag" value="6">전라도</option>
								</select>
							</div>
							<hr>
							<div id="titleArea">
								<label>제목</label> <input type="text" name="bTitle" id="bTitle"
									placeholder="제목을 입력하세요" maxlength="50">
							</div>
							<hr>
							<div id="contentArea">
								<label>내용</label>
								<div id="content">
									<textarea id="summernote" name="editordata"  style="font-size: 30px;"></textarea>
								</div>
							</div>
							<hr>
							<div id="contentfooter">
								<div id="memberInfo">
									<input type="text" id="memName" name="memName" placeholder="임시 닉네임을 입력하세요">
									<input type="text" id="memPwd" name="memPwd" placeholder="임시 비밀번호를 입력하세요">
									<input type="hidden" name="noMem" value="9999">
								</div>

								<p>
									비회원 작성 시, 비밀번호를 분실하면 글을 삭제 할 수 없습니다.&nbsp;&nbsp; <a href="#"
										style="font-size: 13px;">로그인</a>하러 가기
								</p>


								<div id="btnArea" align="center">
									<button id="cancel #tn" type="button"
										onclick="location.href='<%= request.getContextPath() %>/list.bo?b_tag=2'">취소하기</button>
									<button id="submit btn" type="submit">등록하기</button>
								</div>
							</div>

						</form>
					</div>
				</div>
				<!-- end container -->

				<div class="footer">
					<div class="pull-right hidden-xs">
						Project Completed <strong class="text-custom">39%</strong>.
					</div>
					<div>
						<strong>Simple Admin</strong> - Copyright © 2017
					</div>
				</div>
				<!-- end footer -->

			</div>
			<!-- End #page-right-content -->

		</div>
		<!-- end .page-contentbar -->
	</div>
	<script>
		$(document).ready(function() {
			$('#summernote').summernote({
				height : 400, // set editor height
				minHeight : 400, // set minimum height of editor
				maxHeight : 400, // set maximum height of editor
				focus : false
			// set focus to editable area after initializing summernote
			});
		});
	</script>


	<!-- js placed at the end of the document so the pages load faster -->
	<script
		src="<%=request.getContextPath()%>/resources/assets/js/jquery-2.1.4.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/assets/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/assets/js/metisMenu.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/assets/js/jquery.slimscroll.min.js"></script>

	<!-- App Js -->
	<script
		src="<%=request.getContextPath()%>/resources/assets/js/jquery.app.js"></script>

	<!-- include libraries(jQuery, bootstrap) -->
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

	<!-- include summernote css/js -->
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>


</body>
</html>