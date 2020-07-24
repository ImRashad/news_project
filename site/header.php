<?php  
    include '../baglan.php';
    error_reporting(0);
    ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>



  <style>

    @import url("http://fonts.googleleapis.com/css?family=Source+Sans+Pro:300,400,700,900,300italic&");
    body,input,textarea,select
    {
font-family: 'Source Sans Pro', arial, sans-serif;
font-weight: 300;


    }
    






  </style>



<title>Xəbərlər</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="assets/font/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="assets/font/font.css" />
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" media="screen" />
<link rel="stylesheet" type="text/css" href="assets/css/style.css" media="screen" />
<link rel="stylesheet" type="text/css" href="assets/css/responsive.css" media="screen" />
<link rel="stylesheet" type="text/css" href="assets/css/jquery.bxslider.css" media="screen" />
</head>
<body>
<div class="body_wrapper">
  <div class="center">
    <div class="header_area">
      <div class="logo floatleft"><a href="#"><img style="width: 220px" src="images/xeberlogo.png" alt="" /></a></div>
     
      <div class="social_plus_search floatright">
        <div class="social">
          <ul>
            <li><a href="#" class="twitter"></a></li>
            <li><a href="#" class="facebook"></a></li>
            <li><a href="#" class="feed"></a></li>
          </ul>
        </div>
        <div class="search">
          <form action="#" method="post" id="search_form">
            <input type="text" value="Axtarış" id="s" />
            <input type="submit" id="searchform" value="search" />
            <input type="hidden" value="post" name="post_type" />
          </form>
        </div>
      </div>
    </div>


    <div class="main_menu_area">
      <ul id="nav">
<?php 
     $menusor = $baglan->query("SELECT * FROM menu ");
      while ($menucek = $menusor->fetch_array()) {

                                     ?>

                                                                                                                                                                                                                                                                                      


        <li><a href="<?php echo  $menucek['menu_url']; ?>"><?php  echo $menucek['menu_adi']; ?></a>  </li>
       
     <?php  }
      ?>
     


      </ul>
    </div>


    <div class="slider_area">
      <div class="slider">

        <ul class="bxslider">


             <?php 

                              
                                       $slidersor = $baglan->query("SELECT * FROM slider ");
                                      

                                      while ($slidercek = $slidersor->fetch_array()) {

                                     ?>

          <li>  <img width="1000" src="../<?php echo $slidercek['slider_resimyol']; ?>" alt="" />  </li>
          
          <?php } ?>

        </ul>
      </div>
    </div>



     