<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.model.vo.*"%>


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
  
  										<button type="button" class="btn btn-custom btn-rounded" onclick="updatepropic();">사진 업데이트</button>

                                    </div>

                                </div> <!-- end card-box -->

                            </div> <!-- end col -->
                        </div> <!-- end row -->

                        <div class="m-t-30">
                            
                            <div class="tab-content">
                                <div class="tab-pane active" id="home-b1">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <!-- Personal-Information -->
                                            <div class="panel panel-default panel-fill">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">개인정보</h3>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="m-b-20">
                                                        <strong>이름</strong>
                                                        <br>
                                                        <p class="text-muted"> <%= loginUser.getUserName() %> </p>
                                                    </div>
                                                    <div class="m-b-20">
                                                        <strong>전화번호</strong>&nbsp; <button type="button" class="btn btn-info btn-xs" onclick="updatephone();">수정</button>
                                                        <br>
                                                        <p class="text-muted"><%= loginUser.getPhone() %></p>
                                                    </div>
                                                    <div class="m-b-20">
                                                        <strong>Email</strong>&nbsp; <button type="button" class="btn btn-info btn-xs" onclick="updateemail();">수정</button>
                                                        <br>
                                                        <p class="text-muted"><%= loginUser.getEmail() %></p>
                                                    </div>
                                                    <div class="m-b-20">
                                                        
                                                        <br>
                                                        <button type="button" class="btn btn-dark btn-rounded" onclick="updatepwd();">비밀번호 변경</button>
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                            <!-- Personal-Information -->

                                        
                                        </div>


                                        <div class="col-md-8">
                                            <!-- Personal-Information -->
                                            <div class="panel panel-default panel-fill">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">실적</h3>
                                                </div>
                                                <div class="panel-body">
                                                     		<div class="col-md-4">		
                                <div class="card-box">
                          
                                	<h4 class="m-t-0 text-dark">등급</h4>
                                	<h2 class="text-pink text-center m-b-30 m-t-30"><span data-plugin="counterup" id="grade"></span></h2>	
                                </div>
                          		 </div>                
                                <div class="col-md-4">		
                                <div class="card-box">
                          
                                	<h4 class="m-t-0 text-dark">총 이용건수</h4>
                                	<h2 class="text-pink text-center m-b-30 m-t-30"><span data-plugin="counterup">683</span></h2>	
                                </div>
                          		 </div>               
								<div class="col-md-4">
                                <div class="card-box">
                                	<h4 class="m-t-0 text-dark">총 이용금액</h4>
                                	<h2 class="text-primary text-center m-b-30 m-t-30"><span data-plugin="counterup">31570</span>원</h2>
                                	
                                </div>
                                </div>
     
      
                          		  
                            </div>
                                                </div>
                                            </div>
                                            <!-- Personal-Information -->

                                        </div>

                                    </div>
                                </div>
                        </div>
                    </div>
                    <!-- end container -->
                    
                                    <!-- 스크립트 -->
                                    <script>
                                    	
                                    	
                                		function updatepropic(){
                                			window.open("propicupdate.jsp", "비밀번호 변경 창", "width=500, height=300");
                                			
                                		}
                                		
                                		function updatephone(){
                                			window.open("propicupdate.jsp", "비밀번호 변경 창", "width=500, height=300");
                                			
                                		}
                                		
                                		function updateemail(){
                                			window.open("propicupdate.jsp", "비밀번호 변경 창", "width=500, height=300");
                                			
                                		}
                                		
                                		function updatepwd(){
                                			window.open("propicupdate.jsp", "비밀번호 변경 창", "width=500, height=300");
                                			
                                		}
                                		
                                		
                                		
                                		
                                		//온 로드 되면서!!!!!!!!
                                		$(function(){
                                			
                                			
                                			
                                			if("<%= loginUser.getGrade() %>" == "D"){
                                				$("#grade").text("SILVER");
                                			}else if("<%= loginUser.getGrade() %>" == "C"){
                                				$("#grade").text("GOLD");
                                			}else if("<%= loginUser.getGrade() %>" == "B"){
                                				$("#grade").text("VIP");
                                			}else if("<%= loginUser.getGrade() %>" == "A"){
                                				$("#grade").text("VVIP");
                                			}
                                			
                                			
                                			
                                			
                                			
                                			
                                			
                                			
                                			
                                		});
                                		
                                		
                                		
                                		
                                		
                                		
                                		
                                		
                                		
                                		
                                		
                                		
                                		
                   
                                    </script>
                    
                    
                    
                    
                    

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