<?php include('header.php')?>
<?php include('koneksi.php')?>     
<section id="main-content">
    <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> Data Destinasi Wisata Kota Malang</h3>
        <div class="row mt">
            <div class="col-md-12">      
            <div class="content-panel">
                <section id="unseen">                
                    <table class="table table-bordered table-striped table-condensed">
                        <thead>
                            <tr>
                                <th><i class="fa fa-location-arrow"></i> Nama Destinasi Wisata</th>
                                <th class="hidden-phone"><i class="fa fa-tags"></i> Kategori</th>
                                <th><i class="fa fa-comments"></i> Komentar</th>
                                <th><i class="fa fa-eye"></i> Lihat</th>
                                <th><i class="fa fa-edit"></i> Edit</th>
                                <th><i class="fa fa-trash-o"></i> Hapus</th>
                            </tr>
                        </thead>
                        <tbody>
                              <?php
                              $sql = "SELECT wisata.id_wisata, wisata.nama_wisata, kategori.nama_kat, wisata.alamat, wisata.info, wisata.jam_buka, wisata.jam_tutup, wisata.harga FROM wisata, kategori WHERE wisata.id_kategori=kategori.id_kategori";
                               $query = mysqli_query($db, $sql);
                               while($data = mysqli_fetch_array($query)){ echo "
                               <tr>
                               <td>".$data['nama_wisata']."</td>
                               <td>".$data['nama_kat']."</td>
                               <td><a href='komentar.php?id_wisata=".$data['id_wisata']."'><button class='btn btn-warning btn-xs'><i class='fa fa-comments'></i></button></td>
                               <td><a href='lihat.php?id_wisata=".$data['id_wisata']."'><button class='btn btn-success btn-xs'><i class='fa fa-eye'></i></button></a></td>
                               <td><a href='edit_destinasi.php?id_wisata=".$data['id_wisata']."'><button class='btn btn-primary btn-xs'><i class='fa fa-pencil'></i></button></a></td>
                               <td><button class='btn btn-danger btn-xs' data-target='#myModal".$data['id_wisata']."' data-toggle='modal'><i class='fa fa-trash-o '></i></button></td>
                               </tr>
                               <div class='modal fade' id='myModal".$data['id_wisata']."' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' aria-hidden='true'>
                               <div class='modal-dialog'>
                               <div class='modal-content'>
                               <div class='modal-header'>
                               <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
                               <h4 class='modal-title' id='myModalLabel'>Hapus Data</h4>
                               </div>
                               <div class='modal-body'> Apakah Anda yakin akan menghapus data ".$data['nama_wisata']."</div>
                               <div class='modal-footer'>
                               <button type='button' class='btn btn-default'data-dismiss='modal'>Cancel</button> <a href='hapus.php?id=".$data['id_wisata']."'><button type='button' class='btn btn-danger'>Hapus</button></a>
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
    </section>
</section>
<?php include('footer.php')?>