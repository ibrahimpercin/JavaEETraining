<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>

<jsp:useBean id="uyeBean" class="com.ibrahimpercin.uyeBilgi"
	scope="session"></jsp:useBean>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
h1 {
	color: red;
	font-size: 50px;
}
</style>
</head>
<body>
	<h1>BİR HATA MEYDANA GELDİ</h1>
	<div class="alert alert-warning">
		<strong><a href="login.jsp"> ANASAYFAYA GİDİNİZ </a></strong>
	</div>

	<div class="alert alert-danger">
		<strong><%= exception.toString() %></strong>
	</div>
</body>
</html>
