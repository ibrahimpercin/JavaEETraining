<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Anasayfa</title>
</head>
<body>
	<c:forEach var="sayac" begin="1" end="8" step="2">
		<%
			out.println("Sayac Degeri :" + pageContext.findAttribute("sayac"));
		%>
		<h1>
			<c:out value="${sayac}"></c:out>
		</h1>
		<hr>
	</c:forEach>
	
	
	<c:set var="adi" value="ibo" />
	
	
	
	
</body>
</html>