<?php include('header.php')?>        
<section id="main-content">
    <section class="wrapper">
        <div class="tab-pane">
            <div class="row mt">
                <div class="col-lg-12">
                    <div class="form-panel">
                        <h4><i class="fa fa-angle-right"></i> Tambah Kategori</h4><br>
                        <div class=" form">
                            <form class="cmxform form-horizontal style-form" id="commentForm" method="POST" action="action_tambahkat.php">
                                <div class="form-group ">
                                    <label for="cname" class="control-label col-lg-2">Kategori</label>
                                    <div class="col-lg-10">
                                        <input class=" form-control" id="nama_kat" name="nama_kat" minlength="2" type="text" required placeholder="Nama Kategori" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <button class="btn btn-theme" name="save" type="submit">Save</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="content-panel" style="margin:10px;">
                        <h4><i class="fa fa-angle-right"></i> Kategori Destinasi Wisata Kota Malang</h4><br>
                        <section id="unseen">
                            <table class="table table-bordered table-striped table-condensed">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama Kategori</th>
                                        <th>Edit</th>
                                        <th>Hapus</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                    include("koneksi.php");
                                    $sql = "SELECT * FROM kategori";
                                    $query = mysqli_query($db, $sql);
                                    while($data = mysqli_fetch_array($query)){
                                        echo "
                                        <tr>
                                        <td>".$data['id_kategori']."</td>
                                        <td>".$data['nama_kat']."</td>
                                        <td><a href='edit_kat.php?id_kategori=".$data['id_kategori']."'><button class='btn btn-primary btn-xs'><i class='fa fa-pencil'></i></button></a></td>
                                        <td><button class='btn btn-danger btn-xs' data-target='#myModal".$data['id_kategori']."' data-toggle='modal'><i class='fa fa-trash-o'></i></button></td>
                                        </tr>
                                        <div class='modal fade' id='myModal".$data['id_kategori']."' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' aria-hidden='true'>
                                        <div class='modal-dialog'>
                                        <div class='modal-content'>
                                        <div class='modal-header'>
                                        <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
                                        <h4 class='modal-title' id='myModalLabel'>Hapus Data</h4>
                                        </div>
                                        <div class='modal-body'>
                                        Apakah Anda yakin akan menghapus kategori ".$data['nama_kat']."
                                        </div>
                                        <div class='modal-footer'>
                                        <button type='button' class='btn btn-default'data-dismiss='modal'>Cancel</button><a href='hapus_kat.php?id_kategori=".$data['id_kategori']."'><button type='button' class='btn btn-danger'>Hapus</button></a>
                                        </div>
                                        </div>
                                        </div>
                                        </div>";}
                                    ?>
                                </tbody>
                            </table>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </section>
</section>
<?php include('footer.php')?>