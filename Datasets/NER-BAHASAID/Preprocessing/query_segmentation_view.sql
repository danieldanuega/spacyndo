CREATE VIEW tbl_kalimat_times_vw AS
SELECT DISTINCT
a.id_kalimat,
a.kalimat,
b.waktu
--count(*)
FROM tbl_kalimat a
JOIN tbl_times b
ON a.id_kalimat = b.id_kalimat
WHERE a.is_correct = 1 and b.is_valid = 1 --and b.is_correct = 1
order by a.id_kalimat

select * from tbl_times

/*
SELECT DISTINCT 
a.id_kalimat,
a.kalimat,
b.nama_event,
count(a.id_kalimat) total
FROM tbl_kalimat a
JOIN tbl_event b
ON a.id_kalimat = b.id_kalimat
WHERE a.is_correct = 1 and not b.is_valid = 0
group by
a.id_kalimat,
a.kalimat,
b.nama_event
having count(a.id_kalimat) > 1
*/