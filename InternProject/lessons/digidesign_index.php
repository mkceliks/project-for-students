<?php 

include_once '../session.php';
include_once '../serverside/server.php';

?>

<!DOCTYPE html>
<html >
  <head>
    <meta charset="utf-8">

    <link rel="stylesheet" href="../css/style.css">
    
    <title>Digital Design Yönetici</title>
    
  </head>

  <body>
    <h1 style="color: green; font-size: 50px;" class="text">-----ANASAYFA-----</h1>
    <br>
     <div align="center">
      <h2 class="text">Dersinizi alan ögrenciler'in listesi için tıklayınız.</h2>
      <br>
      <button class="typesubmit1" style="margin-right:20px;" type="submit" name="goster" 
      onclick="location.href='digidesign_liste.php'">Göster</button>
      <br><br><br>
     </div>
     <div align="center">
      <h2 class="text">Okulu'muzun genel ders listesi.</h2>
      <br>
      <button class="typesubmit1" style="margin-right:20px;" type="submit" name="goster" 
      onclick="location.href='digidesign_derslistesi.php'">Göster</button>
      <br><br><br>
     </div>
     <div align="center">
      <h2 class="text">Güvenli Çıkış için tıklayınız.</h2>
      <br>
      <button class="typesubmit1" style="margin-right:20px;" type="submit" name="cikis" 
      onclick="location.href='../guvenliCikis.php'">Güvenli Çıkış</button>
      <br><br><br>
     </div>
      
  </body>
</html>
