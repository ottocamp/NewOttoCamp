<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.* , user.model.vo.*"%>
<%
	ArrayList<IpInfo> ipinfo =  (ArrayList<IpInfo>)request.getAttribute("ipinfo"); 
	String flag = (String)request.getAttribute("flag");
		
	String checkflag = ""; 
	
	if(flag.equalsIgnoreCase("N")){
		checkflag="checked";
	}
	
	
	

%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 테스트</title>
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
						<div class="col-md-12">
							<div class="p-0 text-center"></div>
							<!-- end card-box -->

						</div>
						<!-- end col -->
					</div>
					<!-- end row -->

					<div class="m-t-30">

						<div class="tab-content">
							<div class="tab-pane active" id="home-b1">
								<div class="row">
									<div class="col-md-4">
										<!-- Personal-Information -->
										<div class="panel panel-default panel-fill">
											<div class="panel-heading">
												<h3 class="panel-title">현재 로그인 정보</h3>
											</div>
											<div class="panel-body" id="ipi">
												<div class="m-b-20">
													<strong>접속국가</strong> <br>
													<p class="text-muted" id="ipc">&nbsp;</p>
												</div>
												<div class="m-b-20">
													<strong>지역</strong> <br>
													<p class="text-muted" id="ipr">&nbsp;</p>
												</div>
												<div class="m-b-20">
													<strong>아이피</strong> <br>
													<p class="text-muted" id="ipip">&nbsp;</p>
												</div>
											</div>
										</div>
										<!-- Personal-Information -->



										<!-- Social -->
										<div class="panel panel-default panel-fill">
											<div class="panel-heading">
												<h3 class="panel-title">해외 로그인 차단 관리</h3>
											</div>
											<div class="panel-body">
												<input id="ld1" type="checkbox"
													data-plugin="switchery" data-color="#1bb99a"
													data-switchery="true"
													style="display: none; display: inline;" <%= checkflag %>>
												<p id="ld2"></p>

											</div>
										</div>
										<!-- Social -->
									</div>

									<script>
        
           
                                        	$(function(){	
                                        		
                                        			var userNo = <%= loginUser.getUserNo() %>
                                        		
                                 
                                                    if($("#ld1").prop("checked")){
                                                        $("#ld2").text("해외 로그인 차단 중").css("color","green");
                                                    }else{
                                                    	$("#ld2").text("해외 로그인 허용 중").css("color","red");
                                                    }
                                                    
                                                    $("#desclist").click();
                                                    
                                                    $("#ld1").change(function(){
                                                        if($("#ld1").prop("checked")){
                                                           
                                                            
                                                            
                                            				$.ajax({
                                            					url : "<%= request.getContextPath() %>/block.user",
                                            					type : "post",
                                            					data : {flag:"N",userNo:userNo},
                                            					success: function(data){
                                            						
                                            						if(data=="success"){
                                            							alert("해외 로그인 차단설정이 성공적으로 이루졌습니다.");
                                            							 $("#ld2").text("해외 로그인 차단 중").css("color","green");
                                            						}else{
                                            							alert("해외 로그인 차단설정이 실패하였습니다.");
                                            						}
	
                                            					},
                                            					error: function(){
                                            						alert("통신 실패")
                                            					}
                                            				});
                
                                                        }else{
                                                        	
                                            				$.ajax({
                                            					url : "<%= request.getContextPath() %>/block.user",
                                            					type : "post",
                                            					data : {flag:"Y",userNo:userNo},
                                            					success: function(data){
                                            						
                                            						if(data=="success"){

                                                                    	alert("해외 로그인 접속 허용");
                                                                    	$("#ld2").text("해외 로그인 허용 중 ").css("color","red");
                                            							
                                            						}else{
                                            							alert("해외 로그인 접속허용 설정에 실패하였습니다.");
                                            						}
	
                                            					},
                                            					error: function(){
                                            						alert("통신 실패")
                                            					}
                                            				});
                                                        	
 	

                                                        }
                                                    	
                                                    	
                                                    });
                                                    
                                                    $('.form-validation').parsley();
                                                    $('.summernote').summernote({
                                                        height: 350,                 // set editor height
                                                        minHeight: null,             // set minimum height of editor
                                                        maxHeight: null,             // set maximum height of editor
                                                        focus: false                 // set focus to editable area after initializing summernote
                                                    });
                                                    
                                                    
                                                    //
                                                    
                                                    var country = geoplugin_countryName();
                                                    var region = geoplugin_region();
                                                    var ip = geoplugin_request(); 
                                                    
                                                    
                                                   setTimeout(function() {
                                                	   $("#ipc").text(country).css("color","green");
                                                	   $("#ipr").text(region).css("color","green");
                                                	   $("#ipip").text(ip).css("color","green");
                                                	   

                                          			  }, 500);
                                                    
                                                    
                                                    
                                                    
                                                    //
                                                    
        
                                        	});
                                        
                                        
                                        </script>


									<div class="col-md-8">
										<!-- Personal-Information -->
										<div class="panel panel-default panel-fill">
											<div class="panel-heading">
												<h3 class="panel-title">로그인 기록</h3>
											</div>
											<div class="panel-body">
												<div class="col-sm-12">


													<div class="table-responsive m-b-20">


														<div id="datatable_wrapper"
															class="dataTables_wrapper form-inline dt-bootstrap no-footer"
															style="width: 810px">
															<div class="row">
																<div class="col-sm-6">
																	<div class="dataTables_length" id="datatable_length"></div>
																</div>
															</div>
															<div class="row">
																<div class="col-sm-12">
																	<div id="datatable_wrapper"
																		class="dataTables_wrapper form-inline dt-bootstrap no-footer">
																		<div class="row">
																			<div class="col-sm-6">
																				<div class="dataTables_length" id="datatable_length">
																					<label></label>
																				</div>
																			</div>
																		</div>
																		<div class="row">
																			<div class="col-sm-12">
																				<div id="datatable_wrapper"
																					class="dataTables_wrapper form-inline dt-bootstrap no-footer">
																					<div class="row">
																						<div class="col-sm-6">
																							<div class="dataTables_length"
																								id="datatable_length">
																								<label></label>
																							</div>
																						</div>
																						<div class="col-sm-6">
																							<div id="datatable_filter"
																								class="dataTables_filter">
																								<label></label>
																							</div>
																						</div>
																					</div>
																					<div class="row">
																						<div class="col-sm-12">
																							<table id="datatable"
																								class="table table-striped table-bordered dataTable no-footer"
																								role="grid" aria-describedby="datatable_info">
																								<thead>
																									<tr role="row">
																										<th class="sorting_desc" tabindex="0"
																											aria-controls="datatable" rowspan="1"
																											colspan="1"
																											aria-label="Name: activate to sort column ascending"
																											style="width: 234px;" aria-sort="descending" id="desclist">접속일시</th>
																										<th class="sorting" tabindex="0"
																											aria-controls="datatable" rowspan="1"
																											colspan="1"
																											aria-label="Position: activate to sort column ascending"
																											style="width: 343px;">아이피</th>
																										<th class="sorting" tabindex="0"
																											aria-controls="datatable" rowspan="1"
																											colspan="1"
																											aria-label="Office: activate to sort column ascending"
																											style="width: 185px;">접속국가</th>
																										<th class="sorting" tabindex="0"
																											aria-controls="datatable" rowspan="1"
																											colspan="1"
																											aria-label="Office: activate to sort column ascending"
																											style="width: 185px;">접속 성공 여부</th>
																									</tr>
																								</thead>


																								<tbody>

																									<% for(IpInfo i : ipinfo){ %>																								
																									<tr>
																										<td> <%= i.getDate() %></td>
																										<td> <%= i.getIp() %></td>
																										<td> <%= i.getCountry() %></td>
																										<td> <%= i.getSof() %></td>
																									</tr>																					
																									<% } %>
																									

																								</tbody>
																							</table>
																						</div>
																					</div>
																					<div class="row">
																						<div class="col-sm-6">
																							<div class="dataTables_info" id="datatable_info"
																								role="status" aria-live="polite">
																								</a>
																								</li>
																								</ul>
																							</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="row">
																			<div class="col-sm-6">
																				<div class="dataTables_info" id="datatable_info"
																					role="status" aria-live="polite"></div>
																			</div>
																		</div>
																	</div>
																	<div class="row">
																		<div class="col-sm-6"></div>
																	</div>
																</div>
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
							<div class="tab-pane" id="profile-b1">
								<!-- Personal-Information -->
								<div class="panel panel-default panel-fill">
									<div class="panel-heading">
										<h3 class="panel-title">Edit Profile</h3>
									</div>
									<div class="panel-body">
										<form role="form">
											<div class="form-group">
												<label for="FullName">ㅈ</label> <input type="text"
													value="John Doe" id="FullName" class="form-control">
											</div>
											<div class="form-group">
												<label for="Email">Email</label> <input type="email"
													value="first.last@example.com" id="Email"
													class="form-control">
											</div>
											<div class="form-group">
												<label for="Username">Username</label> <input type="text"
													value="john" id="Username" class="form-control">
											</div>
											<div class="form-group">
												<label for="Password">Password</label> <input
													type="password" placeholder="6 - 15 Characters"
													id="Password" class="form-control">
											</div>
											<div class="form-group">
												<label for="RePassword">Re-Password</label> <input
													type="password" placeholder="6 - 15 Characters"
													id="RePassword" class="form-control">
											</div>
											<div class="form-group">
												<label for="AboutMe">About Me</label>
												<textarea style="height: 125px" id="AboutMe"
													class="form-control">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</textarea>
											</div>
											<button class="btn btn-primary waves-effect waves-light w-md"
												type="submit">Save</button>
										</form>

									</div>
								</div>
								<!-- Personal-Information -->
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
				</div>
				<!-- end footer -->

			</div>
			<!-- End #page-right-content -->

		</div>
		<!-- end .page-contentbar -->
	</div>
</body>
</html>