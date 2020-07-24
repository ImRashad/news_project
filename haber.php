<?php 

include 'header.php';

include 'sidebar.php'; 

error_reporting(0);
 ?>

  <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">HABER</h1>
                        <h1 class="page-subhead-line">Haber ayarlarini bu hisseden duzelde bilersiniz... </h1>

                    </div>


                        <div class="col-md-12">


                        <a href="haber-ekle.php"> <button class="btn btn-success" >Haber Ekle</button></a>
                         <hr>

                         </div>

                </div>
                <div class="row">
                <div class="col-md-12">
                     <!--    Hover Rows  -->
                    <div class="panel panel-default">


                       
                        <div class="panel-heading">
                            Hover Rows
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th >Eklendigi tarih</th>
                                            <th style="width: 400px">Haber ad</th>
                                            <th >Haber Hit</th>
                                            <th style="width: 20px"></th>
                                        </tr>
                                    </thead>
                                    <tbody>


                                      <?php 

                                      include 'baglan.php';
                                       $habersor = $baglan->query("SELECT * FROM haber ");
                                      

                                      while ($habercek = $habersor->fetch_array()) {

                                     ?>



                                        <tr>
                                            <td><?php echo $habercek['haber_id']; ?></td>
                                            <td><?php echo $habercek['haber_zaman']; ?></td>
                                            <td><?php echo $habercek['haber_ad']; ?></td>
                                             <td><?php echo $habercek['haber_hit']; ?></td>
                                           
                                             
                                           
                                            <td><a href="haber-duzenle.php?menu_id=<?php   echo $sayfacek['sayfa_id'] ?>"><button class="btn btn-primary">Duzenle</button></a></td>
                                             <td><a href="islem.php?haber_id=<?php   echo $habercek['haber_id'] ?>&habersil=ok"><button class="btn btn-danger">Sil</button></a></td>
                                        </tr>

                                    <?php  }   ?>


                                  
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- End  Hover Rows  -->
                  </div>
                           
                    </div>
                </div>

            </div>
            

  <?php  include 'footer.php';  ?>