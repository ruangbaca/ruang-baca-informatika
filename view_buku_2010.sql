create view view_buku_2010
as 
select id_buku, id_rak, judul, pengarang, penerbit, jml_buku, th_terbit
from buku where th_terbit = '2010';
SELECT * FROM dbruangbaca.view_buku_2010;