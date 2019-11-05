<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, user.model.vo.*, java.text.DecimalFormat"%>
<%
	ArrayList<UserReservation> urList = (ArrayList<UserReservation>)request.getAttribute("urList");
	DecimalFormat formatter = new DecimalFormat("##,###,###");
	String msg = (String)session.getAttribute("msg");
	
	for(UserReservation re : urList){
			
		switch(re.getReStatus()){
		
		case "1" : re.setReStatus("결제완료"); break;
		case "2" : re.setReStatus("예약완료"); break;
		case "3" : re.setReStatus("예약취소"); break;
		case "4" : re.setReStatus("이용완료"); break;
		
		
		}
		
	}
	
%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 관리 페이지</title>
		<!-- jqury cdn -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		
        <meta charset="utf-8" />
    
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
		
		<script>
		var msg = "<%= msg %>";
		$(function(){
		if(msg != "null"){
			
			$("#sa-success").click();
			<% session.removeAttribute("msg"); %>
		}
		});
		
	</script>

	<style type="text/css">
		#sa-success{
			display:none;
		}
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
							<div class="col-sm-12">
							
								<h4 class="m-t-0 header-title">예약 관리 메뉴</h4>

                                <div class="table-responsive m-b-20">
                                    <h5><b>캠핑장 예약 정보</b></h5>
                                    <!-- <p class="text-muted font-13 m-b-30">
                                        현재 오또캠핑을 통해서 예약된 모든 사항들이 표시됩니다.
                 <br>결제완료는 예약자가 금액을 지불하고 사업장의 승인을 기다리는 상태, 예약완료는 사업자가 예약을 승인한 상태
                 <br>예약취소는 예약이 취소된 상태, 이용완료는 캠핑장 이용이 모두 완료되어 환불이 불가능한 상태입니다.     
                                    </p> -->

                                    <table id="datatable" class="table table-striped table-bordered">
                                        <thead>
                                        <tr>
                                        <!--         -->
                                        
                                        	<th>예약번호</th>
                                        	<th>캠핑장명</th>
                                        	<th>예약일자</th>
                                        	<th>결제일시</th>
                                        	<th>결제금액</th>
                                        	<th>결제방식</th>
                                        	<th>처리상태</th>
                                        	<th>승인</th>
                                        
<!--                                             <th>결제일시</th>
                                            <th>예약번호</th>
                                            <th>회원이름</th>
                                            <th>연락처</th>
                                            <th>예약일자</th>
                                            <th>결제금액</th>
                                            <th>처리상태</th>
                                            <th></th> -->
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <% for(UserReservation ure : urList){ %>
											<tr id="usergrade">
												<td><%= ure.getReNo() %></td>
												<td><%= ure.getCampName() %></td>
												<td><%= ure.getReDate() %></td>
												<td><%= ure.getPaymentDate() %></td>
												<td><%= ure.getReCost() %></td>
												<td><%= ure.getPamentType() %></td>
												<td><%= ure.getReStatus() %></td>
												<td><%if(ure.getReStatus().equals("예약완료")) {%>
													<button type="button" class="btn btn-primary btn-xs" onclick="delete1(this);">취소하기</button>
												<%}else{ %>
													취소불가
												<%} %>												
												</td>	
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
                <!-- End #page-right-content -->s

            </div>
            <!-- end .page-contentbar -->
        </div>

		<script type="text/javascript">
		
		function delete1(value){
			
			var reNo = $(value).parent().parent().children().eq(1).text()
			
			var msg = "전체내역";
			
			location.href = "<%= request.getContextPath() %>/delete.re?reNo="+reNo + "," + msg;
		}
		
		
		
		<%-- $(function(){
			$("#deletebtn").click(function(){
				
				var reNo = $(this).parent().parent().children().eq(1).text();
				
				location.href = "<%= request.getContextPath() %>/delete.re?reNo="+reNo;
								
			});
		}); --%>
		
		
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