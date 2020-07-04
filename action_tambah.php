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
    
    $sql = "INSERT INTO wisata (id_wisata, nama_wisata, id_kategori, alamat, info, jam_buka, jam_tutup, harga) VALUE ('$id_wisata','$nama_wisata', '$id_kategori', '$alamat', '$info', '$jam_buka','$jam_tutup','$harga')";
    $query = mysqli_query($db, $sql) or die (mysqli_connect_error());
    if( $query ) {
        header('Location: data_destinasi.php?status=sukses');
    } else {
        header('Location: tambah_data.php?status=gagal');
    }
} else {
    die("Akses dilarang...");
}
?>