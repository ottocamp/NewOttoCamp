<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	사진 업데이트
	
	<form action="<%= request.getContextPath() %>/propic.user" method="post" enctype="multipart/form-data">
	
	<input type="file" name="upfile">
	<input type="text" value="1" hidden="">
	<button>사진 제출</button>
	
	</form>

</body>
</html>