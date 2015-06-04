<?php
include 'connect.php';
if (isset($_GET['id'])) {
    $dbh->exec("DELETE FROM peminjaman WHERE id = '$_GET[id]'");
}
header("location:peminjaman.php")
?>