<?php
$konek=mysql_connect ( "localhost", "root", "");
if ($konek) {
} else {echo "server mysql belum aktif";}
$db=mysql_select_db("dbruangbaca");
if ($db) {
} 
else {
echo "database belum aktif";
}
?>