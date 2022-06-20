<?php include_once 'serverside/server.php'; ?>

    <?php 

    ob_start();
    session_start();

    $admin_giris_isim  = $_POST["adminisim"];
    $admin_giris_sifre = $_POST["adminPassword"];

    
    $sql = "SELECT isim, sifre FROM admin_student WHERE isim='$admin_giris_isim' ";

    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);

    
    $isim = $row["isim"];
    $sifre = $row["sifre"];
    

    if($admin_giris_isim == "abtas" && md5($admin_giris_sifre) == $sifre){
        

        $_SESSION["login"] = 'true';
        $_SESSION["isim"] = $isim;
        $_SESSION["sifre"] = $sifre;

       header('Location:forStudents/abtas_index.php');


    }else if($admin_giris_isim == "mkemal" && md5($admin_giris_sifre) == $sifre) {

        $_SESSION["login"] = 'true';
        $_SESSION["isim"] = $isim;
        $_SESSION["sifre"] = $sifre;

       header('Location:forStudents/mkemal_index.php');

    }else if($admin_giris_isim == "alicem" && md5($admin_giris_sifre) == $sifre) {

        $_SESSION["login"] = 'true';
        $_SESSION["isim"] = $isim;
        $_SESSION["sifre"] = $sifre;

       header('Location:forStudents/alicem_index.php');

    }else if($admin_giris_isim == "fekici" && md5($admin_giris_sifre) == $sifre) {

        $_SESSION["login"] = 'true';
        $_SESSION["isim"] = $isim;
        $_SESSION["sifre"] = $sifre;

       header('Location:forStudents/fekici_index.php');

    }else if($admin_giris_isim == "cakbas" && md5($admin_giris_sifre) == $sifre) {

        $_SESSION["login"] = 'true';
        $_SESSION["isim"] = $isim;
        $_SESSION["sifre"] = $sifre;

       header('Location:forStudents/cakbas_index.php');

    }else if($admin_giris_isim == "eozdem" && md5($admin_giris_sifre) == $sifre) {

        $_SESSION["login"] = 'true';
        $_SESSION["isim"] = $isim;
        $_SESSION["sifre"] = $sifre;

       header('Location:forStudents/eozdem_index.php');

    }else if($admin_giris_isim == "getem" && md5($admin_giris_sifre) == $sifre) {

        $_SESSION["login"] = 'true';
        $_SESSION["isim"] = $isim;
        $_SESSION["sifre"] = $sifre;

       header('Location:forStudents/getem_index.php');

    }else if($admin_giris_isim == "cbindal" && md5($admin_giris_sifre) == $sifre) {

        $_SESSION["login"] = 'true';
        $_SESSION["isim"] = $isim;
        $_SESSION["sifre"] = $sifre;

       header('Location:forStudents/cbindal_index.php');

    }

    else{

        header('Location:adminError.php');

    }
    
    
    ?>