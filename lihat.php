<?php include('header.php')?> 

<?php
include("koneksi.php");
if( !isset($_GET['id_wisata']) ){
    header('Location: data_destinasi.php');
}

$id_wisata = $_GET['id_wisata'];

$sql = "SELECT wisata.id_wisata, wisata.nama_wisata, kategori.nama_kat, wisata.alamat, wisata.info, wisata.jam_buka, wisata.jam_tutup, wisata.harga FROM wisata, kategori WHERE wisata.id_kategori=kategori.id_kategori AND id_wisata=$id_wisata";
$query = mysqli_query($db, $sql);
$data = mysqli_fetch_assoc($query);

if( mysqli_num_rows($query) < 1 ){
    die("data tidak ditemukan...");
}

?>
<style>
.rating {
      float:left;
    }
    
    .rating:not(:checked) > input {
        position:absolute;
        top:-9999px;
        clip:rect(0,0,0,0);
    }

    .rating:not(:checked) > label {
        float:right;
        width:1em;
        /* padding:0 .1em; */
        overflow:hidden;
        white-space:nowrap;
        cursor:pointer;
        font-size:300%;
        /* line-height:1.2; */
        color:#ddd;
    }

    .rating:not(:checked) > label:before {
        content: '★ ';
    }

    .rating > input:checked ~ label {
        color: orange;
        
    }

    .rating:not(:checked) > label:hover,
    .rating:not(:checked) > label:hover ~ label {
        color: orange;
        
    }

    .rating > input:checked + label:hover,
    .rating > input:checked + label:hover ~ label,
    .rating > input:checked ~ label:hover,
    .rating > input:checked ~ label:hover ~ label,
    .rating > label:hover ~ input:checked ~ label {
        color: orange;
        
    }

    .rating > label:active {
        position:relative;
        top:2px;
        left:2px;
    }
</style>

<section id="main-content">
    <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> Destinasi Wisata Kota Malang</h3>
        <div class="row content-panel mt mb">
            <div class="col-md-12">
              <h2 contenteditable="true"><?php echo $data['nama_wisata'] ?></h2>
                <h4 contenteditable="true"></h4>
                <p>
                  <i class="fa fa-tags"></i> <?php echo $data['nama_kat'] ?> <strong style="margin-left:12px; margin-right: 12px;"> | </strong> 
                  <i class="fa fa-home"></i> <?php echo $data['alamat'] ?> <strong style="margin-left:12px; margin-right: 12px;"> | </strong> 
                  <i class=" fa fa-clock-o"></i> <?php echo $data['jam_buka'] ?> - <?php echo $data['jam_tutup'] ?> <strong style="margin-left:12px; margin-right: 12px;"> | </strong>
                  <i class=" fa fa-money"></i> Harga : <?php echo $data['harga'] ?>
              </p> 
            </div>
            <div class="col-md-10" style="padding-bottom: 60px;">
              <p contenteditable="true" class="mt"><?php echo $data['info'] ?></p>
            </div>
            <div class="col-md-10 ">
                <div class="room-box">
                <h4 style="margin-left: 0px; margin-bottom: 6px;">Komentar</h4>

                <div id="message"></div>

                <form class="contact-form php-mail-form" action="" method="POST">

                    <div class="form-group">
                   <div class="rating" style="font-size:60%;">
                    <input type="radio" id="star5" name="rating" value="5" /><label for="star5" title="Meh">5 stars</label>
                    <input type="radio" id="star4" name="rating" value="4" /><label for="star4" title="Kinda bad">4 stars</label>
                    <input type="radio" id="star3" name="rating" value="3" /><label for="star3" title="Kinda bad">3 stars</label>
                    <input type="radio" id="star2" name="rating" value="2" /><label for="star2" title="Sucks big tim">2 stars</label>
                    <input type="radio" id="star1" name="rating" value="1" /><label for="star1" title="Sucks big time">1 star</label>
                </div>
                        <input type="email" name="email" class="form-control" id="contact-email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email">
                        <div class="validate"></div>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" name="komentar" id="contact-message" placeholder="Komentar" rows="2" data-rule="required" data-msg="komentar"></textarea>
                        <div class="validate"></div>
                    </div>
                    <div class="form-send">
                        <button type="submit" name="save" class="btn btn-large btn-primary">Komentar</button>
                    </div>
                    <?php 
                    if(isset($_POST['save'])){

                    $id_wisata = $data['id_wisata'];
                    $email = $_POST['email'];
                    $komentar = $_POST['komentar'];
                    $rating = $_POST['rating'];

                    $sql = "INSERT INTO komentar (id_wisata, email, komentar, rating) VALUE ('$id_wisata','$email','$komentar','$rating')";
                    $query = mysqli_query($db, $sql) or die (mysqli_connect_error());

                    if( $query ) {
                    } else {
                        header('Location: data_destinasi.php?status=gagal');
                    }
                }?>
               </form>
                </div>
                
                  <?php
                    $sql = "SELECT * FROM `komentar` WHERE id_wisata = $data[id_wisata]";
                        $query = mysqli_query($db, $sql);
                        while($data = mysqli_fetch_array($query))
                            { echo "<div class='room-box'>
                                    <h5 class='text-primary'>".$data['email']."</h5><i class='fa fa-star' style='color: orange;''></i> ".$data['rating']."/5
                                    <p style='margin-top: 5px;'>".$data['komentar']."</p>    </div>
                                    ";
                                }
                        ?>
              
               
            </div>
        </div>
    </section>
</section>
<?php include('footer.php')?> 