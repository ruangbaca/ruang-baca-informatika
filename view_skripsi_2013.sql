create view view_skripsi_2013
as 
select id_buku, id_rak, judul, pengarang, penerbit, tahun
from skripsi where tahun = '2013';
SELECT * FROM dbruangbaca.view_skripsi_2013;