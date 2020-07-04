<?php
include("koneksi.php");

if(isset($_POST['edit'])){

    $id_kategori = $_POST['id_kategori'];
    $nama_kat = $_POST['nama_kat'];

    $sql = "UPDATE kategori SET id_kategori='$id_kategori', nama_kat='$nama_kat' WHERE id_kategori=$id_kategori";
    $query = mysqli_query($db, $sql);

    if( $query ) {
        header('Location: data_kat.php');
    } else {
        die("Gagal menyimpan perubahan...");
    }
} else {
    die("Akses dilarang...");
}
?>