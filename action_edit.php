<?php
include("koneksi.php");

if(isset($_POST['save'])){
    $id_wisata = $_POST['id_wisata'];
    $nama_wisata = $_POST['nama_wisata'];
    $id_kategori = $_POST['id_kategori'];
    $alamat = $_POST['alamat'];
    $info = $_POST['info'];
    $jam_buka = $_POST['jam_buka'];
    $jam_tutup = $_POST['jam_tutup'];
    $harga = $_POST['harga'];
   
    $sql = "UPDATE wisata SET nama_wisata='$nama_wisata', id_kategori='$id_kategori', alamat='$alamat', info='$info', jam_buka='$jam_buka', jam_tutup='$jam_tutup', harga='$harga' WHERE id_wisata=$id_wisata";
    $query = mysqli_query($db, $sql);
    if( $query ) {
    header('Location: data_destinasi.php');
    } else {
        die("Gagal menyimpan perubahan...");
    }
} else {
    die("Akses dilarang...");
}
?>