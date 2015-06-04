<?php
session_start();
include "koneksi.php";
$pass=md5($_POST['password']);
$sql="SELECT *from user WHERE username='$_POST[username]' and password='$pass'";
$login=mysql_query($sql);
if ($login){
$ketemu=mysql_num_rows($login);
//Apabila user name dan password di temukan(valid)
if($ketemu>0){
//echo "home";
$huser=mysql_fetch_array($login);
session_register('user');
// isi dari variabel session

header('location:home.php'); // buka hal input berita
}
else{
echo "
<script>
alert ('Username dan Password salah');
window.location='http://localhost/dbruangbaca/index.php';
</script>
";
//header ("Location:index.php");
}
}else {
die(''.mysql_error());
}
?>