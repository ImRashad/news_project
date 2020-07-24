
<?php 

include 'header.php';

include 'sidebar.php';  



?>
<head>
  
  <script src="https://cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
</head>

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


                 <input type="submit" class="btn btn-success" name="sayfakaydet" value="Sayfa Kaydet">
                         <hr>

                         </div>





                            <label>Sayfa Adi</label><br>
                            <input class="col-md-6" type="text" name="sayfa_ad" placeholder="Sayfa adi gir...">
                            <br><br>
                            <label>Sayfa Icerik</label><br>
                            <textarea name="sayfa_icerik"  class="ckeditor"></textarea>
                             <br><br>
                            <label>Sayfa sira</label><br>
                            <input class="col-md-6" type="text" name="sayfa_sira" placeholder="Sira girin...">
                             <br><br>
                          
                             <div class="form-group col-md-3" >
                                            <label>Ana Sayfada Goster</label>
                                            <select name="sayfa_anasayfa" class="form-control">
                                                <option value="0">Hayir</option>
                                                <option value="1">Evet</option>
                                               
                                            </select>
                                        </div>
                             


                    
                         </form>





                        
                    </div>
                </div>

            </div>
            <!-- /. PAGE INNER  -->
        </div>

        <?php  include 'footer.php';  ?>