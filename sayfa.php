<?php 

include 'header.php';

include 'sidebar.php'; 

error_reporting(0);
 ?>

  <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">SAYFA</h1>
                        <h1 class="page-subhead-line">Sayfa ayarlarini bu hisseden duzelde bilersiniz... </h1>

                    </div>


                        <div class="col-md-12">


                        <a href="sayfa-ekle.php"> <button class="btn btn-success" >Sayfa Ekle</button></a>
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
                                            <th style="width: 400px">Sayfa ad</th>
                                            <th >ANASAYFADA goster</th>
                                            <th style="width: 20px"></th>
                                        </tr>
                                    </thead>
                                    <tbody>


                                      <?php 

                                      include 'baglan.php';
                                       $sayfasor = $baglan->query("SELECT * FROM sayfa ");
                                      

                                      while ($sayfacek = $sayfasor->fetch_array()) {

                                     ?>



                                        <tr>
                                            <td><?php echo $sayfacek['sayfa_id']; ?></td>
                                            <td><?php echo $sayfacek['sayfa_tarih']; ?></td>
                                            <td><?php echo $sayfacek['sayfa_ad']; ?></td>
                                            <td><?php 


                                            if ($sayfacek['sayfa_anasayfa']==0) {
                                              echo "HAYIR";

                                             
                                            } elseif ($sayfacek['sayfa_anasayfa']==1) {
                                              echo "EVET";
                                            }



                                            ?></td>
                                            <td><a href="sayfa-duzenle.php?menu_id=<?php   echo $sayfacek['sayfa_id'] ?>"><button class="btn btn-primary">Duzenle</button></a></td>
                                             <td><a href="islem.php?sayfa_id=<?php   echo $sayfacek['sayfa_id'] ?>&sayfasil=ok"><button class="btn btn-danger">Sil</button></a></td>
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