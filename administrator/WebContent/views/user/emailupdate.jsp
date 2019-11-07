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
		if(msg=="이메일을을 성공적으로 수정하였습니다."){
			opener.parent.location.reload();
			window.close();
		}
	});
</script>

</head>
<body>
	전화번호 업데이트
	
	<form action="<%= request.getContextPath() %>/updateemail.user" method="post" onsubmit="return validate();">
	
	<input type="text" name="email" required="required">
	<button>이메일 변경</button>
	
	</form>
	
		<script>
	
	function validate(){
		if(!(/^[0-9a-zA-Z]{1,}@[0-9a-zA-Z]{1,}.[0-9a-zA-Z]{1,}$/.test($("input[name=email]").val()))){
			alert('이메일 형식에 맞게 작성해주세요');
			return false;
		}
		

		
			return true;
		}
	
	
	
	</script>

</body>
</html>