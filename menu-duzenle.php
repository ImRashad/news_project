
<?php
 error_reporting(0);

include 'header.php';

include 'sidebar.php'; 
include 'baglan.php'; 

$menu_id=$_GET['menu_id'];

 $menusor = $baglan->query("SELECT * FROM menu where menu_id='$menu_id' ");
                                      
$menucek = $menusor->fetch_array();

?>


<div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">AYARLAR</h1>

<?php    
if ($_GET['durum']=="ok") { ?>
  
                        <h1 class="page-subhead-line">OLDU... </h1>

<?php } elseif ($_GET['durum']=="no") { ?>

  <h1 class="page-subhead-line">OLMADI... </h1>
<?php } else {  ?>

<h1 class="page-subhead-line">GIRIS ELIYIN... </h1>
<?php }  ?>
                    </div>

                   </div>





                <!-- /. ROW  -->
                <div class="row">
                    <div class="col-md-12">
                        
                         <form method="POST"  action="islem.php">
                             
                            
                            <div class="col-md-12">

 <input type="hidden" name="menu_id" value="<?php echo $menucek['menu_id']; ?>">
                        <input type="submit" class="btn btn-success" name="menuduzenle" value="Menu Duzenle">
                         <hr>

                         </div>

                            <label>Menu Adi</label><br>
                            <input class="col-md-6" type="text" name="menu_adi" value="<?php echo $menucek['menu_adi']; ?>">
                            <br><br>
                            <label>Menu Linki</label><br>
                            <input class="col-md-6" type="text" name="menu_url" value="<?php echo $menucek['menu_url']; ?>">
                            
 

                    
                         </form>





                        
                    </div>
                </div>

            </div>
            <!-- /. PAGE INNER  -->
        </div>

        <?php  include 'footer.php';      ?>
