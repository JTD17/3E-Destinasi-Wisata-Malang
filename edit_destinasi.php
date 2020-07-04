<?php include('header.php')?>  
<?php
include("koneksi.php");

if( !isset($_GET['id_wisata']) ){
    header('Location: data_destinasi.php');
}

$id_wisata = $_GET['id_wisata'];

$sql = "SELECT * FROM wisata WHERE id_wisata=$id_wisata";
$query = mysqli_query($db, $sql);
$data = mysqli_fetch_assoc($query);

if( mysqli_num_rows($query) < 1 ){
    die("data tidak ditemukan...");
}
?>
<section id="main-content">
    <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> Edit Data Destinasi <?php echo $data['nama_wisata'] ?></h3>
        
        <div class="row mt">
            <div class="col-lg-12">
                <div class="form-panel">
                    <div class=" form"><br>
                        <form class="cmxform form-horizontal style-form" id="commentForm" method="POST" action="action_edit.php">     <div class="form-group ">
                                <label for="cname" class="control-label col-lg-2">Id</label>
                                <div class="col-lg-10">
                                    <input class=" form-control" id="disabledInput" name="id_wisata" minlength="2" type="text" required value="<?php echo $data['id_wisata'] ?>" />
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="cname" class="control-label col-lg-2">Nama Destinasi Wisata</label>
                                <div class="col-lg-10">
                                    <input class=" form-control" id="cname" name="nama_wisata" minlength="2" type="text" required placeholder="Nama Destinasi Wisata" value="<?php echo $data['nama_wisata'] ?>" />
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="cemail" class="control-label col-lg-2">Kategori</label>
                                <div class="col-lg-10">             
                                    <select name="id_kategori" class="form-control"><?php $kat = $data['id_kategori']; ?> 
                                        <option value="1"<?php echo ($kat == '1')?  " selected= ''":""?>>Gunung</option>
                                        <option value="2"<?php echo ($kat == '2')?  " selected= ''":""?> >Pantai</option>
                                        <option value="3"<?php echo ($kat == '3')?  " selected= ''":""?> >Wahana</option>
                                        <option value="4"<?php echo ($kat == '4')?  " selected= ''":""?> >Taman</option>
                                        <option value="5"<?php echo ($kat == '5')?  " selected= ''":""?> >Air Terjun</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="curl" class="control-label col-lg-2">Alamat</label>
                                <div class="col-lg-10">
                                    <input class=" form-control" id="cname" name="alamat" minlength="2" type="text" required placeholder="Alamat" value="<?php echo $data['alamat'] ?>"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-2">Jam Buka</label>
                                <div class="col-md-2">
                                    <div class="input-group bootstrap-timepicker">
                                        <input type="text" class="form-control" value="<?php echo $data['jam_buka'] ?>" name="jam_buka">
                                        <span class="input-group-btn">
                                            <button class="btn btn-theme03" type="button"><i class="fa fa-clock-o"></i></button>
                                        </span>
                                    </div>
                                </div>
                                <label class="control-label col-md-1"></label>
                                <label class="control-label col-md-1">Jam Tutup</label>
                                <div class="col-md-2">
                                    <div class="input-group bootstrap-timepicker">
                                        <input type="text" class="form-control" value="<?php echo $data['jam_tutup']?>" name="jam_tutup">
                                        <span class="input-group-btn">
                                            <button class="btn btn-theme04" type="button"><i class="fa fa-clock-o"></i></button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="curl" class="control-label col-lg-2">Harga</label>
                                <div class="col-lg-10">
                                    <input class=" form-control" id="cname" name="harga" minlength="2" type="text" required placeholder="18.000" value="<?php echo $data['harga'] ?>" />
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="ccomment" class="control-label col-lg-2">Informasi Destinasi Wisata</label>
                                <div class="col-lg-10">
                                    <textarea class="form-control " id="ccomment" name="info" required rows="40"><?php echo $data['info'] ?></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-offset-2 col-lg-10">
                                    <button class="btn btn-theme" type="submit" name="save">Save</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</section>

<?php include('footer.php')?>