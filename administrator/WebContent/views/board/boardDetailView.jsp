<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.*, java.util.ArrayList"%>

<%
	Board b = (Board)request.getAttribute("b");
	ArrayList<Comment> cList = (ArrayList<Comment>)request.getAttribute("cList");

	String title = b.getbTitle();
	String nextTitle = (String)request.getAttribute("nextTitle");
	String preTitle = (String)request.getAttribute("preTitle");
	
	int bTag = b.getbTag();
	int bNo = b.getbNo();
	int userNo = b.getUserNo();
	
	switch (b.getbRegion()){
	case 1:
		title = "[서울] " + b.getbTitle();
		break;
	case 2:
		title = "[경기] " + b.getbTitle();
		break;
	case 3:
		title = "[강원] " + b.getbTitle();
		break;
	case 4:
		title = "[경상] " + b.getbTitle();
		break;
	case 5:
		title = "[전라] " + b.getbTitle();
		break;
	case 6:
		title = "[충청] " + b.getbTitle();
		break;
	}

	String msg = (String)session.getAttribute("msg");
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		<!-- jqury cdn -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		
		<script>
			var msg = "<%= msg %>";
			
			$(function(){
				if(msg != "null") {
					alert(msg);
					<% session.removeAttribute("msg"); %>
				}
			})
			
		</script>
		
	
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

        <style>
        
            .container{
                /* border: 1px solid blue; */
            }

            header{
                width: 100%;
                /* border: 1px solid red; */
            }
            
            #contentArea{
                /* border: 1px solid purple; */

                margin: 20px;
                padding: 10px;
            }

            .contentText{
                white-space: pre-line;
            }




            #insert_wrapper{
                height: 170px;
                
                margin: 20px auto;

                /* border: 1px solid rgb(197, 197, 243); */
            }

            #commentInsertArea{
                width: 100%;
                height: 100%;

                padding: 5px 0;
            }
            
            #memberInfo{
                float: left;
                position: relative;
                width: 18%;
                height: 100%;

                padding: 0 15px;
            }

            #memberIdPwd{
                float: left;
                width: 100%;
                height: 50%;
            }

            #memberIdPwd input{
                width: 85%;
                height: 40%;
                margin-top: 5px;
                margin-left: 3px;
            }

            #commentContentArea{                
                float: left;
                width: 70%;
                height: 100%;
                margin: auto;

                /* border: 2px solid purple; */
            }

            #insertBtnArea{
                float: left;
                text-align: center;
                width: 12%;
                height: 100%;

                padding: 30px;
            }
            
            #commentContent{
                display: inline-block;
                width: 100%;
                height: 100%;
            }

            p{
                display: inline-block;
                width: 100%;
                height: 50%;
                margin-top: 5%;

                font-size: 5px;
            }
            
            .btnArea{
                display: inline-block;
                padding: 55px 0;
                width: 12%;
                text-align: center;
            }
 
            .submitBtn{
                width: 80%;
                height: 50px;

                background-color: gainsboro;
                border-radius: 5px;
                border: 1px solid rgb(197, 197, 243);

                color: darkblue;
            }

            
            .commentArea{
                
                margin: 5px auto;
                /* border: 1px solid purple;  */
            }

            table{
                width: 100%;
                margin: 20px 0;
                border: 1px solid rgba(128, 128, 128, 0.671);
            }

            .userName{
                width: 18%;
                text-align: center;
            }

            .commentContent{
                width: 70%;
                /* border: 2px solid purple; */
            }

            .btns{
                width: 12%;
                text-align: center;
            }

            div[class$="wrapper"]{
                padding: 30px;
            }


            .btns button{
                width: 80%;
                height: 50px;

                background-color: gainsboro;
                border-radius: 5px;
                border: 1px solid rgb(197, 197, 243);

                color: darkblue;
            }

            .fontBorder{
                font-weight: bolder;
            }

            .contentText{
                white-space: pre-line;
            }




            #titleArea{
                display: inline-block;
            }

            #memInfo{
                float: left;
                line-height: 250%;
                width: 50%;
                margin: 0 10px;
                font-size: 15px;
            }

            #boardInfo{
                float: right;
                width: 15%;
            }

            #boardInfo div{
                float: right;
                margin: 0 15px;
            }




            #controll-wrapper{
                height: 100px;
            }

            #controllArea{
                width: 80%;
                height: 100%;
                margin: 0 auto;

                position: relative;

            }

            #btnDiv{
                display: inline-block;
                width: 10%;
                height: 100%;

                position: absolute;
                top: 0;
                left: 0;
                
                padding: 10px;

            }

            #deleteBtn{
                display: inline-block;
                width: 10%;
                height: 100%;

                position: absolute;
                top: 0;
                left: 80%;
                
                padding: 10px;
            }

            #btnDiv button{
                width: 100%;
                height: 100%;
            }

            #deleteBtn button{
                width: 100%;
                height: 100%;
            }


            #listDiv{
                display: inline-block;
                width: 80%;
                height: 100%;
                
                position: absolute;
                left: 10%;

            }
 
            #listDiv ul{
                display: inline-block;
                list-style-type: none;
                width: 70%;
                height: 100%;
                
                margin: 0;
                padding: 0;
            }

            #listDiv li{
                height: 50%;

                padding: 15px;
                /* margin: 10px; */
            }



        </style>

