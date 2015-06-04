create view view_penerbit_buku_informatika_bandung
as 
select id_buku, id_rak, judul, pengarang, penerbit
from buku where penerbit = 'Informatika Bandung';
SELECT * FROM dbruangbaca.view_penerbit_buku_informatika_bandung;