create view view_pi_2014
as 
select id_buku, id_rak, judul, pengarang, penerbit, tahun
from pi where tahun = '2014';
SELECT * FROM dbruangbaca.view_pi_2014;