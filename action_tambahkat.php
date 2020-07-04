<?php
include("koneksi.php");
if(isset($_POST['save'])){
    $id_kategori = $_POST['id_kategori'];
    $nama_kat = $_POST['nama_kat'];

    $sql = "INSERT INTO kategori (id_kategori, nama_kat) VALUE ('$id_kategori','$nama_kat')";
    $query = mysqli_query($db, $sql) or die (mysqli_connect_error());

    if( $query ) {
        header('Location: data_kat.php?status=sukses');
    } else {
        header('Location: data_kat.php?status=gagal');
    }
} else {
    die("Akses dilarang...");
}
?>