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
		if(msg=="전화번호를 성공적으로 수정하였습니다."){
			opener.parent.location.reload();
			window.close();
		}
	});
</script>

</head>
<body>
	전화번호 업데이트
	
	<form action="<%= request.getContextPath() %>/updatephone.user" method="post" onsubmit="return validate();">
	
	<input type="text" name="phone" required="required">
	<button>전화번호 변경</button>
	
	</form>
	
		<script>
	
	function validate(){
		if(!(/^[0-9]+$/.test($("input[name=phone]").val()))){
			alert('전화번호는 숫자로만 구성해주세요');
			return false;
		}
		
		

		
			return true;
		}
	
	
	
	</script>

</body>
</html>