
     <?php   
 include '../baglan.php';


     ?>
  <div class="sidebar floatright">
 <div class="single_sidebar">
          <div class="popular">
            <h2 class="title">Ən çox oxunanlar</h2>
            <ul>

<?php 

                                 
                                    $habersor = $baglan->query("SELECT * FROM haber order by haber_hit DESC limit 5");
                                      

                                      while ($habercek = $habersor->fetch_array()) {

                                     ?>


              <li>
                <div class="single_popular">
                  <p><?php echo $habercek['haber_zaman']; ?></p>
                  <h3><?php  echo $habercek['haber_ad']; ?> <a href="haber-detay.php?haber_id=<?php echo $habercek['haber_id']; ?>" class="btn btn-link">Ətraflı</a></h3>
                </div>



              </li>
<?php   }   ?>


              </ul>
            </div>

           </div>

    
        <div class="single_sidebar"> <img src="images/add1.png" alt="" /> </div>
        <div class="single_sidebar">
          <div class="news-letter">
            <h2>Admin Panel</h2>

            <p>Admin Panelə keçid!</p>
           
            <form action="../islem.php" method="POST">
              <input type="text" placeholder="Adınız..." name="admin_kadi" />
              <input type="password" placeholder="Şifrə..." name="admin_sifre" />
              <br>
              <button type="submit" class="btn btn-col-md-3" name="loggin">Giriş</button>
            </form>
            <p class="news-letter-privacy">We do not spam. We value your privacy!</p>
          </div>
        </div>


       


           
        <div class="single_sidebar"> <img src="images/add1.png" alt="" /> </div>
        <div class="single_sidebar">
       
          <img src="images/add2.png" alt="" /> </div>
      </div>