</head>
<body>

<div id="page-wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">

                <!-- LOGO -->
                <div class="topbar-left">
                    <div class="">
                        <a href="index.html" class="logo">
                            <img src="<%= request.getContextPath() %>/resources/assets/images/logo.png" alt="logo" class="logo-lg">
                            <img src="<%= request.getContextPath() %>/resources/assets/images/logo_sm.png" alt="logo" class="logo-sm hidden">
                        </a>
                    </div>
                </div>

                <!-- Top navbar -->
                <div class="navbar navbar-default" role="navigation">
                    <div class="container">
                        <div class="">

                            <!-- Mobile menu button -->
                            <div class="pull-left">
                                <button type="button" class="button-menu-mobile visible-xs visible-sm">
                                    <i class="fa fa-bars"></i>
                                </button>
                                <span class="clearfix"></span>
                            </div>

                            <!-- Top nav left menu -->
                            <ul class="nav navbar-nav hidden-sm hidden-xs top-navbar-items">
                                <li><a href="#">About</a></li>
                                <li><a href="#">Help</a></li>
                                <li><a href="#">Contact</a></li>
                            </ul>

                            <!-- Top nav Right menu -->
                            <ul class="nav navbar-nav navbar-right top-navbar-items-right pull-right">
                                <li class="hidden-xs">
                                    <form role="search" class="navbar-left app-search pull-left">
                                         <input type="text" placeholder="Search..." class="form-control">
                                         <a href=""><i class="fa fa-search"></i></a>
                                    </form>
                                </li>
                                <li class="dropdown top-menu-item-xs">
                                    <a href="#" data-target="#" class="dropdown-toggle menu-right-item" data-toggle="dropdown" aria-expanded="true">
                                        <i class="mdi mdi-bell"></i> <span class="label label-danger">3</span>
                                    </a>
                                    <ul class="dropdown-menu p-0 dropdown-menu-lg">
                                        <!--<li class="notifi-title"><span class="label label-default pull-right">New 3</span>Notification</li>-->
                                        <li class="list-group notification-list" style="height: 267px;">
                                           <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 267px;"><div class="slimscroll" style="overflow: hidden; width: auto; height: 267px;">
                                               <!-- list item-->
                                               <a href="javascript:void(0);" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-diamond bg-primary"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">A new order has been placed A new order has been placed</h5>
                                                        <p class="m-0">
                                                            <small>There are new settings available</small>
                                                        </p>
                                                     </div>
                                                  </div>
                                               </a>

                                               <!-- list item-->
                                               <a href="javascript:void(0);" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-cog bg-warning"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">New settings</h5>
                                                        <p class="m-0">
                                                            <small>There are new settings available</small>
                                                        </p>
                                                     </div>
                                                  </div>
                                               </a>

                                               <!-- list item-->
                                               <a href="javascript:void(0);" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-bell-o bg-custom"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">Updates</h5>
                                                        <p class="m-0">
                                                            <small>There are <span class="text-primary font-600">2</span> new updates available</small>
                                                        </p>
                                                     </div>
                                                  </div>
                                               </a>

                                               <!-- list item-->
                                               <a href="javascript:void(0);" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-user-plus bg-danger"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">New user registered</h5>
                                                        <p class="m-0">
                                                            <small>You have 10 unread messages</small>
                                                        </p>
                                                     </div>
                                                  </div>
                                               </a>

                                                <!-- list item-->
                                               <a href="javascript:void(0);" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-diamond bg-primary"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">A new order has been placed A new order has been placed</h5>
                                                        <p class="m-0">
                                                            <small>There are new settings available</small>
                                                        </p>
                                                     </div>
                                                  </div>
                                               </a>

                                               <!-- list item-->
                                               <a href="javascript:void(0);" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-cog bg-warning"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">New settings</h5>
                                                        <p class="m-0">
                                                            <small>There are new settings available</small>
                                                        </p>
                                                     </div>
                                                  </div>
                                               </a>
                                           </div><div class="slimScrollBar" style="background: rgb(158, 165, 171); width: 5px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div><div class="slimScrollRail" style="width: 5px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
                                        </li>
                                        <!--<li>-->
                                            <!--<a href="javascript:void(0);" class="list-group-item text-right">-->
                                                <!--<small class="font-600">See all notifications</small>-->
                                            <!--</a>-->
                                        <!--</li>-->
                                    </ul>
                                </li>

                                <li class="dropdown top-menu-item-xs">
                                    <a href="" class="dropdown-toggle menu-right-item profile" data-toggle="dropdown" aria-expanded="true"><img src="<%= request.getContextPath() %>/resources/assets/images/users/avatar-1.jpg" alt="user-img" class="img-circle"> </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0)"><i class="ti-user m-r-10"></i> Profile</a></li>
                                        <li><a href="javascript:void(0)"><i class="ti-settings m-r-10"></i> Settings</a></li>
                                        <li><a href="javascript:void(0)"><i class="ti-lock m-r-10"></i> Lock screen</a></li>
                                        <li class="divider"></li>
                                        <li><a href="javascript:void(0)"><i class="ti-power-off m-r-10"></i> Logout</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div> <!-- end container -->
                </div> <!-- end navbar -->
            </div>
            <!-- Top Bar End -->


            <!-- Page content start -->
            <div class="page-contentbar">

                <!--left navigation start-->
                <aside class="sidebar-navigation">
                    <div class="scrollbar-wrapper">
                        <div>
                            <button type="button" class="button-menu-mobile btn-mobile-view visible-xs visible-sm">
                                <i class="mdi mdi-close"></i>
                            </button>
                            <!-- User Detail box -->
            <!-- 게시판 메뉴에선 사용하지 않는 div -->
                            <!-- <div class="user-details">
                                <div class="pull-left">
                                    <img src="<%= request.getContextPath() %>/resources/assets/images/users/avatar-1.jpg" alt="" class="thumb-md img-circle">
                                </div>
                                <div class="user-info">
                                    <a href="#">Stanley Jones</a>
                                    <p class="text-muted m-0">Administrator</p>
                                </div>
                            </div> -->
                            <!--- End User Detail box -->

                            <!-- Left Menu Start -->
                            <ul class="metisMenu nav" id="side-menu">
                                <li><a href="<%= request.getContextPath() %>/list.bo?b_tag=0"><i class="fa fa-wpforms"></i> 공지사항 </a></li>

                                <li>
                                    <a href="<%= request.getContextPath() %>/list.bo?b_tag=1" aria-expanded="true"><i class="mdi mdi-information"></i> 정보 공유 </a>
                                    <ul class="nav-second-level nav collapse" aria-expanded="false">
                                        <li><a href="#">서울</a></li>
                                        <li><a href="#">경기도</a></li>
                                        <li><a href="#">강원도</a></li>
                                        <li><a href="#">경상도</a></li>
                                        <li><a href="#">전라도</a></li>
                                        <li><a href="#">충청도</a></li>
                            
                                    </ul>
                                </li>

                                <li><a href="<%= request.getContextPath() %>/list.bo?b_tag=2"><i class="mdi mdi-message-processing"></i> 잡담(자유) </a></li>
                            </ul>
                        </div>
                    </div><!--Scrollbar wrapper-->
                </aside>
                <!--left navigation end-->

                <!-- START PAGE CONTENT -->
                <div id="page-right-content">

                    <div class="container">                                
                        <header id="titleArea">
                            <h3><%= title %></h3>
 
                            <div id="memInfo" class="left-box fontBorder">
                                <span>
                                <%= b.getbWriter() %>
                                <% if(userNo == 9999) { %>
                                	<sub>(비회원)</sub>
                                <% } %>
                                
                                </span>
                            </div>
                            <div id="boardInfo" class="right-box fontBorder">
                                <div>조회수 : <%= b.getbCount() %></div>
                                <br>
                                <div><%= b.getUpdateDate() %></div>
                            </div>
                        </header>
                        <hr><br>
                        <div id="contentArea" class="contentText"><%= b.getbContent() %>
                        </div>

                        <br><hr>
                        <div id="controll-wrapper">
                            <div id="controllArea">
                                <div id="btnDiv" class="fontBorder btns">
                                    <button id="toMainBtn" onclick="location.href='<%= request.getContextPath() %>/list.bo?b_tag=<%= bTag %>'">목록으로</button>
                                </div>

                                <div id="listDiv">
                                        <ul>
                                            <li>
                                                <span><i class="ti-angle-up">  <%= nextTitle %></i></span>
                                            </li>
                                            <li>
                                                <span><i class="ti-angle-down">  <%= preTitle %></i></span>
                                            </li>
                                        </ul>
                                </div>

                                <div id="deleteBtn" class="fontBorder">
                                	<% if(userNo == 9999) { %>
                                	
									<!-- Button trigger modal -->
									<button type="button" class="btn btn-primary fontBorder" data-toggle="modal" data-target="#exampleModal">
									  삭제
									</button>
									
                                    <% }else { %>
                                    	
                                    
                                    
                                    
                                    
                                    
                                    <% } %>
                                </div>
                                
                            </div>     
                        </div>
						
						
						<!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">게시글 삭제</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      
						      <form method="post" action="<%= request.getContextPath() %>/pwdCheck.bo" onsubmit="return checkPwd();">
							      <div class="modal-body">
							            <label for="exampleFormControlInput1">게시글을 삭제합니다.</label>
    									<input type="password" class="form-control" name="pwd" id="exampleFormControlInput1" placeholder="임시 비밀번호를 입력하세요">
    									
							            <input type="hidden" name="bNo" value="<%= bNo %>">
							            <input type="hidden" name="bTag" value="<%= bTag %>">
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
							        <button type="input" class="btn btn-primary">삭제하기</button>
							      </div>
						      </form>
						      
						    </div>
						  </div>
						</div>
						

                        <div class="commentArea" id="commentArea">
                        	<% if(!cList.isEmpty()) { %>
                        		<hr>
                        		
                        		<% for(Comment c : cList) { %>
                        		
	                            <table id="commentTable">
	                                <tr class="commentTr">
	                                    <td class="userName">
	                                        <div class="user_wrapper fontBorder">
	                                            <%= c.getcWriter() %>
	                                            <% if(c.getUserNo() == 9999) { %>
	                                            	<sub>(비회원)</sub>
	                                            <% } %>
	                                        </div>
	                                    </td>
	                                    <td class="commentContent">
	                                        <div class="text_wrapper">
	                                            <span class="contentText"><%= c.getcContent() %>
												</span>
	                                        </div>
	                                    </td>
	                                    <td class="btns">
	                                            <button class="cancelBtn fontBorder" type="reset">삭제</button>
	                                    </td>
	                                </tr>
	                            </table>
	                            
                        		<% } %>
                        	<% } %>
                        
                        </div>

                        <hr>

                        <div id="insert_wrapper">
                            <div id="commentInsertArea">
                                <div id="memberInfo">
                                    <div id="memberIdPwd">
                                        <input type="text" id="memberId" placeholder="임시 Id">
                                        <input type="text" id="memberPwd" placeholder="임시 비밀번호">
                                    </div>
                                    <p>
                                        비회원 작성 시, 비밀번호를 분실하면 댓글을 삭제 할 수 없습니다.
                                        <br><br>
                                        <a href="#" style="font-size: 13px;">로그인</a>하러 가기
                                    </p>
                                </div>
                                <div id="commentContentArea">
                                    <textarea id="commentContent" style="resize: none"></textarea>
                                </div>
                                <div class="btnArea btns">
                                    <button class="submitBtn fontBorder" id="commentInsertBtn" type="button">등록하기</button>
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
                    </div> <!-- end footer -->

                </div>
                <!-- End #page-right-content -->

            </div>
            <!-- end .page-contentbar -->
        </div>
        
		
		<script>
			function checkPwd(){
				var pwd = $("#exampleFormControlInput1").val();
				
				if(pwd == ""){
					alert("비밀번호를 입력하세요")
					
					return false;
				}else{
					return true;
				}
				
			}	
			
			$(function(){
				
				
				$("i[class='ti-angle-up']").parent().mouseover(function(){
					$(this).css({"color":"purple", "cursor":"pointer"});
				}).mouseout(function(){
					$(this).css("color", "gray");
				}).click(function(){	
					var bNo = <%= bNo %>;
					var bTag = <%= bTag %>;
					
					$.ajax({
						url : "nextNo.bo",
						data : {bNo:bNo, bTag:bTag},
						type : "post",
						success : function(data){
							if(data == 0) {
								alert("첫 게시글입니다");
							}else {
								location.href="<%= request.getContextPath() %>/detail.bo?b_no=" + data;
							}
							
						},
						error : function(){
							console.log("통신 실패");
						}
					});
				});
				
				
				
				
				$("i[class='ti-angle-down']").parent().mouseover(function(){
					$(this).css({"color":"purple", "cursor":"pointer"});
				}).mouseout(function(){
					$(this).css("color", "gray");
				}).click(function(){	
					var bNo = <%= bNo %>;
					var bTag = <%= bTag %>;
					
					$.ajax({
						url : "preNo.bo",
						data : {bNo:bNo, bTag:bTag},
						type : "post",
						success : function(data){
							if(data == 0) {
								alert("마지막 게시글입니다");
							}else {
								location.href="<%= request.getContextPath() %>/detail.bo?b_no=" + data;
							}
			
							
							
						},
						error : function(){
							console.log("통신 실패");
						}
					});
				});
				
				
				
				
				$("#commentInsertBtn").click(function(){
					var dispoId = $("#memberId").val();
					var dispoPwd = $("#memberPwd").val();
					var commentContent = $("#commentContent").val();
					var bNo = <%= bNo %>;
					
					$.ajax({
						url : "insertComment.bo",
						data : {dispoId:dispoId, dispoPwd:dispoPwd, commentContent:commentContent, bNo:bNo},
						type : "post",
						dataType : "json",
						success : function(data){
							$commentTable = $("#commentTable");
							$commentArea = $("#commentArea");
							$commentArea.html("");
							
			
							
							$("#memberId").val("");
							$("#memberPwd").val("");
							$("#commentContent").val("");
							
						},
						error : function(){
							console.log("통신 실패");
						}
						
						
					});
					
					
				});
				
				
			});
			
			
            
		</script>
	

        <!-- js placed at the end of the document so the pages load faster -->
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery-2.1.4.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/bootstrap.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/metisMenu.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery.slimscroll.min.js"></script>

        <!-- App Js -->
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery.app.js"></script>

		
		

</body>
</html>