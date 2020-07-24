
      
<?php  
include 'header.php';


include 'sidebar.php';


?>
<head>
  <style type="text/css">
    .btn btn-secondry {
  display: inline-block;
  vertical-align: middle;
  -webkit-transform: perspective(1px) translateZ(0);
  transform: perspective(1px) translateZ(0);
  box-shadow: 0 0 1px rgba(0, 0, 0, 0);
  overflow: hidden;
  -webkit-transition-duration: 0.5s;
  transition-duration: 0.5s;
  -webkit-transition-property: color, background-color;
  transition-property: color, background-color;
}
.btn btn-secondry:hover, .btn  btn-secondry:focus, .btn  btn-secondry:active {
  -webkit-animation-name: hvr-back-pulse;
  animation-name: hvr-back-pulse;
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-delay: 0.5s;
  animation-delay: 0.5s;
  -webkit-animation-timing-function: linear;
  animation-timing-function: linear;
  -webkit-animation-iteration-count: infinite;
  animation-iteration-count: infinite;
  background-color: #2098D1;
  background-color: #2098d1;
  color: white}  
.row{
  background-color: #ececec;
   padding: 0px; 
   width: 250px; 
   height: 350px; 
   float: left;
    margin-left: 50px;
     margin-top: 40px;
      margin-bottom: 40px;
border:solid 1px #ececec;
  display: inline-block;
  vertical-align: middle;
  -webkit-transform: perspective(1px) translateZ(0);
  transform: perspective(1px) translateZ(0);
  box-shadow: 0 0 1px rgba(0, 0, 0, 0);
  -webkit-transition-duration: 0.3s;
  transition-duration: 0.3s;
  -webkit-transition-property: box-shadow;
  transition-property: box-shadow;
}
.row:hover, .row:focus, .row:active {
  box-shadow: 0 0 8px rgba(20, 20, 20,0.6);
}

.time {
    opacity: 0.9;
    line-height: 1;
}

.div {
    display: block;
}
  </style>

</head>


    <div  class="content_area">


 <?php 

                                 
                                       $habersoriqt = $baglan->query("SELECT * FROM haberiqt ");
                                      

                                      while ($habercekiqt = $habersoriqt->fetch_array()) {

                                     ?>



 <a class="a" href="haber-detay-iqt.php?haber_id_iqt=<?php echo $habercekiqt['haber_id_iqt']; ?>"><div class="row">

<div style="height: 200px; display: block;"> <img style="height: 200px !important; width: 250px" src="../<?php  echo $habercekiqt['haber_resimyol_iqt']; ?>" >

<div  class="time" style="  position: absolute;  z-index: 1; left: 0; top: 0; max-width: 60px;height: 50px; padding-top: 10px; background-color: #00FFFF;">
  
  <?php echo $habercekiqt['haber_zaman_iqt']; ?>

  
</div>

</div>



<div style="height: 118px ;padding-top: 20px;padding-right: 10px;padding-left: 10px; font-size: 16px; font-family: Arial;"><p><?php  echo   $habercekiqt['haber_ad_iqt'];  ?></p></div> 
    <div style="width: 250px; height: 32px " class="btn-group" role="group" aria-label="Basic example">

</a>

  <button style="padding: 5px; width: 50px; background-color: blue;" type="button"   class="btn btn-secondary">Like</button>
  <button style="padding: 5px; width: 80px; background-color: red;" type="button"  class="btn btn-secondary">Dislike</button>
  <div style="padding: 5px; width: 120px; text-align: center;" ><b>Baxış : <?php echo $habercekiqt['haber_hit_iqt']; ?></b></div>
</div>
             
</div>

<?php } ?>
 
</div>

          


  <?php  
  include 'footer.php';
   ?>