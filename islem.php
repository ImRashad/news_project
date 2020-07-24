<?php

include 'baglan.php';
putenv("TZ=Europe/Istanbul");


// MENU EKLE -------------------------------------------------------------------------------------------
if (isset($_POST['menukaydet'])) {


   $menuekle = $baglan->prepare("INSERT into menu (menu_adi,menu_url) VALUES('".$_POST['menu_adi']."','".$_POST['menu_url']."')"  );

    $menuekle->execute();
  
   
     header('location:menu-ekle.php?durum=ok');

      }


// MENU DUZENLE --------------------------------------------------------------------------------------------

      if (isset($_POST['menuduzenle'])) {

         $menu_id = $_POST['menu_id'];

         $menuduzenle = $baglan->prepare("UPDATE menu  SET menu_adi='".$_POST['menu_adi']."', menu_url='".$_POST['menu_url']."' WHERE menu_id='$menu_id'");

    $menuduzenle->execute();
  
   
     header('location:menu-duzenle.php?durum=ok& menu_id=$menu_id');

      }


// MENU SIL -----------------------------------------------------------------------------------------

if (isset($_GET['menusil'])=="ok"){


   $menusil = $baglan->prepare("DELETE FROM menu WHERE menu_id='".$_GET['menu_id']."'");

    $menusil->execute();
  
   
     header('location:menu.php?durum=ok');

      }
     
//  LOGGIN  --------------------------------------------------------------------------------------------

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


//  SLIDER EKLE  ------------------------------------------------------------------------------------------------------------------

 
if (isset($_POST['sliderkaydet'])){

    $uploads_dir = 'uploads';

    @$tmp_name = $_FILES['slidergorsel']["tmp_name"];
    @$name = $_FILES['slidergorsel']["name"];

    $benzersizsayi1 = rand(20000,30000);
        $benzersizsayi2 = rand(20000,30000);
            $benzersizsayi3 = rand(20000,30000);
                $benzersizsayi4 = rand(20000,30000);

                $benzersizad= $benzersizsayi1.$benzersizsayi2.$benzersizsayi3.$benzersizsayi4;

                $refimgyol= substr($uploads_dir, 0)."/".$benzersizad.$name;
                @move_uploaded_file($tmp_name, "$uploads_dir/$benzersizad$name");

                $sliderekle = $baglan->prepare("INSERT into slider (slider_ad,slider_url,slider_resimyol, slider_sira) VALUES('".$_POST['slider_ad']."','".$_POST['slider_url']."','".$refimgyol."','".$_POST['slider_sira']."')"  );

                  $sliderekle->execute();
  
   
     header('location:slider-ekle.php?durum=ok');
   }
   
  

// SLIDER SIL----------------------------------------------------------------------------------------------------------------------------------


if (isset($_GET['slidersil'])=="ok"){


   $slidersil = $baglan->prepare("DELETE FROM slider WHERE slider_id='".$_GET['slider_id']."'");

    $slidersil->execute();
  
   
     header('location:slider.php?durum=ok');

      }
     






// SAYFA EKLE ---------------------------------------------------------------------------------------------------------------------------

if (isset($_POST['sayfakaydet'])) {

  $zaman = date('Y-m-d H:i');


   $sayfaekle = $baglan->prepare("INSERT into sayfa (sayfa_ad,sayfa_icerik,sayfa_sira,sayfa_anasayfa,sayfa_tarih) VALUES('".$_POST['sayfa_ad']."','".$_POST['sayfa_icerik']."','".$_POST['sayfa_sira']."','".$_POST['sayfa_anasayfa']."','".$zaman."')"  );

    $sayfaekle->execute();
  
   
     header('location:sayfa-ekle.php?durum=ok');

      }

// SAYFA SIL -------------------------------------------------------------------------------------------------------------------------------------

if (isset($_GET['sayfasil'])=="ok"){


   $sayfasil = $baglan->prepare("DELETE FROM sayfa WHERE sayfa_id='".$_GET['sayfa_id']."'");

    $sayfasil->execute();
  
   
     header('location:sayfa.php?durum=ok');

      }


//  HABER EKLE  ------------------------------------------------------------------------------------------------------------------

 
if (isset($_POST['haberkaydet'])){

    $uploads_dir = 'uploads/haberler';

    @$tmp_name = $_FILES['habergorsel']["tmp_name"];
    @$name = $_FILES['habergorsel']["name"];

    $benzersizsayi1 = rand(20000,30000);
        $benzersizsayi2 = rand(20000,30000);
            $benzersizsayi3 = rand(20000,30000);
                $benzersizsayi4 = rand(20000,30000);

                $benzersizad= $benzersizsayi1.$benzersizsayi2.$benzersizsayi3.$benzersizsayi4;

                $refimgyol= substr($uploads_dir, 0)."/".$benzersizad.$name;
                @move_uploaded_file($tmp_name, "$uploads_dir/$benzersizad$name");


              $haberzaman = date("Y-m-d H:i");

                $haberekle = $baglan->prepare("INSERT into haber (haber_ad,haber_detay,haber_resimyol,haber_zaman) VALUES('".$_POST['haber_ad']."','".$_POST['haber_detay']."','".$refimgyol."','".$haberzaman."')"  );

                  $haberekle->execute();
  
   
     header('location:haber-ekle.php?durum=ok');
   }
   
  






// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------

if (isset($_GET['habersil'])=="ok"){


   $habersil = $baglan->prepare("DELETE FROM haber WHERE haber_id='".$_GET['haber_id']."'");

    $habersil->execute();
  
   
     header('location:haber.php?durum=ok');

      }






//  HABER EKLE IQtisadiyyat ------------------------------------------------------------------------------------------------------------------

 
if (isset($_POST['haberkaydetiqt'])){

    $uploads_dir = 'uploads/haberler';

    @$tmp_name = $_FILES['habergorseliqt']["tmp_name"];
    @$name = $_FILES['habergorseliqt']["name"];

    $benzersizsayi1 = rand(20000,30000);
        $benzersizsayi2 = rand(20000,30000);
            $benzersizsayi3 = rand(20000,30000);
                $benzersizsayi4 = rand(20000,30000);

                $benzersizad= $benzersizsayi1.$benzersizsayi2.$benzersizsayi3.$benzersizsayi4;

                $refimgyoliqt= substr($uploads_dir, 0)."/".$benzersizad.$name;
                @move_uploaded_file($tmp_name, "$uploads_dir/$benzersizad$name");


              $haberzamaniqt = date("Y-m-d H:i");

                $haberekleiqt = $baglan->prepare("INSERT into haberiqt (haber_ad_iqt,haber_detay_iqt,haber_resimyol_iqt,haber_zaman_iqt) VALUES('".$_POST['haber_ad_iqt']."','".$_POST['haber_detay_iqt']."','".$refimgyoliqt."','".$haberzamaniqt."')"  );

                  $haberekleiqt->execute();
  
   
     header('location:haber-ekleiqt.php?durum=ok');
   }
   
  
// HABER SIL IQTISADIYYAT-------------------------------------------------------------------------------------------------------------------------------------

if (isset($_GET['habersiliqt'])=="ok"){


   $habersiliqt = $baglan->prepare("DELETE FROM haberiqt WHERE haber_id_iqt='".$_GET['haber_id_iqt']."'");

    $habersiliqt->execute();
  
   
     header('location:haberiqt.php?durum=ok');

      }




?>