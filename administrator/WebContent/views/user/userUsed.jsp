<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.model.vo.*"%>
<%
	

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
                                        <div class="m-b-20">
                                            <h4>사용내역</h4>
                                            <p class="text-muted font-13 m-b-20">
                                                	현재 캠핑장 사용내역에 대한 정보를 제공합니다
                                            </p>

                                            <table class="table m-0">
											<!-- 결제일시 예약번호  예약일자 결제금액 처리상태 승인 -->
                                                <thead>
                                                    <tr>
                                                        <th> </th>
                                                        <th>예약번호</th>
                                                        <th>캠핑장명</th>
                                                        <th>예약일자</th>
                                                        <th>결제일자</th>
                                                        <th>결제금액</th>
                                                        <th>상태</th>
                                                        <th>확인/취소</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>1332</td>
                                                        <td>고덕산캠핑장</td>
                                                        <td>2019-12-25</td>
                                                        <td>2019-10-25 17:25</td>
                                                        <td>200,000</td>
                                                        <td>결제완료</td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2</th>
                                                        <td>1335</td>
                                                        <td>관악산캠핑장</td>
                                                        <td>2019-12-26</td>
                                                        <td>2019-10-25 18:25</td>
                                                        <td>200,000</td>
                                                        <td>결제완료</td>
                                                        <td></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                    </div>
						</div>
                        <!--end row -->


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