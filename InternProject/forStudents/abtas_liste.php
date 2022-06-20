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
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
  $( function() {
    $( "#dialog" ).dialog({
      autoOpen: false,
      show: {
        effect: "blind",
        duration: 1000
      },
      hide: {
        effect: "explode",
        duration: 1000
      }
    });
 
    $( "#opener" ).on( "click", function() {
      $( "#dialog" ).dialog( "open" );
    });
  } );
  </script>

  <title>Bütün Öğrenciler</title>
  <header><h1 class="text">-----Ders Notları(Abdullah Taş)-----</h1></header>
  <meta charset="UTF-8">
</head>
<body>
		<div id="dialog" title="Öğrenci Detayı">
<p><?php    
			$sorgu = "SELECT * FROM info_algorithms WHERE info_id = '1'";
			$sorguSonucu = mysqli_query($conn, $sorgu);
			if($sorguSonucu) {
			while($kayit = mysqli_fetch_assoc($sorguSonucu)) {
	echo "<p><span style='font-weight:bold;'>Ad :</span>" . $kayit ['info_fname'] . "</p><p><span style='font-weight:bold;'>Soyad : </span>" . $kayit ['info_lname'] . "<p><span style='font-weight:bold;'> Numara </span>: " . $kayit ['info_num'] . "<p><span style='font-weight:bold;'> E-mail : </span>" . $kayit ['info_email'] . "	</tr>";	
			}
		}
	
		echo "</table>";
		?></p>
</div>
<button style="margin-right: 10px;" id="opener">Öğrenci Detayı</button><br><br>
	<table>
	<?php 
		$sorgu = "SELECT * FROM algorithms WHERE ogrenci_id ='1'";
		$sorguSonucu = mysqli_query($conn, $sorgu);
		if($sorguSonucu) {
			echo "<table id='listetablosu' >
			<tr>
    		<th style='color:black; text-align:center;' >DERS ADI</th>
    		<th style='color:black; text-align:center;' >VIZE NOTU</th>
    		<th style='color:black; text-align:center;' >FINAL NOTU</th>
    		<th style='color:black; text-align:center;' >QUIZ NOTU</th>
    		<th style='color:black; text-align:center;' >DEVAM DURUMU</th>
  			</tr>
			";
			while($kayit = mysqli_fetch_assoc($sorguSonucu)) {
	echo "<tr><td> Algorithms </td><td>" . $kayit ['ogrenci_vize'] . "</td><td>" . $kayit ['ogrenci_final'] . "</td><td>" . $kayit ['ogrenci_quiz'] . "</td><td>" . $kayit ['ogrenci_devam'] ."</tr>";
			}
		}
		echo "</table><br>";
	?>
	<?php 
		$sorgu = "SELECT * FROM datastr WHERE ogrenci_id ='1'";
		$sorguSonucu = mysqli_query($conn, $sorgu);
		if($sorguSonucu) {
			echo "<table id='listetablosu' >
			<tr>
    		<th style='color:black; text-align:center;' >DERS ADI</th>
    		<th style='color:black; text-align:center;' >VIZE NOTU</th>
    		<th style='color:black; text-align:center;' >FINAL NOTU</th>
    		<th style='color:black; text-align:center;' >QUIZ NOTU</th>
    		<th style='color:black; text-align:center;' >DEVAM DURUMU</th>
  			</tr>
			";
			while($kayit = mysqli_fetch_assoc($sorguSonucu)) {
	echo "<tr><td> Data Structures </td><td>" . $kayit ['ogrenci_vize'] . "</td><td>" . $kayit ['ogrenci_final'] . "</td><td>" . $kayit ['ogrenci_quiz'] . "</td><td>" . $kayit ['ogrenci_devam'] ."</tr>";
			}
		}
		echo "</table><br>";
	?>
	<?php 
		$sorgu = "SELECT * FROM digidesign WHERE ogrenci_id ='1'";
		$sorguSonucu = mysqli_query($conn, $sorgu);
		if($sorguSonucu) {
			echo "<table id='listetablosu' >
			<tr>
    		<th style='color:black; text-align:center;' >DERS ADI</th>
    		<th style='color:black; text-align:center;' >VIZE NOTU</th>
    		<th style='color:black; text-align:center;' >FINAL NOTU</th>
    		<th style='color:black; text-align:center;' >QUIZ NOTU</th>
    		<th style='color:black; text-align:center;' >DEVAM DURUMU</th>
  			</tr>
			";
			while($kayit = mysqli_fetch_assoc($sorguSonucu)) {
	echo "<tr><td> Digital Design </td><td>" . $kayit ['ogrenci_vize'] . "</td><td>" . $kayit ['ogrenci_final'] . "</td><td>" . $kayit ['ogrenci_quiz'] . "</td><td>" . $kayit ['ogrenci_devam'] ."</tr>";
			}
		}
		echo "</table><br>";
	?>
	<?php 
		$sorgu = "SELECT * FROM electronics WHERE ogrenci_id ='1'";
		$sorguSonucu = mysqli_query($conn, $sorgu);
		if($sorguSonucu) {
			echo "<table id='listetablosu' >
			<tr>
    		<th style='color:black; text-align:center;' >DERS ADI</th>
    		<th style='color:black; text-align:center;' >VIZE NOTU</th>
    		<th style='color:black; text-align:center;' >FINAL NOTU</th>
    		<th style='color:black; text-align:center;' >QUIZ NOTU</th>
    		<th style='color:black; text-align:center;' >DEVAM DURUMU</th>
  			</tr>
			";
			while($kayit = mysqli_fetch_assoc($sorguSonucu)) {
	echo "<tr><td> Electronics </td><td>" . $kayit ['ogrenci_vize'] . "</td><td>" . $kayit ['ogrenci_final'] . "</td><td>" . $kayit ['ogrenci_quiz'] . "</td><td>" . $kayit ['ogrenci_devam'] ."</tr>";
			}
		}
		echo "</table><br>";
	?><?php 
		$sorgu = "SELECT * FROM toc WHERE ogrenci_id ='1'";
		$sorguSonucu = mysqli_query($conn, $sorgu);
		if($sorguSonucu) {
			echo "<table id='listetablosu' >
			<tr>
    		<th style='color:black; text-align:center;' >DERS ADI</th>
    		<th style='color:black; text-align:center;' >VIZE NOTU</th>
    		<th style='color:black; text-align:center;' >FINAL NOTU</th>
    		<th style='color:black; text-align:center;' >QUIZ NOTU</th>
    		<th style='color:black; text-align:center;' >DEVAM DURUMU</th>
  			</tr>
			";
			while($kayit = mysqli_fetch_assoc($sorguSonucu)) {
	echo "<tr><td> Theory Of Computation </td><td>" . $kayit ['ogrenci_vize'] . "</td><td>" . $kayit ['ogrenci_final'] . "</td><td>" . $kayit ['ogrenci_quiz'] . "</td><td>" . $kayit ['ogrenci_devam'] ."</tr>";
			}
		}
		echo "</table><br>";
	?>
		<div class="text"><h4 style="margin-left:50px;">Anasayfaya gitmek icin tiklayiniz!</h4>
<button class="mainpage" type="submit" name="mainpage" onclick="location.href='abtas_index.php'">Ana Sayfa</button></div>
		
</body>
</html>