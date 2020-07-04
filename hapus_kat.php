<?php
include("koneksi.php");
if( isset($_GET['id_kategori']) ){
    
    $id_kategori = $_GET['id_kategori'];
    
    $sql = "DELETE FROM kategori WHERE id_kategori=$id_kategori";
    $query = mysqli_query($db, $sql) or die (mysqli_connect_error());
    
    if( $query ){
        header('Location: data_destinasi.php');
    } else {
        die("gagal menghapus...");
    }
} else {
    die("akses dilarang...");
}
?>