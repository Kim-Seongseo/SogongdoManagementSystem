<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="persistance.FacilityChargeDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- <form action="/Sogongdo/facilityCharge/enroll">
	<div>
		<select name="touristSite">
			<%
			List<FacilityChargeDTO> list = (List<FacilityChargeDTO>) request.getAttribute("FacilityChargeDto");
			for (FacilityChargeDTO dto : list) {
				pageContext.setAttribute("dto", dto);
			%>
				<option>${dto.touristSiteName}</option>
			<%}%>
		</select>
	</div>
	<div>
		<select name="facility">
			<%
			for (FacilityChargeDTO dto : list) {
				pageContext.setAttribute("dto", dto);
			%>
				<option>${dto.facilityName}</option>
			<%}%>
		</select>
	</div>
	<div>
		<input type="text" name="charge"><br>
	</div>
	<div>
		<input type="submit" value="���">
		<input type="button" onclick="history.back()" value="���">
	</div>
	</form> --%>
	<form action="/Sogongdo/facilityCharge/enroll" method="POST">
		<input type="text" name="touristSite"><br>
		<input type="text" name="facility"><br>
		<input type="text" name="charge"><br>
		<input type="submit" value="���">
		<input type="button" onclick="history.back()" value="���">
	</form>
	
</body>
</html>