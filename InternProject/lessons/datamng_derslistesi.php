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

  <title>Bütün Dersler</title>
  <header><br><h1 class="text">-----Okulumuz'da görülmek'te olan ders listesi-----</h1><br><br></header>
  <meta charset="UTF-8">
</head>
<body>
	<table>
	<?php 
		$sorgu = "SELECT * FROM dersler";
		$sorguSonucu = mysqli_query($conn, $sorgu) or trigger_error("Hata: ". mysqli_error($mysqli), E_USER_ERROR);
		if($sorguSonucu) {
			echo "<table id='listetablosu' >
			<tr>
    		<th style='color:black; text-align:center;' >DERS ADI</th>

  			</tr>
			";
			while($kayit = mysqli_fetch_assoc($sorguSonucu)) {
	echo "<tr><td>" . $kayit ['ders_adi'];	
			}
		}
		echo "</table>";
	?>
		<div style="margin-right: -5px;" class="text"><h4>Anasayfaya gitmek icin tiklayiniz!</h4>
<button style="margin-left: 5px;" class="mainpage" type="submit" name="mainpage" onclick="location.href='datamng_index.php'">Ana Sayfa</button></div>
		
</body>
</html>