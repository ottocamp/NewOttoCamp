<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="grade.model.vo.*, java.util.*, java.text.DecimalFormat"%>
<%
	ArrayList<UserGrade> uList = (ArrayList<UserGrade>)request.getAttribute("uList");
	DecimalFormat formatter = new DecimalFormat("##,###,###");
	String msg = (String)session.getAttribute("msg");
	
	for(UserGrade ug : uList){
		
		switch(ug.getGuserGrade()){
		
		case "A" : ug.setGuserGrade("VIP"); break;
		case "B" : ug.setGuserGrade("GOLD"); break;
		case "C" : ug.setGuserGrade("SILVER"); break;
		case "D" : ug.setGuserGrade("BRONZE"); break;
		
		}
		
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등급관리 페이지</title>
		<!-- jqury cdn -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		
        <meta charset="utf-8" />
        <title>SimpleAdmin - Responsive Admin Dashboard Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link rel="shortcut icon" href="<%= request.getContextPath() %>/resources/assets/images/favicon.ico">
        
        <!-- DataTables -->
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/buttons.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/responsive.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/scroller.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/fixedColumns.dataTables.min.css" rel="stylesheet" type="text/css"/>

        <!-- Bootstrap core CSS -->
        <link href="<%= request.getContextPath() %>/resources/assets/css/bootstrap.min.css" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="<%= request.getContextPath() %>/resources/assets/css/metisMenu.min.css" rel="stylesheet">
        <!-- Icons CSS -->
        <link href="<%= request.getContextPath() %>/resources/assets/css/icons.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="<%= request.getContextPath() %>/resources/assets/css/style.css" rel="stylesheet">

		 <!-- Sweet Alert -->
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/sweet-alert2/sweetalert2.min.css" rel="stylesheet" type="text/css">


		<style type="text/css">
		#usergrade:hover{
			background: #c4dbf4;	
		}
		
		#sa-success{
			display:none;
		}
		
		</style>
		
	<script>
	var msg = "<%= msg %>";
	$(function(){
		if(msg != "null"){
			
			$("#sa-success").click();
			<% session.removeAttribute("msg"); %>
		}
	});

	</script>



</head>
<body>

<div id="page-wrapper">

            <!-- Top Bar Start -->
            <%@ include file="../common/topnavbar.jsp" %>
            <!-- Top Bar End -->

            <!-- Page content start -->
            <div class="page-contentbar">

                <!--left navigation start-->
                <%@ include file="../common/adminSidebar.jsp" %>
                <!--left navigation end-->

                <!-- START PAGE CONTENT -->
                <div id="page-right-content">

                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <h4 class="m-t-0 header-title">회원 등급 관리 메뉴</h4>

                                <div class="table-responsive m-b-20">
                                    <h5><b>전체 회원 등급 정보</b></h5>
                                    <p class="text-muted font-13 m-b-30">
                                        오또캠핑사이트에 가입 된 회원 중 최종 결제를 한번이상 실행한 모든 회원의 정보가 표시됩니다. 회원등급을 업데이트 하시려면 해당 회원을 클릭하세요.
                 <br>BRONZE는 초기값, SILVER는 30만원이상, GOLD는 50만원이상, VIP는 100만원이상 결제한 회원입니다.     
                                    </p>

                                    <table id="datatable" class="table table-striped table-bordered">
                                        <thead>
                                        <tr>
                                            <th>회원번호</th>
                                            <th>이메일</th>
                                            <th>회원이름</th>
                                            <th>회원등급</th>
                                            <th>가입일자</th>
                                            <th>총 결제금액</th>
                                            <th>등급변경</th>
                                        </tr>
                                        </thead>


                                        <tbody>
                                        <% for(UserGrade ug : uList){ %>
											<tr id="usergrade">
												<td><%= ug.getGuserNo() %></td>
												<td><%= ug.getGemail() %></td>
												<td><%= ug.getGuserName() %></td>
					
												<% if(ug.getGuserGrade().equals("BRONZE")){ %>
												<td style="color: #c49349;"><%= ug.getGuserGrade() %></td>
												<%} %>
												<% if(ug.getGuserGrade().equals("SILVER")){ %>
												<td style="color: #8c8c8c;"><%= ug.getGuserGrade() %></td>
												<%} %>
												<% if(ug.getGuserGrade().equals("GOLD")){ %>
												<td style="color: #fed902;"><%= ug.getGuserGrade() %></td>
												<%} %>
												<% if(ug.getGuserGrade().equals("VIP")){ %>
												<td style="color: #3771b0;"><%= ug.getGuserGrade() %></td>
												<%} %>
							
												<td><%= ug.getGjoinDate().substring(0,4) %>/<%= ug.getGjoinDate().substring(4,6) %>/<%= ug.getGjoinDate().substring(6) %></td>
												<td><%= formatter.format(ug.getGsumCost()) %></td>
												<td><button type="button" class="btn btn-primary btn-xs" onclick="update(this);">등급변경</button></td>
											</tr>
										<%} %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!--end row -->


                        <div class="row">
                            <div class="col-lg-6">
                                 <button class="btn btn-default waves-effect waves-light btn-sm" id="sa-success" >Click me</button>
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
        

		<script>
		// 게시판 상세보기 기능 구현 
	
		function update(value){
					
			var grade = prompt("변경하려는 등급을 입력하세요(브론즈,실버,골드,VIP)"); 
				
				if(grade == ""){				
					alert("등급을 입력해주세요"	);
					return;
				}			
			
			if(grade == 'd' || grade == '브론즈' || grade == 'BRONZE' || grade == 'bronze'){			
				grade = 'D';
			}else if(grade == 'c' || grade == '실버' || grade == 'SILVER' || grade == 'silver'){			
				grade = 'C';
			}else if(grade == 'b' || grade == '골드' || grade == 'GOLD' || grade == 'gold'){			
				grade = 'B';
			}else if(grade == 'a' || grade == '브이아이피' || grade == 'VIP' || grade == 'vip'){			
				grade = 'A';
			}else{
				alert("올바른 등급을 입력하세요");
				return;
			}
			

				var userNo = $(value).parent().parent().children().eq(0).text() + ",";
				
				location.href="<%= request.getContextPath() %>/grade.up?userNo=" + userNo + grade;
				
				
			};
			
		
	
	
	
	
	</script>


        <!-- js placed at the end of the document so the pages load faster -->
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery-2.1.4.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/bootstrap.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/metisMenu.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery.slimscroll.min.js"></script>

		<!-- Datatable js -->
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.bootstrap.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.buttons.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/buttons.bootstrap.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/jszip.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/pdfmake.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/vfs_fonts.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/buttons.html5.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/buttons.print.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.keyTable.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.responsive.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/responsive.bootstrap.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.scroller.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.colVis.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.fixedColumns.min.js"></script>

		<!-- init -->
        <script src="<%= request.getContextPath() %>/resources/assets/pages/jquery.datatables.init.js"></script>

		<!-- Sweet-Alert  -->
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/sweet-alert2/sweetalert2.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/pages/jquery.sweet-alert.init.js"></script>


        <!-- App Js -->
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery.app.js"></script>

		

</body>
</html>