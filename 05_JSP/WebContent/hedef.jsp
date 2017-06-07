<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
</head>
<body>

	<div class="container">
		<h2>Gelen Bilgi</h2>
		<table class="table table-condensed">
			<thead>
				<tr>
					<th>Email</th>
					<th>Kullanıcı Adı</th>
					<th>Tecrübe</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><%= uyeBean.getEmail() %></td>
					<td><%= uyeBean.getKullaniciAdi() %></td>
					<td><%= uyeBean.getTecrube() %></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>
