<?php 

include 'header.php';

include 'sidebar.php'; 

error_reporting(0);
 ?>

  <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">SLIDER</h1>
                        <h1 class="page-subhead-line">Slider ayarlarini bu hisseden duzelde bilersiniz... </h1>

                    </div>


                        <div class="col-md-12">


                        <a href="slider-ekle.php"> <button class="btn btn-success" >Slider Ekle</button></a>
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
                                            <th style="width: 400px">Slider ad</th>
                                            <th>Slider Resmi</th>
                                             <th>Slider Sira</th>
                                            <th style="width: 20px"></th>
                                            <th style="width: 20px"></th>
                                        </tr>
                                    </thead>
                                    <tbody>


                                      <?php 

                                      include 'baglan.php';
                                       $slidersor = $baglan->query("SELECT * FROM slider ");
                                      

                                      while ($slidercek = $slidersor->fetch_array()) {

                                     ?>



                                        <tr>
                                            <td><?php echo $slidercek['slider_id']; ?></td>
                                            <td><?php echo $slidercek['slider_ad']; ?></td>
                                            <td>
                                             <img width="100" src="<?php echo $slidercek['slider_resimyol']; ?>"> 
                                             </td>


                                            <td><input type="text" name="slider_sira" value="<?php echo $slidercek['slider_sira']; ?>">

                                            </td>


                                             <td><a href="islem.php?slider_id=<?php   echo $slidercek['slider_id'] ?>&slidersil=ok"><button class="btn btn-danger">Sil</button></a></td>
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