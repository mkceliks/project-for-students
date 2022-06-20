<?php include_once 'serverside/server.php'; ?>

    <?php 
    
    

    
    ob_start();
    session_start();

    $admin_giris_isim  = $_POST["adminisim"];
    $admin_giris_sifre = $_POST["adminPassword"];

    
    $sql = "SELECT isim, sifre FROM admin WHERE isim='$admin_giris_isim' ";

    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);

    
    $isim = $row["isim"];
    $sifre = $row["sifre"];
    

    if($admin_giris_isim == "algorithms" && md5($admin_giris_sifre) == $sifre){ //md5 DB üzerinde bir şifrelemedir

        $_SESSION["login"] = 'true';
        $_SESSION["isim"] = $isim;
        $_SESSION["sifre"] = $sifre;

       header('Location:lessons/algorithms_index.php');
    }else if ($admin_giris_isim == "theoryofcomputation" && md5($admin_giris_sifre) == $sifre) {

        $_SESSION["login"] = 'true';
        $_SESSION["isim"] = $isim;
        $_SESSION["sifre"] = $sifre;

       header('Location:lessons/toc_index.php');
    }else if ($admin_giris_isim == "datamng" && md5($admin_giris_sifre) == $sifre) {

        $_SESSION["login"] = 'true';
        $_SESSION["isim"] = $isim;
        $_SESSION["sifre"] = $sifre;

       header('Location:lessons/datamng_index.php');
    }else if ($admin_giris_isim == "datastr" && md5($admin_giris_sifre) == $sifre) {

        $_SESSION["login"] = 'true';
        $_SESSION["isim"] = $isim;
        $_SESSION["sifre"] = $sifre;

       header('Location:lessons/datastr_index.php');
    }else if ($admin_giris_isim == "digidesign" && md5($admin_giris_sifre) == $sifre) {

        $_SESSION["login"] = 'true';
        $_SESSION["isim"] = $isim;
        $_SESSION["sifre"] = $sifre;

       header('Location:lessons/digidesign_index.php');
    }else if ($admin_giris_isim == "digilab" && md5($admin_giris_sifre) == $sifre) {

        $_SESSION["login"] = 'true';
        $_SESSION["isim"] = $isim;
        $_SESSION["sifre"] = $sifre;

       header('Location:lessons/digilab_index.php');
    }else if ($admin_giris_isim == "electronics" && md5($admin_giris_sifre) == $sifre) {

        $_SESSION["login"] = 'true';
        $_SESSION["isim"] = $isim;
        $_SESSION["sifre"] = $sifre;

       header('Location:lessons/electronics_index.php');
    }else{

        header('Location:adminError.php');

    }
    
    
    ?>