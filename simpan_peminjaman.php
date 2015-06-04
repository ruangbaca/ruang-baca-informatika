<?php
include 'connect.php';
$connect = new mysqli('localhost', 'root', '', 'dbruangbaca');
// read.php
// Buka koneksi dengan DBMS via mysqli_connect

if (isset($_POST)) {
   $sql = "INSERT INTO peminjaman VALUES ('', '$_POST[id_petugas]', '$_POST[id_anggota]', '$_POST[judul_buku]', '$_POST[tgl_peminjaman]', '$_POST[tgl_pengembalian]', '$_POST[denda]')";
    $exe3 = mysqli_query($connect,$sql);
}

header("location:peminjaman.php");
?>
