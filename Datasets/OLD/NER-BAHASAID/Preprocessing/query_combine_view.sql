SELECT a.*, b.nama_event, c.nama_tempat
FROM tbl_kalimat a
FULL OUTER JOIN tbl_kalimat_event_vw b
ON a.id_kalimat = b.id_kalimat
FULL OUTER JOIN tbl_kalimat_fac_vw c
ON a.id_kalimat = c.id_kalimat

/*
SELECT COUNT(*)
FROM tbl_kalimat_moeny_vw
*/