<?php
include 'connect.php';
if (isset($_GET['id'])) {
    $query = $dbh->query("SELECT * FROM peminjaman WHERE id = '$_GET[id_anggota]'");
    $data  = $query->fetch(PDO::FETCH_ASSOC);
} else {
    echo "ID Anggota tidak tersedia!<br /><a href='index.php'>Kembali</a>";
    exit();
}

if ($data === false) {
    echo "Data tidak ditemukan!<br /><a href='index.php'>Kembali</a>";
    exit();
}
?>

<body bgcolor="#FF99CC">
<h1 align="center">Input Data Anggota</h1>
<fieldset style="width: 50%; margin: auto;">
    <legend>Form Input Data Anggota</legend>
    
    <form action="update.php" method="post">
        <input type="hidden" name="id" value="<?php echo $data['id']; ?>" />
      <p>
            Nama<br />
            <input type="text" name="nama" required value="<?php echo $data['nama']; ?>"/>
      </p>
		
	  <p>
            TTL<br />
	        <input type="date" name="ttl" required value="<?php echo $data['ttl']; ?>"/>
	  </p>
        
        <p>
            Jenis Kelamin<br />
            <?php if ($data['jenis_kelamin'] === "Laki-Laki") : ?>
            <input type="radio" name="jenis_kelamin" value="Laki-Laki" id="laki-laki" checked /><label for="laki-laki">Laki-Laki</label>
            <input type="radio" name="jenis_kelamin" value="Perempuan" id="perempuan" /><label for="perempuan">Perempuan</label>
            <?php else : ?>
            <input type="radio" name="jenis_kelamin" value="Laki-Laki" id="laki-laki" /><label for="laki-laki">Laki-Laki</label>
            <input type="radio" name="jenis_kelamin" value="Perempuan" id="perempuan" checked /><label for="perempuan">Perempuan</label>
            <?php endif; ?>
        </p>
        
        
        <p>
            Nomor Telepon<br />
            <input type="text" name="no_telepon" required value="<?php echo $data['no_telepon']; ?>" />
        </p>
		
		<p>
            Status Anggota<br />
            <?php if ($data['status_anggota'] === "Dosen") : ?>
            <input type="radio" name="status_anggota" value="Dosen" id="Dosen" checked /><label for="Dosen">Dosen</label>
            <input type="radio" name="status_anggota" value="Mahasiswa" id="Mahasiswa" /><label for="Mahasiswa">Mahasiswa</label>
            <?php else : ?>
            <input type="radio" name="status_anggota" value="Dosen" id="Dosen" /><label for="Dosen">Dosen</label>
            <input type="radio" name="status_anggota" value="Mahasiswa" id="Mahasiswa" checked /><label for="Mahasiswa">Mahasiswa</label>
            <?php endif; ?>
        </p>
        
        <p>
            <input type="submit" value="Login" />
            <input type="reset" value="Reset" onClick="return confirm('hapus data yang telah diinput?')">
        </p>
    </form>
</fieldset>
<br />
<center><a href="index.php">&Lt; Tabel Biodata</a></center>
