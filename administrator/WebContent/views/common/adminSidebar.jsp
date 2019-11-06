<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 아이콘 cdn -->
		<script src="https://kit.fontawesome.com/ec9c0ffb05.js" crossorigin="anonymous"></script>
</head>
<body>
<!--left navigation start-->
			<aside class="sidebar-navigation">
				<div class="scrollbar-wrapper">
					<div>
						<button type="button"
							class="button-menu-mobile btn-mobile-view visible-xs visible-sm">
							<i class="mdi mdi-close"></i>
						</button>
						<!-- User Detail box -->
						<!--- End User Detail box -->

						<!-- Left Menu Start -->
						<ul class="metisMenu nav" id="side-menu">
							<li><a href="<%=request.getContextPath()%>/main.li"><i
									class="ti-home"></i> 관리자 메인 </a></li>

									
							<li><a href="<%=request.getContextPath()%>/latestList.li"><i
									class="mdi mdi-calendar-clock"></i> 예약관리 </a></li>		

							

							<li><a href="<%=request.getContextPath()%>/userGrade.li"><i
									class="mdi mdi-account"></i> 회원등급관리 </a></li>

							

							<li class=""><a href="javascript: void(0);"
								aria-expanded="false"><i class="text fas fa-won-sign"></i> 매출내역확인 <span
									class="fa arrow"></span></a>
								<ul class="nav-second-level nav collapse" aria-expanded="false"
									style="height: 0px;">
									<li><a href="<%= request.getContextPath() %>/views/sales/salesTotalView.jsp">전체 매출내역</a></li>
									<li><a href="<%=request.getContextPath()%>/salesList.sl">사업장별 매출내역</a></li>
								</ul></li>


							<li class=""><a href="javascript: void(0);"
								aria-expanded="false"><i class="ti-files"></i> 사업장 관리 <span
									class="fa arrow"></span></a>
								<ul class="nav-second-level nav collapse" aria-expanded="false"
									style="height: 0px;">
									<li><a href="<%=request.getContextPath()%>/campList.cl">사업장 승인하기</a></li>
									<li><a href="<%=request.getContextPath()%>/campDetail.li">승인 사업장 보기</a></li>
								</ul></li>

							<li><a href="<%=request.getContextPath()%>/views/mail/MailSendView.jsp"><i
									class="mdi mdi-account"></i> 광고메일전송 </a></li>
						</ul>
					</div>
				</div>
				<!--Scrollbar wrapper-->
			</aside>
			<!--left navigation end-->
</body>
</html>