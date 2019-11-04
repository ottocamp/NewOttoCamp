<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.*, java.util.ArrayList"%>

<%
	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("blist");
	PageInfo pi = (PageInfo)request.getAttribute("pi");

	int bTag = (int)request.getAttribute("bTag");
	
	String tag = "";
	switch (bTag){
	case 0:
		tag = "공지";
		break;
	case 1:
		tag = "정보";
		break;
	case 2:
		tag = "잡담";
		break;
	}
	
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	
	String msg = (String)session.getAttribute("msg");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
		<!-- jqury cdn -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script>
			var msg = "<%= msg %>";
			
			$(function(){
				if(msg != "null"){
					alert(msg);
					<% session.removeAttribute("msg"); %>
				}
			})
			
		
		</script>
		
		
        <meta charset="utf-8" />
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

            .board-wrapper{
                width: 90%;
                margin: 0 auto;
                /* border: 1px solid purple; */
            }

            .boardArea{
                margin: 10px 0;
                
                /* border: 1px solid red; */
            }

            .boardList{
                width: 95%;
                margin: 0 auto;

                background-color: white;
            }

            th{
                text-align: center;
                background-color: rgb(73, 73, 73);
                padding: 8px;
                font-size: 18px;
                color: white;
            }


            td{
                text-align: center;
                background-color: rgb(243, 243, 243);
                padding: 8px;

                border: 2px solid white;
            }

            th:first-of-type{
                border-radius: 3px 0 0 0;
            }

            th:last-of-type{
                border-radius: 0 3px 0 0;
            }

            tr:last-child td:first-child {
                border-radius: 0 0 0 6px;
            }
 
            tr:last-child td:last-child {
                border-radius: 0 0 6px 0;
            }



            .searchArea{
                display: inline-block;
                width: 60%;
            }
            
            .searchArea *{
                border-radius: 3px;
            }
            
            .searchHeight{
                height: 36px;
                margin: 10px 0;
            }

            #selectArea{
                display: inline-block;
                width: 10%;
                margin-left: 20px;
            }

            .selectTag, input{
                width: 100%;
            }

            #searchText{                                
                display: inline-block;
                width: 30%;
            }

            

            .boardBtn{                                
                display: inline-block;
                width: 12%;

                background-color: gainsboro;
                border-radius: 5px;
                border: 1px solid rgb(197, 197, 243);

                color: darkblue;
            }
            
            #insertBtn{
                float: right;
                margin: 10px 20px;
                height: 45px;
                width: 20%;
            }

            .insertBtn{
                float: right;
                width: 50%;
                height: 100%;

                background-color: darkblue;
                color: aliceblue;
                float: right;
            }


            .pagingArea{
                width: 100%;

                text-align: center;
            }

            #buttonArea{
                display: inline-block;

                text-align: center;
            }
            
            #buttonArea button{
                float: left;
                position:relative;
                width: 36px;
                height: 36px;
                margin: 0 auto;
                padding: 0;
                
                border-radius: 0;
                background-color: white;
            }

            #buttonArea button:first-of-type{
                width: 50px;

                border-top-left-radius: 5px;
                border-bottom-left-radius: 5px;
            }

            #buttonArea button:last-of-type{
                width: 50px;

                border-top-right-radius: 5px;
                border-bottom-right-radius: 5px;
            }

            tr td:nth-child(3):hover{
                background-color: rgb(155, 155, 155);
                color: white;

                font-weight: bolder;
                
                cursor: pointer;
            }
            

            .fontBorder{
                font-weight: bolder;
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
						<% if(bTag == 0) { %>
                        	<h2 onclick="location.href='<%= request.getContextPath() %>/list.bo?b_tag=0'">공지사항</h2>
						<% }else if(bTag == 1) { %>
                        	<h2 onclick="location.href='<%= request.getContextPath() %>/list.bo?b_tag=1'">정보공유</h2>
						<% }else { %>
                        	<h2 onclick="location.href='<%= request.getContextPath() %>/list.bo?b_tag=2'">잡담(자유)</h2>
						<% } %>
						
						
                        <br>
                        <div class="board-wrapper">
                            <div class="boardArea">
                                <table class="boardList">
                                    <thead class="thead-light">
                                        <tr>
                                            <th width="50">분류</th>
                                            <th width="300">제목</th>
                                            <th width="80">작성자</th>
                                            <th width="100">작성일</th>
                                            <th width="40">조회수</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<% if(list.isEmpty()) { %>
                                    	<tr>
                                    		<td colspan="5">조회된 공지사항이 없습니다.</td>
                                    	</tr>
                                    	
                                    	<% }else { %>
                                        	<% for(Board b : list) { %>
                                        	
                                        	<% 
	                                        	String title = b.getbTitle();
	                                        	
	                                        	
	                                        	switch (b.getbRegion()){
	                                        	case 1:
	                                        		title = "[서울]  " + b.getbTitle();
	                                        		break;
	                                        	case 2:
	                                        		title = "[경기]  " + b.getbTitle();
	                                        		break;
	                                        	case 3:
	                                        		title = "[강원]  " + b.getbTitle();
	                                        		break;
	                                        	case 4:
	                                        		title = "[경상]  " + b.getbTitle();
	                                        		break;
	                                        	case 5:
	                                        		title = "[전라]  " + b.getbTitle();
	                                        		break;
	                                        	case 6:
	                                        		title = "[충청]  " + b.getbTitle();
	                                        		break;
	                                        	}
                                        	%>
                                        	
                                        	
	                                    	<tr>
												<input type="hidden" value="<%= b.getbNo() %>">
	                                            <td><%= tag %></td>
	                                            <td><%= title %></td>
	                                            <td><%= b.getbWriter() %></td>
	                                            <td><%= b.getUpdateDate() %></td>
	                                            <td><%= b.getbCount() %></td>
	                                        </tr>
                                        	<% } %>
                                    	<% } %>
                                     
                                    </tbody>
                                </table>
                            </div>

                            <br>
                            <div class="searchArea">
                                <form class="searchForm" role="search">
                                    <div id="selectArea">
                                        <select class="selectTag searchHeight">
                                            <option id="serachTag" name="serachTag" value="title">제목</option>
                                            <option id="serachTag" name="serachTag" value="writer">작성자</option>
                                            <option id="serachTag" name="serachTag" value="date">작성일</option>
                                            <option id="serachTag" name="serachTag" value="comment">댓글</option>
                                        </select>
                                    </div>
                                    <div id="searchText">
                                        <input type="text" class="searchHeight" placeholder="키워드를 입력하세요">
                                    </div>

                                    <button class="searchHeight fontBorder boardBtn" type="submit">검색하기</button>
                                </form>
                            </div>

                            <div id="insertBtn" class="fontBorder">
                            	<% if(bTag != 0) {%>                      
                                	<button type="button" class="boardBtn insertBtn" onclick="location.href='views/board/boardInsertForm.jsp'">글쓰기</button>
                                <% } %>
                            </div>

                            <br><br>
                            
                            <div class="pagingArea fontBorder">
                            	<% if(!list.isEmpty()) { %>
                            
                                <div id="buttonArea">          
                                	<% if(currentPage - 1 <= 0)  { %>
                               			<button class="boardBtn" disabled style="color:gray">이전</button>
                                	<% }else { %>
                                   		<button class="boardBtn" onclick="location.href='<%= request.getContextPath() %>/list.bo?b_tag=<%= bTag %>&currentPage=<%= currentPage - 1 %>'">이전</button>
                                	<% } %>  
                                	
                                	<% for(int i = startPage; i <= endPage; i++) { %>
                                		<% if(i == currentPage) { %>
                                			<button class="boardBtn" disabled style="color:blue"><%= i %></button>
                                		<% }else { %>
                                			<button class="boardBtn" onclick="location.href='<%= request.getContextPath() %>/list.bo?b_tag=<%= bTag %>&currentPage=<%= i %>'"><%= i %></button>
                                		<% } %>                                                           
                                	<% } %>
                                      
                                	<% if(currentPage == maxPage)  { %>
                                		<button class="boardBtn" disabled style="color:gray">다음</button>
                                	<% }else { %>
                                    	<button class="boardBtn" onclick="location.href='<%= request.getContextPath() %>/list.bo?b_tag=<%= bTag %>&currentPage=<%= currentPage + 1 %>'">다음</button>
                                	<% } %>
                                </div>
                                
                                <% } %>
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
	        $(function(){	   
	        	$("tr td:nth-of-type(2)").click(function(){
	        		var bNo = $(this).parent().children("input").val();	 
	        		
	        		location.href="<%= request.getContextPath() %>/detail.bo?b_no=" + bNo;
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