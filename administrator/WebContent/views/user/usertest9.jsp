<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%
	int code = 9;

	ArrayList<Integer> codeList = (ArrayList<Integer>) request.getAttribute("codeList");
	String checkFlag = "";

	for (int i : codeList) {

		if (i == code) {
			checkFlag = "checked";
		}
	}

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 메인 메뉴</title>
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
							<div class="col-sm-12">
								<input type="checkbox" id="fav" <%= checkFlag %> >9대전캠프장을 추가
							</div>
						</div>
                        <!--end row -->
                        
                        
                        <script>
                        
                        $(function(){
                        	
                        	 var code = <%= code %>
                             
                             
                             $("#fav").change(function(){
                            	 
                             	if($("#fav").prop("checked")){
                             		
                             		
                             		
                     				$.ajax({
                     					url : "<%= request.getContextPath() %>/inOrde.favorite",
                     					type : "post",
                     					data : {flag:"I",Code:code},
                     					success: function(data){
                     						
                     						if(data=="success"){
                     							alert("나의 관심목록에 추가 하였습니다.");
                     						}else{
                     							alert("나의 관심목록 추가에 실파 하였습니다.");
                     						}

                     					},
                     					error: function(){
                     						alert("통신 실패")
                     					}
                     				});
                             		
                             		
     		
                             	}else{
                             		
                             		
                     				$.ajax({
                     					url : "<%= request.getContextPath() %>/inOrde.favorite",
                     					type : "post",
                     					data : {flag:"D",Code:code},
                     					success: function(data){
                     						
                     						if(data=="success"){
                     							alert("나의 관심목록에서 삭제하였습니다");
                     						}else{
                     							alert("삭제에 실패 하였습니다.");
                     						}

                     					},
                     					error: function(){
                     						alert("통신 실패")
                     					}
                     				});
                             		
                             		
                             		
                             		
                             	}
                            	 
                            	 
                            	 
                            	 
                             });

	
                             
 	
                        });
    
                        </script>
                        


                        <div class="row">
                            <div class="col-lg-6">
                                
                            </div> <!-- end col -->

                            <div class="col-lg-6">
                                
                            </div> <!-- end col -->
                        </div> <!-- end row -->


                        <div class="row">
                            <div class="col-sm-12">
                                
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