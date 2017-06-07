<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Veri Tabanı</title>
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
	<%@page import="java.util.*"%>
	<%@page import="java.sql.*"%>

	<div class="container">
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Ad</th>
					<th>Soyad</th>
					<th>Tecrübe</th>
				</tr>
			</thead>
			<tbody>
				<%

		Connection baglanti =null;
		Statement durum =null;
		ResultSet sonuc =null;
		
		String driver ="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost/veritabani?serverTimezone=UTC&autoReconnect=true&useSSL=false";
		String kullaniciAdi="ibrahim";
		String parola="123456789";
		
		try{
			Class.forName(driver);
			baglanti= DriverManager.getConnection(url, kullaniciAdi, parola);
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		
		String sqlSorgu ="SELECT * FROM veritabani.veriler";
		int i=0;
		String rank="#444444";
		try{
			durum =baglanti.createStatement();
			sonuc = durum.executeQuery(sqlSorgu);
			
			while(sonuc.next()){
				
			i=i%4;
			if(i==0){
				rank="danger";
			}else if (i==1){
				rank="info";
			}
			else if(i==2) {
				rank="success";
			}else{
				rank="success";
			}
			
			
			
			
			%>
				<tr class="<%out.print(rank); %>">
					<td><%= sonuc.getString("id") %></td>
					<td><%= sonuc.getString("adi") %></td>
					<td><%= sonuc.getString("soyadi") %></td>
					<td><%= sonuc.getInt("tecrube") %></td>
				</tr>

				<%
			i++;
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(sonuc!=null){
				sonuc.close();
			}
			if(durum!=null){
				durum.close();
			}
			
			if(baglanti!=null){
				baglanti.close();
			}
		}





		
		%>
			</tbody>
		</table>
	</div>









</body>
</html>
