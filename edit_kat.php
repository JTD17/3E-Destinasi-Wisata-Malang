<?php include('header.php')?>
<?php
include("koneksi.php");
if( !isset($_GET['id_wisata']) ){
    header('Location: data_destinasi.php');
}

$id_kategori = $_GET['id_kategori'];

$sql = "SELECT * FROM kategori WHERE id_kategori=$id_kategori";
$query = mysqli_query($db, $sql);
$data = mysqli_fetch_assoc($query);

if( mysqli_num_rows($query) < 1 ){
    die("data tidak ditemukan...");
}
?>
      
<section id="main-content">
    <section class="wrapper">
        <div class="tab-pane">
            <div class="row mt">
                <div class="col-lg-12">
                    <div class="form-panel">
                        <h4><i class="fa fa-angle-right"></i> Edit Kategori</h4><br>
                        <div class=" form">
                            <form class="cmxform form-horizontal style-form" id="commentForm" method="POST" action="action_editkat.php">
                                <div class="form-group ">
                                    <label for="cname" class="control-label col-lg-2">Id</label>
                                    <div class="col-lg-10">
                                        <input class=" form-control" id="disabledInput" name="id_kategori" minlength="2" type="text" required value="<?php echo $data['id_kategori'] ?>" />
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="cname" class="control-label col-lg-2">Kategori</label>
                                    <div class="col-lg-10">
                                        <input class=" form-control" id="nama_kat" name="nama_kat" minlength="2" type="text" required placeholder="Nama Kategori" value="<?php echo $data['nama_kat'] ?>" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <button class="btn btn-theme" name="edit" type="submit">Edit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>    
        </div>
    </section>
</section>
<?php include('footer.php')?>