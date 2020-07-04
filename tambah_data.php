<?php include('header.php')?>
      
<section id="main-content">
    <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> Tambah Data Destinasi Kota Malang</h3>
        
        <div class="row mt">
            <div class="col-lg-12">
                <div class="form-panel">
                    <div class=" form"><br>
                        <form class="cmxform form-horizontal style-form" id="commentForm" method="POST" action="action_tambah.php">
                            <div class="form-group ">
                                <label for="cname" class="control-label col-lg-2">Name Destinasi Wisata</label>
                                <div class="col-lg-10">
                                    <input class=" form-control" id="cname" name="nama_wisata" minlength="2" type="text" required placeholder="Nama Destinasi Wisata" />
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="cemail" class="control-label col-lg-2">Kategori</label>
                                <div class="col-lg-10">             
                                    <select name="id_kategori" class="form-control">
                                        <option value="1">Gunung</option>
                                        <option value="2">Pantai</option>
                                        <option value="3">Wahana</option>
                                        <option value="4">Taman</option>
                                        <option value="5">Air Terjun</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="curl" class="control-label col-lg-2">Alamat</label>
                                <div class="col-lg-10">
                                    <input class=" form-control" id="cname" name="alamat" minlength="2" type="text" required placeholder="Alamat" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-2">Jam Buka</label>
                                <div class="col-md-2">
                                    <div class="input-group bootstrap-timepicker">
                                        <input type="text" class="form-control timepicker-default" name="jam_buka">
                                        <span class="input-group-btn">
                                            <button class="btn btn-theme03" type="button"><i class="fa fa-clock-o"></i></button>
                                        </span>
                                    </div>
                                </div>
                                <label class="control-label col-md-1"></label>
                                <label class="control-label col-md-1">Jam Tutup</label>
                                <div class="col-md-2">
                                    <div class="input-group bootstrap-timepicker">
                                        <input type="text" class="form-control timepicker-default" name="jam_tutup">
                                        <span class="input-group-btn">
                                            <button class="btn btn-theme04" type="button"><i class="fa fa-clock-o"></i></button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="curl" class="control-label col-lg-2">Harga</label>
                                <div class="col-lg-10">
                                    <input class=" form-control" id="cname" name="harga" minlength="2" type="text" required placeholder="18.000" />
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="ccomment" class="control-label col-lg-2">Informasi Destinasi Wisata</label>
                                <div class="col-lg-10">
                                    <textarea class="form-control " id="ccomment" name="info" required rows="40"></textarea>
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