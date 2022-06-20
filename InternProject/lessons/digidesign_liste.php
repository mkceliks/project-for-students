 <?php
include_once '../serverside/server.php';
 if(! $conn ) {
      die('Could not connect: ' . mysqli_error());
   }

?>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../css/style.css">

  <title>Bütün Öğrenciler</title>
  <header><h1 class="text">-----Digital Design Dersi Öğrenci Listesi-----</h1></header>
  <meta charset="UTF-8">
</head>
<body>
	<table>
	<?php 
		$sorgu = "SELECT * FROM info_digidesign";
		$sorguSonucu = mysqli_query($conn, $sorgu);
		if($sorguSonucu) {
			echo "<table id='listetablosu' >
			<tr>
    		<th style='color:black; text-align:center;' >ISIM</th>
    		<th style='color:black; text-align:center;'>SOY ISIM</th>
   			<th style='color:black; text-align:center;'>NUMARA</th>
   			<th style='color:black; text-align:center;'>EMAIL</th>
   			<th style='color:black; text-align:center;'>NOT VE DEVAM DURUMU</th>
  			</tr>
			";
			while($kayit = mysqli_fetch_assoc($sorguSonucu)) {
	echo "<tr><td>" . $kayit ['info_fname'] . "</td><td>" . $kayit ['info_lname'] . "</td><td>" . $kayit ['info_num'] . "</td><td>" . $kayit ['info_email'] . "<td>
	<a class='edit' href='digidesign_guncelle.php?id=".$kayit ['info_id']."'>Düzenle</a></td>
	</tr>";	
			}
		}
		echo "</table>";
	?>
		<div class="text"><h4 style="margin-left:50px;">Anasayfaya gitmek icin tiklayiniz!</h4>
<button class="mainpage" type="submit" name="mainpage" onclick="location.href='digidesign_index.php'">Ana Sayfa</button></div>
		
</body>
</html>