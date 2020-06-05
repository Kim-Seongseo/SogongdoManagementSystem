<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="persistance.FacilityChargeDTO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ü� ��� ����</title>
<style>
table {
	text-align: center;
}
</style>
</head>
<body>
	<form name="selectItem" method="POST">
		<table  width="700" border="2" bordercolor="lightgray" align="center">
			<tr>
				<th>����</th>
				<th>��������</th>
				<th>�ü���</th>
				<th>���</th>
			</tr>
			<%
				List<FacilityChargeDTO> list = (List<FacilityChargeDTO>) request.getAttribute("FacilityChargeDto");
				for (FacilityChargeDTO dto : list) {
					pageContext.setAttribute("dto", dto);
			%>
				<tr>
					<td><input type="radio" name="chargeID" value=${dto.chargeID}></td>
					<td>${dto.touristSiteName}</td>
					<td>${dto.facilityName}</td>
					<td>${dto.charge}</td>
				</tr>
			<%}%>
		</table>
		
		<div>
			<input type="button" value="���" onclick="location.href='/Sogongdo/EnrollFacilityChargeView.jsp'">
			<input type="button" value="����" onClick="mySubmit(1)"/>
			<input type="button" value="����" onClick="mySubmit(2)"/>
		</div>
	</form>
	
	<script>
	function mySubmit(index) {
		if(index==1){
			//document.selectItem.action="/Tourist/UpdateFacilityChargeView.jsp";
			document.selectItem.action="/Sogongdo/facilityCharge/update";
		}
		if(index==2){
			if (confirm("���� �����Ͻðڽ��ϱ�?") == true){
				document.selectItem.action="/Sogongdo/facilityCharge/delete";
			}else{
				return false;
			}
		}
		document.selectItem.submit();
	}
    </script>
</body>
</html>