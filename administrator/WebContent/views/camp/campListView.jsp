<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, camp.model.vo.*"%>    
<%	
	ArrayList<CampInfo> cList = (ArrayList<CampInfo>)request.getAttribute("cList");
	ArrayList<Attachment> aList = (ArrayList<Attachment>)request.getAttribute("aList");
	String msg = (String)session.getAttribute("msg");

	int index = 1;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

		<!-- jqury cdn -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		
        <meta charset="utf-8" />
        <title>사업장 승인 페이지</title>
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
	#detail_box{
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

	<style type="text/css">
		#sa-success{
			display:none;
		}
		
		img:hover{
		cursor: pointer;
		}
		
		#detail_box th{
		background-color: #f9f9f9;
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
                 <%@ include file="../common/adminSidebar.jsp" %>
                <!--left navigation end-->

                <!-- START PAGE CONTENT -->
                <div id="page-right-content">

                    <div class="container">
                        <div class="row">
							<div class="col-sm-12">
							
								<h4 class="m-t-0 header-title">사업장 관리 메뉴</h4>

                                <div class="table-responsive m-b-20">
                                    <h5><b>사업장 승인 신청 내역</b></h5>
                                    <p class="text-muted font-13 m-b-30">
                                        현재 오또캠핑에 등록하고자 하는 사업장들의 내역이 나타납니다.
                 <br> 승인대기는 사업자가 신청서를 작성하고 관리자의 최종 승인을 기다리는 단계입니다.
                 <br> 상세보기를 하면 승인 대기 중인 사업장을 승인할 수 있습니다.      
                                    </p>

                                    <table id="datatable" class="table table-striped table-bordered">
                                        <thead>
                                        <tr>
                                            <th>신청번호</th>
                                            <th>캠핑장명</th>
                                            <th>주소</th>
                                            <th>연락처</th>
                                            <th>사업자명</th>
                                            <th>상세보기</th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <% for(CampInfo ci : cList){ %>
											<tr id="usergrade">
												<input type="hidden" value="<%= ci.getcCode() %>">
												<td><%= index++ %></td>
												<td><%= ci.getcName() %></td>
												<td><%= ci.getcAddress() %></td>
												<td><%= ci.getcPhone() %></td>
												<td><%= ci.getcOperName() %></td>
												<td><button class="btn btn-primary btn-xs" type="button" onclick="update(this);">상세보기</button></td>	
											</tr>
										<%} %>
                                        </tbody>
                                    </table>
                                </div>
                                
							</div>
						</div>
                        <!--end row -->

                        <div class="row" id="detail_box">
                            <div class="col-sm-12"> 
                                <h4 class="m-t-0 header-title">사업장 상세 내역</h4>
                               	 <table class="table table-bordered m-0">
												<input type="hidden" value="" id="code">
                                                <thead>
                                                    <tr>
                                                        <th >캠핑장명</th>
                                                        <td id="campName"></td>
                                                		<th >전화번호</th>
                                                		<td id="phone"></td>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th >주소</th>
                                                        <td colspan="3" id="adderess"></td>
                                                        
                                                    </tr>
                                                    <tr>
                                                        <th >홈페이지</th>
                                                        <td id="homepage"></td>
                                                        <th >테마</th>
                                                        <td id="tema"></td>     
                                                    </tr>
                                                    <tr>
                                                        <th >포스팅 서비스 제휴 여부</th>
                                                        <td id="post"></td>
                                                        <th >예약시작가능일</th>
                                                        <td id="reDay"></td> 
                                                    </tr>  
                                                    <tr>
                                                     <th >시설현황</th>
                                                     <td colspan="3" id="now"></td>
                                                    </tr>
                                                    <tr>
                                                     <th >환불규정</th>
                                                     <td colspan="3" id="refund"></td>
                                                    </tr>
                                                    <tr>
                                                     <th >기타제안</th>
                                                     <td colspan="3" id="etc"></td>
                                                    </tr>
                       								<tr>
                                                     <th>첨부사진</th>
                                                     <td colspan="3" id="picture"></td>
                                                    </tr>
                       
                                                </tbody>
                                            </table>
                                
                                <br>
                                <div style="float: right;">
      							<button class="btn btn-primary btn" type="button" onclick="approval(this);" style="">승인하기</button>
      							<button class="btn btn-dark btn" type="button" onclick="closeBtn(this);">닫기</button>
      							</div>
      							<button class="btn btn-default waves-effect waves-light btn-sm" id="sa-success" >Click me</button>
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



		<script type="text/javascript">
		

		function closeBtn(){
			
			$("#detail_box").css("display","none");
		}
		
		code = 0;
		
		function update(value){
			
			$("#detail_box").css("display","block");
			
			$("#campName").html('');
			$("#phone").html('');
			$("#adderess").html('');
			$("#homepage").html('');
			$("#tema").html('');
			$("#post").html('');
			$("#reDay").html('');
			$("#now").html('');
			$("#refund").html('');
			$("#etc").html('');
			$("#picture").html('');
			$("#code").val('');
			
			
			
			var cNo = $(value).parent().parent().children().eq(0).val();
						
			<% for(CampInfo ca : cList) {%>
			
				if(cNo == (<%= ca.getcCode() %> +"")){
					
					code = <%= ca.getcCode() %>
					var $td1 = $("<td>").text("<%= ca.getcName() %>");
					var $td2 = $("<td>").text("<%= ca.getcAddress() %>");
					var $td3 = $("<td>").text("<%= ca.getcPhone() %>");
					var $td4 = $("<td>").text("<%= ca.getcUrl() %>");
					var $td5 = $("<td>");
				
					var $td6 = $("<td>").text("<%= ca.getcTheme() %>");
					var $td7 = $("<td>").text("<%= ca.getcOption() %>");
					var $td8 = $("<td>").text("<%= ca.getcAvailableDate() %>");
					var $td9 = $("<td>").text("<%= ca.getcPosting() %>");
					var $td10 = $("<td>").text("<%= ca.getcRefundment() %>");
					var $td11 = $("<td>").text("<%= ca.getcEtc() %>");
								
					
					<% for(int i = 0; i < aList.size(); i++) { %>
					
					if(cNo == <%= aList.get(i).getcCode() %>){
					
					var $liImg = $("<img src='<%= request.getContextPath() + aList.get(i).getFilePath() + aList.get(i).getChangeName() %>' width='300px' height='200px' onclick='test(this);'>");	
						
						$td5.append($liImg);
											
					}
										
					<% } %>
					
					
					$("#code").val(code);
					$("#campName").append($td1);
					$("#phone").append($td3);
					$("#adderess").append($td2);
					$("#homepage").append($td4);
					$("#tema").append($td6);
					$("#post").append($td9);
					$("#reDay").append($td8);
					$("#now").append($td7);
					$("#refund").append($td10);
					$("#etc").append($td11);
					$("#picture").append($td5);
		
					       
				}
			
			<%} %>
				
		}
		

		function approval(value){
			
			if(confirm("정말로 승인하시겠습니까?")){
			location.href = "<%= request.getContextPath() %>/update.ca?cNo="+code;
			}
	
		}
		

		function test(value){
			
			 var src = $(value).attr('src');
			 
			 img1= new Image(); 
			 img1.src=(src); 
			 
			 W=img1.width; 
			 H=img1.height; 
			 O="width="+W+",height="+H+",scrollbars=yes"; 
	 		 
			 imgWin=window.open("","",O); 
			 imgWin.document.write("<html><head><title>:*:*:*: 이미지상세보기 :*:*:*:*:*:*:</title></head>");
			 imgWin.document.write("<body topmargin=0 leftmargin=0>");
			 imgWin.document.write("<img src="+src+" onclick='self.close()' style='cursor:pointer;' title ='클릭하시면 창이 닫힙니다.'>");
			 imgWin.document.close();
	
			
		}
	
		
		
		</script>


        <!-- js placed at the end of the document so the pages load faster -->
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery-2.1.4.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/bootstrap.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/metisMenu.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery.slimscroll.min.js"></script>

        <!-- App Js -->
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery.app.js"></script>

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