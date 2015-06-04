<?php
include 'connect.php';
if (isset($_GET['id_peminjaman'])) {
    $dbh->exec("DELETE FROM peminjaman WHERE id_peminjaman = '$_GET[id_peminjaman]'");
}
header("location:peminjaman.php")
?>