<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.model.vo.*"%>
    
<%
	
	User loginUser = (User)session.getAttribute("loginUser");
	
%>        
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

		<!-- jqury cdn -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		
        <meta charset="utf-8" />
        <title>유저 메인 페이지</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   
   <link rel='stylesheet' href='<%= request.getContextPath() %>/resources/Amain/custom_tools/css/front.customizer.css' type='text/css' media='all' />

   <link rel='stylesheet' href='<%= request.getContextPath() %>/resources/main/js/vendor/magnific/magnific-popup.css' type='text/css' media='all' />
   <link rel='stylesheet' href='<%= request.getContextPath() %>/resources/main/js/vendor/swiper/idangerous.swiper.css' type='text/css' media='all' />
   <link rel='stylesheet' href='<%= request.getContextPath() %>/resources/main/js/vendor/revslider/rs-plugin/css/settings.css' type='text/css' media='all' />
   <link rel='stylesheet' href='<%= request.getContextPath() %>/resources/main/css/woo/woocommerce-layout.css' type='text/css' media='all' />
   <link rel='stylesheet' href='<%= request.getContextPath() %>/resources/main/css/woo/woocommerce-smallscreen.css' type='text/css' media='only screen and (max-width: 768px)' />
   <link rel='stylesheet' href='<%= request.getContextPath() %>/resources/main/css/woo/woocommerce.css' type='text/css' media='all' />
   <link rel='stylesheet' href='<%= request.getContextPath() %>/resources/main/css/fontello/css/fontello.css' type='text/css' media='all' />
   <link rel='stylesheet' href='<%= request.getContextPath() %>/resources/main/css/style.css' type='text/css' media='all' />
   <link rel='stylesheet' href='<%= request.getContextPath() %>/resources/main/css/shortcodes.css' type='text/css' media='all' />
   <link rel='stylesheet' href='<%= request.getContextPath() %>/resources/main/css/core.animation.css' type='text/css' media='all' />
   <link rel='stylesheet' href='<%= request.getContextPath() %>/resources/main/css/woo/woo-style.css' type='text/css' media='all' />
   <link rel='stylesheet' href='<%= request.getContextPath() %>/resources/main/css/skin.css' type='text/css' media='all' />
   <style id='themerex-custom-style-inline-css' type='text/css'></style>
   <link rel='stylesheet' href='<%= request.getContextPath() %>/resources/main/css/responsive.css' type='text/css' media='all' />

</head>


