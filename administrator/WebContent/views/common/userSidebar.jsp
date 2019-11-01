<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.model.vo.*"%>
<%

	User loginUser = (User)session.getAttribute("loginUser");

%>    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user side bar</title>

</head>
<body>

	                <aside class="sidebar-navigation">
                    <div class="scrollbar-wrapper">
                        <div>
                            <button type="button" class="button-menu-mobile btn-mobile-view visible-xs visible-sm">
                                <i class="mdi mdi-close"></i>
                            </button>
                            <!-- User Detail box -->
                            <div class="user-details">
                                <div class="pull-left">
                                    <img src="<%= request.getContextPath() %>/resources/assets/images/users/avatar-1.jpg" alt="" class="thumb-md img-circle">
                                </div>
                                <div class="user-info">
                                    <a href="#"><%= loginUser.getUserName() %>님</a>
                                    <p class="text-muted m-0"></p>
                                </div>
                            </div>
                            <!--- End User Detail box -->

                            <!-- Left Menu Start -->
                            <ul class="metisMenu nav" id="side-menu">
                                <li><a href="<%= request.getContextPath() %>/views/user/userMain.jsp"><i class="ti-home"></i> 회원 메인 메뉴 </a></li>

                                <li><a href="<%= request.getContextPath() %>/views/user/userUpdate.jsp"> <i class="ti-paint-bucket"></i> 개인 정보 수정 </a></li>

                                <li>
                                    <a href="<%= request.getContextPath() %>/views/user/userUsed.jsp"><i class="ti-paint-bucket"></i> 이용내역</span></a>

                                </li>
                                
                                <li><a href="<%= request.getContextPath() %>/select.favorite"><i class="ti-spray"></i> 나의 관심 캠핑장</a></li>

                                <li><a href="<%= request.getContextPath() %>/ipinfo.user"><i
									class="ti-spray"></i> 로그인 관리 </a></li>
                                
                               

                                <li>
                                    <a href="javascript: void(0);" aria-expanded="true"><i class="ti-pencil-alt"></i> 리뷰 및 메모</span></a>
                                </li>

     
                            </ul>
                        </div>
                    </div><!--Scrollbar wrapper-->
                </aside>




</body>
</html>