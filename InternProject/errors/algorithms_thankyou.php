 
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="../css/style.css">
	<title>Başarılı</title>
</head>
<body>
<h1 class="text">ISLEMINIZ BASARI ILE GERCEKLESMISTIR.</h1>
<h4 class="text">Güncelleme sayfasına dönmek için tıklayınız..</h4>
<?php
        if(isset($_GET['id'])){
            $info_id = $_GET['id'];
        }
        else{

        	echo "HATA";
        }
    
    ?>
<?php 
echo " <a class='edit' href='../lessons/algorithms_guncelle.php?id=".$info_id."'>Güncelleme Sayfası</a>";
?>

</body>
</html>

	