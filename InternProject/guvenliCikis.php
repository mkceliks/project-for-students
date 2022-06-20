<?php

session_start();

ob_start();
session_destroy();

echo "<script>alert('Güvenli bir şekilde çıkış yaptınız.Giriş sayfasına yönlendiriliyorsunuz...')</script>" . header("Refresh: 1; url=teacherAdmin.html");

ob_end_flush();
?>