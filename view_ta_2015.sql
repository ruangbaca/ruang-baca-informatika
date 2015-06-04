create view view_ta_2015
as 
select id_buku, id_rak, judul, pengarang, penerbit, tahun
from ta where tahun = '2015';
SELECT * FROM dbruangbaca.view_ta_2015;