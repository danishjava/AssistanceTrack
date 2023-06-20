<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<%@include file="menu.jsp"%>
<%@include file="layout.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.assistancetrack.model.Reciever"%>
<%@ page import="com.assistancetrack.model.AddMember"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Display</title>
<!-- Bootstrap core CSS-->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/bootstrap/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/bootstrap/bootstrap.css"
	type="text/css">
<!-- Custom fonts for this template-->
<link
	href="${pageContext.servletContext.contextPath}/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Custom styles for this template-->
<link href="${pageContext.servletContext.contextPath}/css/sb-admin.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.servletContext.contextPath}/css/sb.css"
	rel="stylesheet" type="text/css">
<!-- For DataTable configuration -->
<!--  <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->

<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/buttons.dataTables.min.css"
	type="text/css">
<!--<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/css/table.css" type="text/css">
-->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/jquery.dataTables.min.css"
	type="text/css">

<style>
.form-control1 {
	
}

.dataTables_filter input {
	margin-bottom: 1px;
	!
	important;
}
.dataTables_filter {
     top: 1px !
	important;
}
.mt-5, .my-5 {
    margin-top: 2rem !important;
}
</style>
</head>
<body>
<div class="container"><div class="card card-register mx-auto mt-5">
<div class="card-header">
          <a class="nav-link" href="#">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="#">Yearly Settlement </span>
          </a>
</div>
<div class="card-body">
<!--<form> --><form:form method="post" action="displayMember1.html"
	commandName="memberForm">
	<h2>Yearly Settlement</h2>
	<table id="DataTableID" align="left" border="1" style="background-color:#234c74;">
		<thead>
			<tr>
				<th>Year</th>
				<th>Received</th>
				<th>Deliver</th>
				  <th>LeftOver</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="delieverObj" items="${delieverList}">
				<tr>
					<!--  <td><a href="#">More Info</a></td>-->
					<td><c:out value="${delieverObj[0]}"></c:out></td>
					<td><c:out value="${delieverObj[2]}"></c:out></td>
					<td><c:out value="${delieverObj[1]}"></c:out></td>
					<td><c:out value="">NA</c:out></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</form:form></div>
</div>
</div>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/js/dataTables.buttons.min.js"
	type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery.dataTables.min.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#DataTableID").DataTable();
	});
</script>
</body>
</html>
