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


                        <a href="haber-ekleiqt.php"> <button class="btn btn-success" >Haber Ekle</button></a>
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
                                       $habersoriqt = $baglan->query("SELECT * FROM haberiqt ");
                                      

                                      while ($habercekiqt = $habersoriqt->fetch_array()) {

                                     ?>



                                        <tr>
                                            <td><?php echo $habercekiqt['haber_id_iqt']; ?></td>
                                            <td><?php echo $habercekiqt['haber_zaman_iqt']; ?></td>
                                            <td><?php echo $habercekiqt['haber_ad_iqt']; ?></td>
                                             <td><?php echo $habercekiqt['haber_hit_iqt']; ?></td>
                                           
                                             
                                           
                                            <td><a href="haber-duzenle.php?menu_id=<?php   echo $sayfacek['sayfa_id'] ?>"><button class="btn btn-primary">Duzenle</button></a></td>
                                             <td><a href="islem.php?haber_id_iqt=<?php   echo $habercekiqt['haber_id_iqt'] ?>&habersiliqt=ok"><button class="btn btn-danger">Sil</button></a></td>
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