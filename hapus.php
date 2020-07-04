<?php
include("koneksi.php");
if( isset($_GET['id']) ){
    
    $id = $_GET['id'];
    
    $sql = "DELETE FROM wisata WHERE id_wisata=$id";
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