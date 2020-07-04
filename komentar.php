<?php include('header.php')?>
<?php
include("koneksi.php");
if( !isset($_GET['id_wisata']) ){
    header('Location: data_destinasi.php');
}
$id_wisata = $_GET['id_wisata'];
$sql = "SELECT * FROM komentar WHERE id_wisata=$id_wisata";
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
                        <h4><i class="fa fa-angle-right"></i> Komentar </h4><br>
                        <div class=" form">
                        <?php
                            $sql = "SELECT * FROM `komentar` WHERE id_wisata = $data[id_wisata]";
                            $query = mysqli_query($db, $sql);
                            while($data = mysqli_fetch_array($query)){ 
                            echo "<div class='room-box'>
                            <h5 class='text-primary'>".$data['email']."</h5><i class='fa fa-star' style='color: orange;''></i> ".$data['rating']."/5
                            <p style='margin-top: 5px;'>".$data['komentar']."</p>
                            <span class='label pull-right inbox-notification'><a href='edit_kom.php?id_komentar=".$data['id_komentar']."'><button class='btn btn-primary btn-xs'>Edit</i></button></a>      
                             <button class='btn btn-danger btn-xs' data-target='#myModal".$data['id_komentar']."' data-toggle='modal'>Hapus</button></span>   
                             </div>

                             <div class='modal fade' id='myModal".$data['id_komentar']."' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' aria-hidden='true'>
                             <div class='modal-dialog'>
                             <div class='modal-content'>
                             <div class='modal-header'>
                             <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
                             <h4 class='modal-title' id='myModalLabel'>Hapus Data</h4>
                             </div>
                             <div class='modal-body'>
                             Apakah Anda yakin akan menghapus komentar dari ".$data['email']."
                             </div>
                             <div class='modal-footer'>
                             <button type='button' class='btn btn-default'data-dismiss='modal'>Cancel</button> <a href='hapus_kom.php?id_komentar=".$data['id_komentar']."'><button type='button' class='btn btn-danger'>Hapus</button></a>
                             </div>
                             </div>
                             </div>
                             </div> ";
                            }
                             ?>  
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</section>
<?php include('footer.php')?>