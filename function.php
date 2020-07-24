<?php

include 'baglan.php';


if (isset($_POST['menukaydet'])) {


   $menuekle = $baglan->prepare("INSERT into menu (menu_adi,menu_url) VALUES('".$_POST['menu_adi']."','".$_POST['menu_url']."')"  );

    $menuekle->execute();
  
   
     header('location:menu-ekle.php?durum=ok');

      }







if (isset($_GET['menusil'])=="ok"){


   $menusil = $baglan->prepare("DELETE FROM menu WHERE menu_id='".$_GET['menu_id']."'");

    $menusil->execute();
  
   
     header('location:menu.php?durum=ok');

      }
     



















session_start();
ob_start();


if (isset($_POST['loggin'])) {

$admin_kadi=$_POST['admin_kadi'];
$admin_sifre=$_POST['admin_sifre'];

if ($admin_kadi && $admin_sifre) {

	$sonuc = $baglan->query("SELECT * FROM admin WHERE admin_kadi = '$admin_kadi' AND admin_sifre = '$admin_sifre'");

    $row = $sonuc->fetch_array();

   if ($row>0) {

      $_SESSION['admin_kadi'] = $admin_kadi;

      header('location:index.php');

   } else {
   	header('location:login.php?login=no');
   }

}


}

$db->close();



?>