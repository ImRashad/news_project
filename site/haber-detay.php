
      
<?php  
include 'header.php';

include 'sidebar.php';


?>



    <div  class="content_area">

 <?php 
$haber_id=$_GET['haber_id'];
                                 
                                       $habersor = $baglan->query("SELECT * FROM haber where haber_id='$haber_id'");
                                      

                                     $habercek = $habersor->fetch_array();


$haber_hit=$habercek['haber_hit'];

$haber_hit++;

$haberhit = $baglan->query("UPDATE haber  SET haber_hit='".$haber_hit."' WHERE haber_id='$haber_id'");

                                                                      ?>

  <center>
          
<div style="height: 200px"> <img  src="../<?php  echo $habercek['haber_resimyol']; ?>"  ></div>
             
         <div style="margin-bottom: 40px"><h3><?php  echo $habercek['haber_ad'];  ?></h3> </div>
       </center> 

              
    <div style="margin-right: 40px"><?php  echo $habercek['haber_detay'];  ?></div>         


</div> 
  <?php  
  include 'footer.php';
   ?>