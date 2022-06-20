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
  <title>Ders Durumu Güncelleme</title>
  <meta charset="UTF-8">
</head>
<header>
	<h1 style="color:green" class="text">Öğrenci Düzenleme Sistemi</h1>
</header>

<body>
	<div id="dialog" title="Öğrenci Detayı">
<p><?php if(isset($_GET['id'])){
            $id=$_GET['id'];
            $sorgu = "SELECT * FROM info_datamng WHERE info_id = '$id'";
			$sorguSonucu = mysqli_query($conn, $sorgu);
			if($sorguSonucu) {
			while($kayit = mysqli_fetch_assoc($sorguSonucu)) {
	echo "<p><span style='font-weight:bold;'>Ad :</span>" . $kayit ['info_fname'] . "</p><p><span style='font-weight:bold;'>Soyad : </span>" . $kayit ['info_lname'] . "<p><span style='font-weight:bold;'> Numara </span>: " . $kayit ['info_num'] . "<p><span style='font-weight:bold;'> E-mail : </span>" . $kayit ['info_email'] . "	</tr>";	
			}
		}
	}
		echo "</table>";
		?></p>
</div>
<button style="margin-right: 10px;" id="opener">Öğrenci Detayı</button>
	<div class="text">
   	<h3>Değiştirmek istediğiniz bilgileri giriniz.</h3>
   	<br>
   	 <?php
        if(isset($_GET['id'])){
            $info_id = $_GET['id'];

            $sql = "SELECT * FROM datamng WHERE ogrenci_id= '$info_id' ";
            $result = mysqli_query($conn, $sql);
            $row = mysqli_fetch_assoc($result);

            $fname = $row['ogrenci_vize'];
            $lname = $row['ogrenci_final'];
            $num = $row['ogrenci_quiz'];
            $email = $row['ogrenci_devam'];
        }
        else{

        	echo "selam babake";
        }
    
    ?>
	<form method="POST">
		<b>Vize:</b><input type="text" name="first_name" value="<?php echo $fname; ?>"/>&nbsp&nbsp&nbsp&nbsp&nbsp<br><br>
		<b>Final:</b><input type="text"  name="last_name" value="<?php echo $lname; ?>" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<br><br>
		<b>Quiz:</b><input type="text" name="number" value="<?php echo $num; ?>" />&nbsp&nbsp&nbsp&nbsp&nbsp<br><br>
		<b>Devam Durumu(*):&nbsp&nbsp<label class="container">Success
			<input type="checkbox" name="success" value="Success" >
			<span class="checkmark"></span></label><label class="container">Failed
  			<input type="checkbox" name="failed" value="Failed">
  			<span class="checkmark"></span>
			</label><br><br>
		<input class="typesubmit1" id="update" type="submit" name="submit" value="Güncelle" />&nbsp&nbsp&nbsp
	</form><br><br>
	<?php 
		$sorgu = "SELECT * FROM datamng WHERE ogrenci_id ='$info_id'";
		$sorguSonucu = mysqli_query($conn, $sorgu);
		if($sorguSonucu) {
			echo "<table id='listetablosu' >
			<tr>
    		<th style='color:black; text-align:center;' >ISIM</th>
    		<th style='color:black; text-align:center;'>SOY ISIM</th>
   			<th style='color:black; text-align:center;'>VIZE</th>
   			<th style='color:black; text-align:center;'>FINAL</th>
   			<th style='color:black; text-align:center;'>QUIZ</th>
   			<th style='color:black; text-align:center;'>DEVAM DURUMU</th>
  			</tr>
			";
			while($kayit = mysqli_fetch_assoc($sorguSonucu)) {
	echo "<tr><td>" . $kayit ['ogrenci_isim'] . "</td><td>" . $kayit ['ogrenci_soyisim'] . "</td><td>" . $kayit ['ogrenci_vize'] . "</td><td>" . $kayit ['ogrenci_final'] ."</td><td>" . $kayit ['ogrenci_quiz'] . "</td><td>" . $kayit ['ogrenci_devam'] . "
	</tr>";	
			}
		}
		echo "</table>";
	?>
	<?php
        if(isset($_GET['id'])){
            $id=$_GET['id'];
            if(isset($_POST['submit'])){
                $name=$_POST['first_name'];
                $l_name=$_POST['last_name'];
                $num=$_POST['number'];
                $statu = $kayit ['ogrenci_devam'];
                if (isset($_POST['success']) && $_POST['success'] == 'Success'){ 

                    $success = $_POST['success'];

                    $sql = "UPDATE datamng SET ogrenci_vize='$name', ogrenci_final='$l_name'
                     , ogrenci_quiz = '$num',ogrenci_devam = '$success'WHERE ogrenci_id = $id;";

                    mysqli_query($conn,$sql);

                    if($conn->query($sql) == TRUE){

                    header("Location:../errors/datamng_thankyou.php?id=".$id);

                    }
                    else {

                        echo $conn->error;
                    }

                }
                else if (isset($_POST['failed']) && $_POST['failed'] == 'Failed') {

                    $failed = $_POST['failed'];


                    $sql = "UPDATE datamng SET ogrenci_vize='$name', ogrenci_final='$l_name'
                     , ogrenci_quiz = '$num',ogrenci_devam = '$failed'WHERE ogrenci_id = $id;";

                    mysqli_query($conn,$sql);

                    if($conn->query($sql) == TRUE){

                        header("Location:../errors/datamng_thankyou.php?id=".$id);



                    } 
                    else {

                        echo $conn->error;
                    }
                }
            }
        }
    ?>

<br>
<div>
	<h4 style="margin-left:20px;">Anasayfaya gitmek icin tiklayiniz!&nbsp&nbsp</h4>&nbsp&nbsp
<a style="margin-right: 58px;" href="datamng_index.php">Ana Sayfa</a>
</div>
</body>
</html>