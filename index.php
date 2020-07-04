<?php include('header.php')?>
    <section id="main-content">
      <section class="wrapper site-min-height">
        <h3><i class="fa fa-angle-right"></i> Dashboard</h3>
        <div class="row mt">
          <div class="col-lg-12">
                <div class="row">
                    <!-- WEATHER PANEL -->
                    <div class="col-md-4 col-sm-4 mb">
                        <div class="weather pn">
                            <i class="fa fa-anchor fa-4x"></i>
                            <?php 
                            include("koneksi.php");
                            $sql = "SELECT * FROM `wisata` WHERE id_kategori = 2";
                            $query = mysqli_query($db, $sql);
                            ?>
                              <h2> <?php echo mysqli_num_rows($query) ?></h2>
                            <h4>Pantai</h4>
                        </div>
                    </div>         
                    <div class="col-lg-4 col-md-4 col-sm-4 mb">
                        <div class="weather-3 pn centered" style="    background: lightseagreen;">
                            <i class="fa fa-bell"></i>
                            <?php 
                            include("koneksi.php");
                            $sql = "SELECT * FROM `wisata` WHERE id_kategori = 4";
                            $query = mysqli_query($db, $sql);
                            ?>
                              <h1> <?php echo mysqli_num_rows($query) ?></h1>
                            <div class="info">
                                <div class="row">
                                    <h3 class="centered">Taman</h3>
                                    <div class="col-sm-6 col-xs-6 pull-left">
                                        <p class="goleft"><i class="fa fa-tint"></i> Malang</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 mb">
                        <div class="gunung pn">
                            <i class="fa fa-pagelines fa-4x"></i>
                            <?php 
                            include("koneksi.php");
                            $sql = "SELECT * FROM `wisata` WHERE id_kategori = 1";
                            $query = mysqli_query($db, $sql);
                            ?>
                              <h2> <?php echo mysqli_num_rows($query) ?></h2>
                            <h4>Gunung</h4>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 mb">
                        <div class="weather-3 pn centered" style="background: royalblue;">
                            <i class="fa fa-puzzle-piece"></i>
                            <?php 
                            include("koneksi.php");
                            $sql = "SELECT * FROM `wisata` WHERE id_kategori = 4";
                            $query = mysqli_query($db, $sql);
                            ?>
                              <h1> <?php echo mysqli_num_rows($query) ?></h1>
                            <div class="info">
                                <div class="row">
                                    <h3 class="centered">Wahana</h3>
                                    <div class="col-sm-6 col-xs-6 pull-left">
                                        <p class="goleft"><i class="fa fa-tint"></i> Malang</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 mb">
                        <div class="air pn">
                            <i class="fa fa-cloud fa-4x"></i>
                            <?php 
                            include("koneksi.php");
                            $sql = "SELECT * FROM `wisata` WHERE id_kategori = 5";
                            $query = mysqli_query($db, $sql);
                            ?>
                              <h2> <?php echo mysqli_num_rows($query) ?></h2>
                            <h4>Air Terjun</h4>
                        </div>
                    </div>          
                    <div class="col-lg-4 col-md-4 col-sm-4 mb">
                        <div class="weather-3 pn centered">
                            <i class="fa fa-bars"></i>
                            <?php 
                            include("koneksi.php");
                            $sql = "SELECT * FROM `wisata`";
                            $query = mysqli_query($db, $sql);
                            ?>
                              <h1> <?php echo mysqli_num_rows($query) ?></h1>
                            <div class="info">
                                <div class="row">
                                    <h3 class="centered">Semua Data</h3>
                                    <div class="col-sm-6 col-xs-6 pull-left">
                                        <p class="goleft"><i class="fa fa-tint"></i> Destinasi Wisata Malang</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 mb">
                    <div class="dmbox">
                        <div class="service-icon">
                            <a class="" href="#"><i class="dm-icon fa fa-user fa-3x"></i></a>
                        </div>
                        <h4>7. Garis Sanubari</h4>
                        <p> 1741160070</p>
                        <p>Jaringan Telekomunikasi Digital - 3E</p>
                        </div>
                    </div>
                    <!-- end dmbox -->
                    <div class="col-md-3 col-sm-3 mb">
                        <div class="dmbox">
                            <div class="service-icon">
                                <a class="" href="#"><i class="dm-icon fa fa-user fa-3x"></i></a>
                            </div>
                            <h4>10. M. Agin Syahansyah</h4>                  
                            <p> 1741160062</p>
                            <p>Jaringan Telekomunikasi Digital - 3E</p>
                        </div>
                    </div>
                    <!-- end dmbox -->
                    <div class="col-md-3 col-sm-3 mb">
                        <div class="dmbox">
                            <div class="service-icon">
                                <a class="" href="#"><i class="dm-icon fa fa-user fa-3x"></i></a>
                            </div>
                            <h4>14. Mohammad Miqdad Hasfhi Amien</h4>                  
                            <p> 1741160124</p>
                            <p>Jaringan Telekomunikasi Digital - 3E</p>
                        </div>
                    </div>
                    <!-- end dmbox -->
                    <div class="col-md-3 col-sm-3 mb">
                        <div class="dmbox">
                            <div class="service-icon">
                                <a class="" href="#"><i class="dm-icon fa fa-user fa-3x"></i></a>
                            </div>
                            <h4>19. Putri Ayu Zartika</h4>                  
                            <p> 1741160092</p>
                            <p>Jaringan Telekomunikasi Digital - 3E</p>
                        </div>
                    </div>
              </div>
            </div>
          </div>
        </section>
</section>
<?php include('footer.php')?>