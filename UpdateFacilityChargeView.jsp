<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="/Sogongdo/facilityCharge/update" method="POST">
		<input type="text" name="touristSite"><br>
		<input type="text" name="facility"><br>
		<input type="text" name="charge"><br>
		<input type="submit" value="수정">
		<input type="button" onclick="history.back()" value="취소">
	</form>
</body>
</html>