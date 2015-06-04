<?php
include 'connect.php';


if (isset($_POST)) {
    $sql = "UPDATE peminjaman SET id_petugas = '$_POST[id_petugas]',
										id_anggota = '$_POST[id_anggota]',
										id_buku = '$_POST[judul_buku]',
                                     tgl_peminjaman = '$_POST[tgl_peminjaman]',
                                     tgl_pengembalian  = '$_POST[tgl_pengembalian]',
									 denda = '$_POST[denda]'
                                 WHERE id_peminjaman = '$_POST[id_peminjaman]' ";
    $dbh->exec($sql);
	
}
echo $sql;

header("location:peminjaman.php");
?>