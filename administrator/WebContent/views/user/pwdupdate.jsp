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
		if(msg=="비밀번호를 성공적으로 수정하였습니다."){
			window.close();
		}
	});
</script>

</head>
<body>
	비밀번호 수정
	
	<form action="<%= request.getContextPath() %>/updatepwd.user" method="post" onsubmit="return validate();">
	
	<input type="password" name="pwd" required="required">
	<br>
	<input type="password" name="pwd2" required="required">
	<button>비밀번호 변경</button>
	
	</form>
	
	
	<script>
	
	function validate(){
		if(!(/^[a-z\d]{4,12}$/i.test($("input[name=pwd]").val()))){
			alert('비밀번호는 영문과 숫자로 해주세요');
			return false;
		}
		
		if($("input[name=pwd]").val() != $("input[name=pwd2").val()){
			alert('비밀번호 불일치');
			return false;
		}
		

		
			return true;
		}
	
	
	
	</script>

</body>
</html>