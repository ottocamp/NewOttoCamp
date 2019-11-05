<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.model.vo.*"%>
<%
	

%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
		<!-- jqury cdn -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		
        <meta charset="utf-8" />
        <title>SimpleAdmin - Responsive Admin Dashboard Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link rel="shortcut icon" href="<%= request.getContextPath() %>/resources/assets/images/favicon.ico">

        <!-- Bootstrap core CSS -->
        <link href="<%= request.getContextPath() %>/resources/assets/css/bootstrap.min.css" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="<%= request.getContextPath() %>/resources/assets/css/metisMenu.min.css" rel="stylesheet">
        <!-- Icons CSS -->
        <link href="<%= request.getContextPath() %>/resources/assets/css/icons.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="<%= request.getContextPath() %>/resources/assets/css/style.css" rel="stylesheet">
	<style >

	
		
	
	
	</style>


</head>
<body>

<div id="page-wrapper">

            <!-- Top Bar Start -->
 			<%@ include file="../common/topnavbar.jsp" %>
            <!-- Top Bar End -->


            <!-- Page content start -->
            <div class="page-contentbar">

                <!--left navigation start-->
				<%@ include file="../common/userSidebar.jsp" %>
                <!--left navigation end-->

                <!-- START PAGE CONTENT -->
                <div id="page-right-content">

