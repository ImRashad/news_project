<?php 

include 'header.php';

include 'sidebar.php'; 

error_reporting(0);
 ?>

  <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">MENU</h1>
                        <h1 class="page-subhead-line">Menu ayarlarini bu hisseden duzelde bilersiniz... </h1>

                    </div>


                        <div class="col-md-12">


                        <a href="menu-ekle.php"> <button class="btn btn-success" >Menu Ekle</button></a>
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
                                            <th style="width: 400px">Menu ad</th>
                                            <th>Menu link</th>
                                            <th style="width: 20px"></th>
                                            <th style="width: 20px"></th>
                                        </tr>
                                    </thead>
                                    <tbody>


                                      <?php 

                                      include 'baglan.php';
                                       $menusor = $baglan->query("SELECT * FROM menu ");
                                      

                                      while ($menucek = $menusor->fetch_array()) {

                                     ?>



                                        <tr>
                                            <td><?php echo $menucek['menu_id']; ?></td>
                                            <td><?php echo $menucek['menu_adi']; ?></td>
                                            <td><?php echo $menucek['menu_url']; ?></td>
                                            <td><a href="menu-duzenle.php?menu_id=<?php  echo $menucek['menu_id'] ?>"><button class="btn btn-primary">Duzenle</button></a></td>
                                             <td><a href="islem.php?menu_id=<?php   echo $menucek['menu_id'] ?>&menusil=ok"><button class="btn btn-danger">Sil</button></a></td>
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