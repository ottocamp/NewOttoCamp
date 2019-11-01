<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
		<!-- jqury cdn -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		
        <meta charset="utf-8" />
        <title>SimpleAdmin - Responsive Admin Dashboard Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        
</head>       
<body>	

	

	<script>
	function geolocate(ip,type,cityPrecision){
		  var key = '13c80eb9fa73855b74215247929c45ad670b65f05a6fe8a4e1f79a005de2bc7f';
		  var api = (cityPrecision) ? "ip-city" : "ip-country";
		  var domain = 'api.ipinfodb.com';
		  var version = 'v3';
		  var url = "http://" + domain + "/" + version + "/" + api + "/?key=" + key + "&ip=" + ip + "&format=" + type + "&callback=?";
		   
		  $.getJSON(url, function(data){
		  alert(data.countryCode);
		  })
		}
		 
		geolocate("체크할ip","json",false); //체크할아이피,타입(json,xml등),true:도시별 false:국가별
	
	</script>






</body>
</html>
