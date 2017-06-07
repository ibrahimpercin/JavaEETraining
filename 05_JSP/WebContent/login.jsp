<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<style type="text/css">
#uyarimesaji {
	color: red;
}
</style>

<script type="text/javascript">
$(document).ready(function () {
	  //called when key is pressed in textbox
	  $("#tecrube").keypress(function (e) {
	     //if the letter is not digit then display error and don't type anything
	     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
	        //display error message
	        $("#uyarimesaji").html("Sadece Sayi giriniz").show().fadeOut("slow");
	               return false;
	    }
	   });
	});
</script>
</head>
<body>

<div class="container">
  
  <form class="form-horizontal" action="bilgiyiAl.jsp">
  <h1>Üye Giriş</h1>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="email" placeholder="Lütfen emailinizi giriniz" name="email">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="kullaniciAdi">Kullanıcı Adı:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="kullaniciAdi" placeholder="Lütfen Adınızı giriniz" name="kullaniciAdi">
      </div>
    </div>
    
      <div class="form-group">
      <label class="control-label col-sm-2" for="tecrube">Tecrübe:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="tecrube" placeholder="Tecrübenizi giriniz" name="tecrube"><span id="uyarimesaji"></span>
      </div>
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Kaydet</button>
      </div>
    </div>
    
  </form>
</div>

</body>
</html>
