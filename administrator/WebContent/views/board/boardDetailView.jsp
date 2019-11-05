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

            #commentTable{
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
            
            .color-drakBlue{
            	color: darkBlue;
            	border: 1px solid rgb(197, 197, 243);
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
                                    <button class="btn btn-primary" id="toMainBtn" onclick="location.href='<%= request.getContextPath() %>/list.bo?b_tag=<%= bTag %>'">목록으로</button>
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
									<button type="button" class="btn btn-primary fontBorder " data-toggle="modal" data-target="#deleteBoardModal">
									  삭제
									</button>						
                                    <% }else { %>
                                    	
                                    
                                    
                                    
                                    
                                    
                                    <% } %>
                                </div>
                                
                            </div>     
                        </div>
						
						
						<!-- Modal -->
						<div class="modal fade" id="deleteBoardModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">게시글 삭제</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      
						      <form method="post" action="<%= request.getContextPath() %>/pwdCheck.bo" onsubmit="return checkBoardPwd();">
							      <div class="modal-body">
							            <label for="boardPwd">게시글을 삭제합니다.</label>
    									<input type="password" class="form-control" name="pwd" id="boardPwd" placeholder="임시 비밀번호를 입력하세요">
    									
							            <input type="hidden" name="bNo" value="<%= bNo %>">
							            <input type="hidden" name="bTag" value="<%= bTag %>">
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
							        <button type="submit" class="btn btn-primary">삭제하기</button>
							      </div>
						      </form>
						      
						    </div>
						  </div>
						</div>
						<!-- Modal End-->	
						<hr>				


                        <div class="commentArea" id="commentArea">
                        		
                        	<% if(!cList.isEmpty()) { %>
                        		
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
		                                	<% if(c.getUserNo() == 9999) { %>
		                                	
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-secondary fontBorder deleteCommentBtn" data-toggle="modal" data-target="#deleteCommentModel">											
    											<input type="hidden" name="cNo" value="<%= c.getcNo() %>">
							            		<input type="hidden" name="bNo" value="<%= bNo %>">
											  	삭제
											</button>
											
		                                    <% }else { %>
		                                    	
		                                    
		                                    
		                                    
		                                    
		                                    
		                                    <% } %>
	                                    </td>
	                                </tr>
	                            </table>
                        	
	                            
                        		<% } %>
                        	<% } %>
                        </div>
						
						<!-- Modal -->
						<div class="modal fade" id="deleteCommentModel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">댓글 삭제</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      
						      <form method="post" action="<%= request.getContextPath() %>/pwdCheck.co" onsubmit="return checkCommentPwd();">
							      <div class="modal-body">
							            <label for="commentPwd">댓글을 삭제합니다.</label>
    									<input type="password" class="form-control" name="pwd" id="commentPwd" placeholder="임시 비밀번호를 입력하세요">
    									<input type="hidden" name="cNo">
							            <input type="hidden" name="bNo">
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
							        <button type="submit" class="btn btn-primary">삭제하기</button>
							      </div>
						      </form>
						      
						    </div>
						  </div>
						</div>
						<!-- Modal End-->												               
						

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
                                    <button class="btn btn-primary submitBtn fontBorder" id="commentInsertBtn" type="button">등록하기</button>
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

			function checkBoardPwd(){
				var pwd = $("#boardPwd").val();
				
				if(pwd == ""){
					alert("비밀번호를 입력하세요")
					
					return false;
				}else{
					return true;
				}
				
			}	

			function checkCommentPwd(){
				var pwd = $("#commentPwd").val();
				
				if(pwd == ""){
					alert("비밀번호를 입력하세요")
					
					return false;
				}else{
					return true;
				}
				
			}		

    		$(".deleteCommentBtn").click(function(){
    			var cNo = $(this).children("input[name='cNo']").val();
    			var bNo = $(this).children("input[name='bNo']").val();
    						        			
    			$("#commentPwd").parent().children("input[name='cNo']").val(cNo);
    			$("#commentPwd").parent().children("input[name='bNo']").val(bNo);    
    			
    		});   
			
			

        	$(function(){
        		$("#deleteCommentBtn").click(function(){
        			var cNo = $(this).children("input").val();
        			
        			$("#commentPwd").next().val(cNo);                        			
        		});                        		
        	});
		
		
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
							$commentArea = $("#commentArea");
							$commentArea.text("");
							
							for(var key in data) {
								var $input = $("<input>").attr("type", "hidden").attr("id", "userNoInput").val(data[key].userNo);
								var $table = $("<table>").attr("id", "commentTable");
								$table.append($input);
								
								var $tr = $("<tr>").addClass("commentTr");
								
								var $nameTd = $("<td>").addClass("userName");
								var $nameDiv = $("<div>").addClass("user_wrapper fontBorder").text(data[key].cWriter);

								if(data[key].userNo == 9999) {
									var $sub = $("<sub>").text("(비회원)");
									
									$nameDiv.append($sub);
								}
								
								$nameTd.append($nameDiv);
								
								
								
								var $contentTd = $("<td>").addClass("commentContent");
								var $contentDiv = $("<div>").addClass("text_wrapper");
								var $contentSpan = $("<span>").addClass("contextText").text(data[key].cContent);
								
								$contentDiv.append($contentSpan);
								$contentTd.append($contentDiv);
								
								
								
								var $btnTd = $("<td>").addClass("btns");
								
								if(data[key].userNo == 9999){
									var $button = $("<button>").addClass("btn btn-secondary fontBorder").text("삭제").attr({"type" : "button", "data-toggle" : "modal", "data-target" : "#deleteCommentModel"});
									
									$btnTd.append($button);
									
								}
								
								
								
								$tr.append($nameTd);
								$tr.append($contentTd);
								$tr.append($btnTd);
								
								$table.append($tr);
								$commentArea.append($table);
							}	
							
							
							
			
							
							$("#memberId").val("");
							$("#memberPwd").val("");
							$("#commentContent").val("");
							
						},
						error : function(){
							console.log("통신 실패");
						}
						
						
					});
					
					
				});
				
				

        		$("#deleteCommentBtn").click(function(){
        			var cNo = $(this).children("input").val();
        			
        			$("#commentPwd").next().val(cNo);                        			
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