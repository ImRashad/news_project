
<?php 

include 'header.php';

include 'sidebar.php';  



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
                        
                            
                         <form method="POST"  action="islem.php"  enctype="multipart/form-data">

                            <div class="col-md-12">


                 <input type="submit" class="btn btn-success" name="sliderkaydet" value="Slider Kaydet">
                         <hr>

                         </div>

                          <div class="form-group">
                        <label class="control-label col-lg-4">Resim Ekle</label>
                        <div class="">
                            <div class="fileupload fileupload-new" data-provides="fileupload">
                                <span class="btn btn-file btn-default">
                                    <span class="fileupload-new">Yukle</span>
                                    <span class="fileupload-exists">Degistir</span>
                                    <input type="file"  name="slidergorsel">
                                </span>
                                <span class="fileupload-preview"></span>
                                <a href="#" class="close fileupload-exists" data-dismiss="fileupload" style="float: none">×</a>
                            </div>
                        </div>
                    </div>





                            <label>Slider Adi</label><br>
                            <input class="col-md-6" type="text" name="slider_ad" placeholder="Slider adi gir...">
                            <br><br>
                            <label>Slider Linki</label><br>
                            <input class="col-md-6" type="text" name="slider_url" placeholder="Yonlendirme giriniz...">
                            <br><br>
                            <label>Slider Sira</label><br>
                            <input class="col-md-6" type="number" name="slider_sira" placeholder="Sira giriniz...">
                             

                    
                         </form>





                        
                    </div>
                </div>

            </div>
            <!-- /. PAGE INNER  -->
        </div>

        <?php  include 'footer.php';  ?>