<div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="p-0 text-center">
                                    <div class="member-card">
                                        <div class="thumb-xl member-thumb m-b-10 center-block">
                                            <img class="img-circle img-thumbnail propicArea" width="200px" height="300px">
                               
                                        </div>

                                        <div class="">
                                            <h4 class="m-b-5"> <%= loginUser.getUserName() %> </h4>
                                            <p class="text-muted"></p>
                                        </div>

                                        <p class="text-muted m-t-10">
                                            	
                                        </p>
                                        
                                        <button onclick="updatepropic();">사진 업데이트</button>
  

                                    </div>

                                </div> <!-- end card-box -->

                            </div> <!-- end col -->
                        </div> <!-- end row -->

                        <div class="m-t-30">
                            
                            <div class="tab-content">
                                <div class="tab-pane" id="home-b1">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <!-- Personal-Information -->
                                            <div class="panel panel-default panel-fill">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">Personal Information</h3>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="m-b-20">
                                                        <strong>이름</strong>
                                                        <br>
                                                        <p class="text-muted">Johnathan Deo</p>
                                                    </div>
                                                    <div class="m-b-20">
                                                        <strong>Mobile</strong>
                                                        <br>
                                                        <p class="text-muted">(123) 123 1234</p>
                                                    </div>
                                                    <div class="m-b-20">
                                                        <strong>Email</strong>
                                                        <br>
                                                        <p class="text-muted">johnath@domain.com</p>
                                                    </div>
                                                    <div class="about-info-p m-b-0">
                                                        <strong>Location</strong>
                                                        <br>
                                                        <p class="text-muted">USA</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Personal-Information -->

                                            <!-- Social -->
                                            <div class="panel panel-default panel-fill">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">Social</h3>
                                                </div>
                                                <div class="panel-body">
                                                    <ul class="social-links list-inline m-b-0">
                                                        <li>
                                                            <a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="" data-original-title="Facebook"><i class="fa fa-facebook"></i></a>
                                                        </li>
                                                        <li>
                                                            <a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="" data-original-title="Twitter"><i class="fa fa-twitter"></i></a>
                                                        </li>
                                                        <li>
                                                            <a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="" data-original-title="Skype"><i class="fa fa-skype"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <!-- Social -->
                                        </div>


                                        <div class="col-md-8">
                                            <!-- Personal-Information -->
                                            <div class="panel panel-default panel-fill">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">Biography</h3>
                                                </div>
                                                <div class="panel-body">
                                                    <h5 class="header-title text-uppercase">About</h5>
                                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting
                                                        industry. Lorem Ipsum has been the industry's standard dummy
                                                        text ever since the 1500s, when an unknown printer took a galley
                                                        of type and scrambled it to make a type specimen book. It has
                                                        survived not only five centuries, but also the leap into
                                                        electronic typesetting, remaining essentially unchanged.</p>

                                                    <p><strong>But also the leap into electronic typesetting, remaining
                                                        essentially unchanged.</strong></p>

                                                    <p>It was popularised in the 1960s with the release of Letraset
                                                        sheets containing Lorem Ipsum passages, and more recently with
                                                        desktop publishing software like Aldus PageMaker including
                                                        versions of Lorem Ipsum.</p>

                                                    <div class="">

                                                        <h5 class="header-title text-uppercase m-t-30 m-b-20">Skills</h5>

                                                        <div class="m-b-15">
                                                            <h5>Angular Js <span class="pull-right">60%</span></h5>
                                                            <div class="progress">
                                                                <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                                    <span class="sr-only">60% Complete</span>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="m-b-15">
                                                            <h5>Javascript <span class="pull-right">90%</span></h5>
                                                            <div class="progress">
                                                                <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                                                                    <span class="sr-only">90% Complete</span>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="m-b-15">
                                                            <h5>Wordpress <span class="pull-right">80%</span></h5>
                                                            <div class="progress">
                                                                <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                                                    <span class="sr-only">80% Complete</span>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="m-b-0">
                                                            <h5>HTML5 &amp; CSS3 <span class="pull-right">95%</span>
                                                            </h5>
                                                            <div class="progress m-b-0">
                                                                <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100" style="width: 95%">
                                                                    <span class="sr-only">95% Complete</span>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Personal-Information -->

                                        </div>

                                    </div>
                                </div>
                                <div class="tab-pane active" id="profile-b1">
                                    <!-- Personal-Information -->
                                    <div class="panel panel-default panel-fill">
                                        <div class="panel-heading">
                                            <h3 class="panel-title">정보 수정</h3>
                                        </div>
                                        <div class="panel-body">
                                            <form role="form">
                                                <div class="form-group">
                                                    <label for="FullName">이름</label>
                                                    <input type="text" value="<%= loginUser.getUserName() %>" id="FullName" class="form-control" readonly>
                                                </div>
                                                <div class="form-group">
                                                    <label for="Email">아이디</label>
                                                    <input type="email" value="<%= loginUser.getUserId() %>" id="Email" class="form-control" readonly>
                                                </div>
                                                <div class="form-group">
                                                    <label for="Usermail">이메일</label>
                                                    <input type="email" value="<%= loginUser.getEmail() %>" id="Usermail" class="form-control"> 
                                                    
                                                </div>
                                                <div class="form-group">
                                                    <label for="Username">전화번호</label>
                                                    <input type="email" value="<%= loginUser.getPhone() %>" id="Username" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="Password">비밀번호</label>
                                                    
                                                    <p class="email" style="color: green">&nbsp;</p>
                                                </div>
                                                <button class="btn btn-primary waves-effect waves-light w-md" type="submit">변경하기</button>
                                            </form>

                                        </div>
                                    </div>
                                    <!-- Personal-Information -->
                                    
                                    <!-- 스크립트 -->
                                    <script>
                                    	
                                    	
                                		function updatepropic(){
                                			window.open("propicupdate.jsp", "비밀번호 변경 창", "width=500, height=300");
                                			
                                		}
                                		
                   
                                    </script>
                                    
                                    				
				
				
				
				
				
				
				
				
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                </div>
                            </div>
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
                    </div> <!-- end footer -->

                </div>
                <!-- End #page-right-content -->

            </div>
            <!-- end .page-contentbar -->
        </div>


        <!-- js placed at the end of the document so the pages load faster -->
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery-2.1.4.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/bootstrap.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/metisMenu.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery.slimscroll.min.js"></script>

        <!-- App Js -->
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery.app.js"></script>

		
		

</body>
</html>