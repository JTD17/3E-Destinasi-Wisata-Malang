<?php
include("koneksi.php");
if( isset($_GET['id_komentar']) ){
    
    $id_komentar = $_GET['id_komentar'];
    
    $sql = "DELETE FROM komentar WHERE id_komentar=$id_komentar";
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