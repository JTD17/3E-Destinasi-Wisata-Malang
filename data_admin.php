<?php include('header.php')?>
<section id="main-content">
    <section class="wrapper">
        <!-- page start-->
        <div class="tab-pane">
            <div class="row mt">
                <div class="col-lg-12">
                    <div class="form-panel">
                        <h4><i class="fa fa-angle-right"></i> Tambah Admin</h4><br>
                        <div class=" form">
                            <form class="cmxform form-horizontal style-form" id="commentForm" method="get" action="">
                                <div class="form-group ">
                                    <label for="cname" class="control-label col-lg-2">Nama</label>
                                    <div class="col-lg-10">
                                        <input class=" form-control" id="nama" name="nama" minlength="2" type="text" required placeholder="Nama Admin" />
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="cname" class="control-label col-lg-2">Kelas</label>
                                    <div class="col-lg-10">
                                        <input class=" form-control" id="Kelas" name="Kelas" minlength="2" type="text" required placeholder="Kelas" />
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="cname" class="control-label col-lg-2">No. Absen</label>
                                    <div class="col-lg-10">
                                        <input class=" form-control" id="no" name="no" minlength="2" type="text" required placeholder="No. Absen" />
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="cname" class="control-label col-lg-2">User Name</label>
                                    <div class="col-lg-10">
                                        <input class=" form-control" id="user" name="user" minlength="2" type="text" required placeholder="User Name" />
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="cname" class="control-label col-lg-2">Password</label>
                                    <div class="col-lg-10">
                                        <input class=" form-control" id="pass" name="pass" minlength="2" type="password" required />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <button class="btn btn-theme" type="submit">Save</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="content-panel" style="margin:10px;">
                        <h4><i class="fa fa-angle-right"></i> Data Anggota Kelompok</h4><br>
                        <section id="unseen">
                            <table class="table table-bordered table-striped table-condensed">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama</th>
                                        <th>Kelas</th>
                                        <th>No. Absen</th>
                                        <th>Edit</th>
                                        <th>Hapus</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Putri</td>
                                        <td>JTD 3E</td>
                                        <td>19</td>
                                        <td><button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></td>
                                        <td><button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button></td>
                                    </tr>
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