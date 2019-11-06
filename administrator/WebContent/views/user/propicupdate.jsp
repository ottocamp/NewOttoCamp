<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String msg = (String)request.getAttribute("msg");
%>  
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	var msg = "<%= msg %>";
	
	$(function(){
		if(msg != "null"){
			alert(msg);
		}
		if(msg=="사진을 성공적으로 수정하였습니다."){
			window.close();
		}
	});
</script>

</head>
<body>
	사진 업데이트
	
	<form action="<%= request.getContextPath() %>/propic.user" method="post" enctype="multipart/form-data">
	
	<input type="file" name="upfile" required="required">
	<input type="text" value="1" hidden="">
	<button>사진 제출</button>
	
	</form>

</body>
</html>