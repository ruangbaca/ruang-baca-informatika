<?php
include 'connect.php';

if (isset($_POST)) {
    $sql = "INSERT INTO tabel_mahasiswa VALUES ('', '$_POST[nim]', '$_POST[nama]')";
    $dbh->exec($sql);
}

header("location:index.php");
?>
