
      
<?php  
include 'header.php';

include 'sidebar.php';


?>



    <div  class="content_area">

 <?php 
$haber_id_iqt=$_GET['haber_id_iqt'];
                                 
                                       $habersoriqt = $baglan->query("SELECT * FROM haberiqt where haber_id_iqt='$haber_id_iqt'");
                                      

                                     $habercekiqt = $habersoriqt->fetch_array();


$haber_hit_iqt=$habercekiqt['haber_hit_iqt'];

$haber_hit_iqt++;

$haberhitiqt = $baglan->query("UPDATE haberiqt  SET haber_hit_iqt='".$haber_hit_iqt."' WHERE haber_id_iqt='$haber_id_iqt'");

                                                                      ?>

  <center>
          
<div style="height: 200px"> <img  src="../<?php  echo $habercekiqt['haber_resimyol_iqt']; ?>"  ></div>
             
         <div style="margin-bottom: 40px"><h3><?php  echo $habercekiqt['haber_ad_iqt'];  ?></h3> </div>
       </center> 

              
    <div style="margin-right: 40px"><?php  echo $habercekiqt['haber_detay_iqt'];  ?></div>         


</div> 
  <?php  
  include 'footer.php';
   ?>