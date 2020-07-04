<?php
include("koneksi.php");
if(isset($_POST['edit'])){
    $id_komentar = $_POST['id_komentar'];
    $rating = $_POST['rating'];
    $email = $_POST['email'];
    $komentar = $_POST['komentar'];

    $sql = "UPDATE komentar SET email='$email', komentar='$komentar', rating = '$rating' WHERE id_komentar=$id_komentar";
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