<body class="archive body_style_wide body_filled article_style_stretch template_alternative top_panel_opacity_solid top_panel_above menu_right sidebar_hide">

	<div class="body_wrap">
		<div class="page_wrap">
			<div class="top_panel_fixed_wrap"></div>

			<header class="top_panel_wrap image_bg_7">
				<div class="menu_main_wrap logo_left with_text">
					<div class="menu_content_wrap clearfix">
						<div class="logo">
							<a href="<%= request.getContextPath() %>/views/mainPage/mainPage.jsp">
								  <img src="<%= request.getContextPath() %>/resources/main/images/11.png" width="200px" height="80px">								
							</a>
						</div>
				
						
						<a href="#" class="menu_main_responsive_button icon-menu-1"></a>
						<nav role="navigation" class="menu_main_nav_area">
								<ul id="menu_main" class="menu_main_nav">
									<li class="menu-item menu-item-has-children" id="boardMenu" >
										<a href="#">게시판</a>
										<ul class="sub-menu">
											<li class="menu-item">
												<a href="">전체게시글</a>
											</li>
											<li class="menu-item">
												<a href="">리뷰 게시글</a>
											</li>
											<li class="menu-item">
												<a href="">잡답 게시글</a>
											</li>
											<li class="menu-item">
												<a href="">자주 묻는 질문</a>
											</li>
									
										</ul>
									</li>
									<li class="menu-item menu-item-has-children" id="qnaMenu" >
										<a href="#">Q&A</a>
										<ul class="sub-menu">
											<li class="menu-item">
												<a href="">Q&A작성글</a>
											</li>
											<li class="menu-item">
												<a href="">회원문의</a>
											</li>
											</ul>
	
											<li class="menu-item menu-item-has-children" id="userMenu" hidden>
												<a href="#">마이페이지</a>
												<ul class="sub-menu">
													<li class="menu-item">
														<a href="">개인정보수정</a>
													</li>
													<li class="menu-item">
														<a href="">이용내역</a>
													</li>
													<li class="menu-item">
														<a href="">로그인관리</a>
													</li>
													<li class="menu-item">
														<a href="">리뷰및메모</a>
													</li>
													</ul>	
													<li class="menu-item menu-item-has-children" id="adminMenu" hidden>
														<a href="<%=request.getContextPath()%>/main.li">관리자페이지</a>
														<ul class="sub-menu">
															<li class="menu-item">
																<a href="<%=request.getContextPath()%>/latestList.li">예약관리</a>
															</li>
															<li class="menu-item">
																<a href="<%=request.getContextPath()%>/userGrade.li">회원등급관리</a>
															</li>
															<li class="menu-item">
																<a href="<%= request.getContextPath() %>/views/sales/salesTotalView.jsp">매출내역확인</a>
															</li>
															<li class="menu-item">
																<a href="<%=request.getContextPath()%>/campList.cl">사업장관리</a>
															</li>		
																</ul>
															<li class="menu-item menu-item-has-children" id="businessMenu" hidden>
																<a href="#">사업자관리페이지</a>
																<ul class="sub-menu">
																	<li class="menu-item">
																		<a href="">예약내역</a>
																	</li>
																	<li class="menu-item">
																		<a href="">매출내역</a>
																	</li>
																	<li class="menu-item">
																		<a href="">정보등록/수정</a>
																	</li>
																	<li class="menu-item">
																		<a href="">문의답변</a>
																	</li>											
																	</ul>
                        <li class="menu-item menu-item-has-children" id="loginMenu" hidden>
                                       <a href="<%= request.getContextPath() %>/views/user/login.jsp">로그인</a>
                                       <li class="menu-item menu-item-has-children" id="logoutMenu"   hidden>
                                       <a href="<%= request.getContextPath() %>/logout.user" >로그아웃</a>
                        
                                                        </nav>

                                                        


                  </header>
                                <br>
                                <br>
                                
                              <div class="page_content_wrap container">
                                <div class="content">
                
                                    <section class="">
                                        <div class="">
                                            <div class="isotope_filters">
                                                <a href="#" data-filter="*" class="isotope_filters_button active">전체</a>
                                                <a href="#" data-filter=".flt_138" class="isotope_filters_button">바다</a>
                                                <a href="#" data-filter=".flt_32" class="isotope_filters_button">강</a>
                                                <a href="#" data-filter=".flt_36" class="isotope_filters_button">산</a>
                                                <a href="#" data-filter=".flt_137" class="isotope_filters_button">기타</a>
                                            </div>
                                            <div class="isotope_wrap masonry" data-columns="3">
                                                <div class="isotope_item isotope_item_classic isotope_item_classic_3 isotope_column_3 flt_32">
                                                    <article class="post_item post_item_classic post_item_classic_3 post_format_standard odd">
                                                        <div class="post_featured">
                                                            <div class="post_thumb">
                                                                <img alt="main_jjin" src="<%= request.getContextPath() %>/resources/main/images/005.jpg">
                                                                <div class="hover_wrap">
                                                                    <div class="link_wrap">
                                                                        <a class="hover_link icon-right-open" href="<%= request.getContextPath() %>/checkFavorite?code=<%= 1 %>">상세보기</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="post_content isotope_item_content">
                                                            <h4 class="post_title">
                                                            <a href="#">제주나라 캠프장</a>
                                                            </h4>
                                                            <div class="tags_info">
                                                                <a href="#">25,000</a>
                                                            </div>
                                                            <div class="post_descr">
                                                                <p>경치가 좋은...</p>
                                                            </div>
                                                        </div>
                                                    </article>
                                                </div>
                                                <div class="isotope_item isotope_item_classic isotope_item_classic_3 isotope_column_3 flt_36">
                                                    <article class="post_item post_item_classic post_item_classic_3 post_format_standard even">
                                                        <div class="post_featured">
                                                            <div class="post_thumb">
                                                                <img alt="산-1"  src="<%= request.getContextPath() %>/resources/main/images/003.jpg">
                                                                <div class="hover_wrap">
                                                                    <div class="link_wrap">
                                                                         <a class="hover_link icon-right-open" href="<%= request.getContextPath() %>/checkFavorite?code=<%= 2 %>">상세보기</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="post_content isotope_item_content">
                                                            <h4 class="post_title">
                                                            <a href="#">가평 킹 캠프장</a>
                                                            </h4>
                                                            <div class="tags_info">
                                                                <a href="#">30,000</a>
                                                            </div>
                                                            <div class="post_descr">
                                                                <p>경치가 좋은....</p>
                                                            </div>
                                                        </div>
                                                    </article>
                                                </div>
                                                <div class="isotope_item isotope_item_classic isotope_item_classic_3 isotope_column_3 flt_32">
                                                    <article class="post_item post_item_classic post_item_classic_3 post_format_standard odd">
                                                        <div class="post_featured">
                                                            <div class="post_thumb">
                                                                <img alt="강-2"  src="<%= request.getContextPath() %>/resources/main/images/007.jpg">
                                                                <div class="hover_wrap">
                                                                    <div class="link_wrap">
                                                                         <a class="hover_link icon-right-open" href="<%= request.getContextPath() %>/checkFavorite?code=<%= 3 %>">상세보기</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="post_content isotope_item_content">
                                                            <h4 class="post_title">
                                                            <a href="#">수원 캠프장</a>
                                                            </h4>
                                                            <div class="tags_info">
                                                                <a href="#">15,000</a>
                                                            </div>
                                                            <div class="post_descr">
                                                                <p>수심이 깊은...</p>
                                                            </div>
                                                        </div>
                                                    </article>
                                                </div>
                                                <div class="isotope_item isotope_item_classic isotope_item_classic_3 isotope_column_3 flt_36">
                                                    <article class="post_item post_item_classic post_item_classic_3 post_format_standard even">
                                                        <div class="post_featured">
                                                            <div class="post_thumb">
                                                                <img alt="산-2" src="<%= request.getContextPath() %>/resources/main/images/004.jpg">
                                                                <div class="hover_wrap">
                                                                    <div class="link_wrap">
                                                                         <a class="hover_link icon-right-open" href="<%= request.getContextPath() %>/checkFavorite?code=<%= 4 %>">상세보기</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="post_content isotope_item_content">
                                                            <h4 class="post_title">
                                                            <a href="#">여주 캠프장</a>
                                                            </h4>
                                                            <div class="tags_info">
                                                                <a href="#">25,000</a>
                                                            </div>
                                                            <div class="post_descr">
                                                                <p>경치가 좋은...</p>
                                                            </div>
                                                        </div>
                                                    </article>
                                                </div>
                                                <div class="isotope_item isotope_item_classic isotope_item_classic_3 isotope_column_3 flt_137">
                                                    <article class="post_item post_item_classic post_item_classic_3 post_format_standard odd">
                                                        <div class="post_featured">
                                                            <div class="post_thumb">
                                                                <img alt="기타-1" src="<%= request.getContextPath() %>/resources/main/images/000.jpg">
                                                                <div class="hover_wrap">
                                                                    <div class="link_wrap">
                                                                         <a class="hover_link icon-right-open" href="<%= request.getContextPath() %>/checkFavorite?code=<%= 5 %>">상세보기</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="post_content isotope_item_content">
                                                            <h4 class="post_title">
                                                            <a href="#">부산 캠프장</a>
                                                            </h4>
                                                            <div class="tags_info">
                                                                <a href="#">50,000</a>
                                                            </div>
                                                            <div class="post_descr">
                                                                <p>존나더움...</p>
                                                            </div>
                                                        </div>
                                                    </article>
                                                </div>
                                                <div class="isotope_item isotope_item_classic isotope_item_classic_3 isotope_column_3 flt_138">
                                                    <article class="post_item post_item_classic post_item_classic_3 post_format_standard even">
                                                        <div class="post_featured">
                                                            <div class="post_thumb">
                                                                <img alt="바다-1"  src="<%= request.getContextPath() %>/resources/main/images/008.jpg">
                                                                <div class="hover_wrap">
                                                                    <div class="link_wrap">
                                                                         <a class="hover_link icon-right-open" href="<%= request.getContextPath() %>/checkFavorite?code=<%= 6 %>">상세보기</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="post_content isotope_item_content">
                                                            <h4 class="post_title">
                                                            <a href="#">서울 캠프장</a>
                                                            </h4>
                                                            <div class="tags_info">
                                                                <a href="#">10,000</a>
                                                            </div>
                                                            <div class="post_descr">
                                                                <p>빠지면 죽습니다...</p>
                                                            </div>
                                                        </div>
                                                    </article>
                                                </div>
                                                <div class="isotope_item isotope_item_classic isotope_item_classic_3 isotope_column_3 flt_32">
                                                    <article class="post_item post_item_classic post_item_classic_3 post_format_standard odd">
                                                        <div class="post_featured">
                                                            <div class="post_thumb">
                                                                <img alt="강-3"  src="<%= request.getContextPath() %>/resources/main/images/001.jpg">
                                                                <div class="hover_wrap">
                                                                    <div class="link_wrap">
                                                                         <a class="hover_link icon-right-open" href="<%= request.getContextPath() %>/checkFavorite?code=<%= 7 %>">상세보기</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="post_content isotope_item_content">
                                                            <h4 class="post_title">
                                                            <a href="#">용인</a>
                                                            </h4>
                                                            <div class="tags_info">
                                                                <a href="#">40,000</a>
                                                            </div>
                                                            <div class="post_descr">
                                                                <p>수심이 깊은...</p>
                                                            </div>
                                                        </div>
                                                    </article>
                                                </div>
                                                <div class="isotope_item isotope_item_classic isotope_item_classic_3 isotope_column_3 flt_137">
                                                    <article class="post_item post_item_classic post_item_classic_3 post_format_gallery even last">
                                                        <div class="post_featured">
                                                            <div id="sc_slider_1626763998" class="sc_slider sc_slider_swiper swiper-slider-container sc_slider_controls sc_slider_pagination" data-old-width="1150" data-old-height="647" data-interval="8994">
                                                                <div class="slides swiper-wrapper">
                                                                    <div class="swiper-slide">
                                                                        <img alt="0"  src="<%= request.getContextPath() %>/resources/main/images/000.jpg">
                                                                    </div>
                                                                    <div class="swiper-slide">
                                                                        <img alt="1"  src="<%= request.getContextPath() %>/resources/main/images/001.jpg">
                                                                    </div>
                                                                    <div class="swiper-slide">
                                                                        <img alt="2"  src="<%= request.getContextPath() %>/resources/main/images/002.JPG">
                                                                    </div>
                                                                </div>
                                                                <div class="sc_slider_controls_wrap">
                                                                    <a class="sc_slider_prev" href="#"></a>
                                                                    <a class="sc_slider_next" href="#"></a>
                                                                </div>
                                                                <div class="sc_slider_pagination_wrap"></div>
                                                            </div>
                                                        </div>
                                                        <div class="post_content isotope_item_content">
                                                            <h4 class="post_title">
                                                            <a href="#">인천</a>
                                                            </h4>
                                                            <div class="tags_info">
                                                                <a href="#">25,000</a>
                                                            </div>
                                                            <div class="post_descr">
                                                                <p>모르겠음</p>
                                                            </div>
                                                        </div>
                                                    </article>
                                                </div>
                                                <div class="isotope_item isotope_item_classic isotope_item_classic_3 isotope_column_3 flt_36">
                                                    <article class="post_item post_item_classic post_item_classic_3 post_format_standard odd last">
                                                        <div class="post_featured">
                                                            <div class="post_thumb">
                                                                <img alt="산-3"  src="<%= request.getContextPath() %>/resources/main/images/002.JPG">
                                                                <div class="hover_wrap">
                                                                    <div class="link_wrap">
                                                                         <a class="hover_link icon-right-open" href="<%= request.getContextPath() %>/checkFavorite?code=<%= 9 %>">상세보기</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="post_content isotope_item_content">
                                                            <h4 class="post_title">
                                                            <a href="#">대전</a>
                                                            </h4>
                                                            <div class="tags_info">
                                                                <a href="#">20,000</a>
                                                            </div>
                                                            <div class="post_descr">
                                                                <p>경치가 좋은...</p>
                                                            </div>
                                                        </div>
                                                    </article>
                                                </div>
                                            </div>
                                            <div id="viewmore" class="pagination_wrap pagination_viewmore">
                                                <a href="#" id="viewmore_link" class="sc_button sc_button_style_filled1 sc_button_bg_custom sc_button_size_large theme_button viewmore_button">
                                                    <span class="icon-spin3 animate-spin viewmore_loading">
                                                    </span>
                                                    <span class="viewmore_text_1">더찾아보기</span>
                                                    <span class="viewmore_text_2">Loading ...</span>
                                                </a>
                                                <span class="viewmore_loader">
                                                </span>
                                            </div>
                                        </div>
                                    </section>
                
                                </div>
                            </div>
                        
    <script>
         							
         						
         						
										<% if(loginUser==null){ %>
         										$("#loginMenu").show();										
         								<% }else{ %>
         										<% if(loginUser.getUserType().equals("U")){ %>	
         										$("#userMenu").show();	 
         										$("#logoutMenu").show();	
         										<% }else if(loginUser.getUserType().equals("A")){ %>
         										$("#adminMenu").show();	 
         										$("#logoutMenu").show();
         										<%  }else if(loginUser.getUserType().equals("B")){%>
         										$("#businessMenu").show();	 
         										$("#logoutMenu").show();
         										
         										<%  }%>
         								<%  }%>
         						</script>                    
                        
                        
                        
                            
                            
   <script type='text/javascript' src='<%= request.getContextPath() %>/resources/main/js/vendor/jquery-1.11.3.min.js'></script>
   <script type='text/javascript' src='<%= request.getContextPath() %>/resources/main/js/vendor/jquery-migrate.min.js'></script>

   <script type='text/javascript' src='<%= request.getContextPath() %>/resources/main/js/vendor/revslider/rs-plugin/js/jquery.themepunch.tools.min.js'></script>
   <script type='text/javascript' src='<%= request.getContextPath() %>/resources/main/js/vendor/revslider/rs-plugin/js/jquery.themepunch.revolution.min.js'></script>

   <script type='text/javascript' src='<%= request.getContextPath() %>/resources/main/js/vendor/__packed.js'></script>
   <script type='text/javascript' src='<%= request.getContextPath() %>/resources/main/js/vendor/picker/picker.js'></script>
   <script type='text/javascript' src='<%= request.getContextPath() %>/resources/main/js/vendor/picker/picker.date.js'></script>
   <script type='text/javascript' src='<%= request.getContextPath() %>/resources/main/js/vendor/picker/picker.time.js'></script>
   <script type='text/javascript' src='<%= request.getContextPath() %>/resources/main/js/vendor/picker/picker.start.js'></script>

   <script type='text/javascript' src='<%= request.getContextPath() %>/resources/main/js/custom/core.utils.min.js'></script>
   <script type='text/javascript' src='<%= request.getContextPath() %>/resources/main/js/custom/core.init.min.js'></script>
   <script type='text/javascript' src='<%= request.getContextPath() %>/resources/main/js/custom/shortcodes.min.js'></script>

   <script type='text/javascript' src='<%= request.getContextPath() %>/resources/main/js/custom/_main.js'></script>

   <!--<script type='text/javascript' src='custom_tools/js/front.customizer.js'></script>-->
   <!--<script type='text/javascript' src='custom_tools/js/skin.customizer.js'></script>-->


</body>
</html>
