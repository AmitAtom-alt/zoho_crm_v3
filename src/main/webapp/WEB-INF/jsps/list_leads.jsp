<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>leads</title>
</head>
<body>
	<a href="viewCreateLeadPage">new lead</a>
	<h2>All Leads</h2>
	<table border='1'>
	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Email</th>
		<th>Mobile</th>
		<th>Source</th>
	</tr>
	
	<c:forEach var="lead" items="${leads}">
	<tr>
	
		<td><a href="leadInfo?id=${lead.id}">${lead.firstName}</a></td>
		<td>${lead.lastName}</td>
		<td>${lead.email}</td>
		<td>${lead.mobile}</td>
		<td>${lead.source}</td>
	</tr>
	</c:forEach>
	</table>

</body>
</html>