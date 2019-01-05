CREATE TABLE tbl_ner
AS
SELECT
    tbl_kalimat.kalimat,
    tbl_event.nama_event,
    tbl_fac.nama_tempat,
    tbl_gpe.negara,
    tbl_gpe.provinsi,
    tbl_gpe.kabupaten,
    tbl_gpe.kota,
    tbl_gpe.desa,
    tbl_money.money,
    tbl_org.nama_org,
    tbl_org_com.nama_org_com,
    tbl_person.nama_orang,
    tbl_product.nama_produk,
    tbl_quantity.quantity,
    tbl_times.waktu,
    --valid id
    tbl_event.is_valid AS event_valid,
    tbl_fac.is_valid AS fac_valid,
    tbl_gpe.is_valid AS gpe_valid,
    tbl_money.is_valid as money_valid,
    tbl_org.is_valid AS org_valid,
    tbl_org_com.is_valid AS org_com_valid,
    tbl_person.is_valid AS person_valid,
    tbl_product.is_valid AS product_valid,
    tbl_quantity.is_valid AS quantity_valid,
    tbl_times.is_valid AS times_valid
FROM
    tbl_kalimat
    JOIN tbl_event ON tbl_kalimat.id_kalimat = tbl_event.id_kalimat
    JOIN tbl_fac ON tbl_kalimat.id_kalimat = tbl_fac.id_kalimat
    JOIN tbl_gpe ON tbl_kalimat.id_kalimat = tbl_gpe.id_kalimat
    JOIN tbl_money ON tbl_kalimat.id_kalimat = tbl_money.id_kalimat
    JOIN tbl_org ON tbl_kalimat.id_kalimat = tbl_org.id_kalimat
    JOIN tbl_org_com ON tbl_kalimat.id_kalimat = tbl_org_com.id_kalimat
    JOIN tbl_person ON tbl_kalimat.id_kalimat = tbl_person.id_kalimat
    JOIN tbl_product ON tbl_kalimat.id_kalimat = tbl_product.id_kalimat
    JOIN tbl_quantity ON tbl_kalimat.id_kalimat = tbl_quantity.id_kalimat
    JOIN tbl_times ON tbl_kalimat.id_kalimat = tbl_times.id_kalimat
WHERE
    tbl_kalimat.is_correct = 1
    AND NOT tbl_event.is_valid = 0
    AND tbl_fac.is_correct = 1
    AND NOT tbl_fac.is_valid = 0
    AND tbl_gpe.is_correct = 1
    AND NOT tbl_gpe.is_valid = 0
    AND NOT tbl_money.is_valid = 0
    AND tbl_org.is_correct = 1
    AND NOT tbl_org.is_valid = 0
    AND tbl_org_com.is_correct = 1
    AND NOT tbl_org_com.is_valid = 0
    AND tbl_person.is_correct = 1
    AND NOT tbl_person.is_valid = 0
    AND NOT tbl_product.is_valid = 0
    AND NOT tbl_quantity.is_valid = 0
    AND NOT tbl_times.is_valid = 0
    
--Proof all table has same sum on id_kalimat
SELECT 
	tbl_kalimat.id_kalimat, 
	count(tbl_event.id_kalimat) "EVENT",
	count(tbl_fac.id_kalimat) "FAC", 
	count(tbl_gpe.id_kalimat) "GPE",
	count(tbl_money.id_kalimat) "MONEY",
	count(tbl_org.id_kalimat) "ORG",
	count(tbl_org_com.id_kalimat) "ORG_COM",
	count(tbl_person.id_kalimat) "PERSON",
	count(tbl_product.id_kalimat) "PRODUCT",
	count(tbl_quantity.id_kalimat) "QUANTITY",
	count(tbl_times.id_kalimat) "TIMES"
FROM
    tbl_kalimat
    JOIN tbl_event ON tbl_kalimat.id_kalimat = tbl_event.id_kalimat
    JOIN tbl_fac ON tbl_kalimat.id_kalimat = tbl_fac.id_kalimat
    JOIN tbl_gpe ON tbl_kalimat.id_kalimat = tbl_gpe.id_kalimat
    JOIN tbl_money ON tbl_kalimat.id_kalimat = tbl_money.id_kalimat
    JOIN tbl_org ON tbl_kalimat.id_kalimat = tbl_org.id_kalimat
    JOIN tbl_org_com ON tbl_kalimat.id_kalimat = tbl_org_com.id_kalimat
    JOIN tbl_person ON tbl_kalimat.id_kalimat = tbl_person.id_kalimat
    JOIN tbl_product ON tbl_kalimat.id_kalimat = tbl_product.id_kalimat
    JOIN tbl_quantity ON tbl_kalimat.id_kalimat = tbl_quantity.id_kalimat
    JOIN tbl_times ON tbl_kalimat.id_kalimat = tbl_times.id_kalimat
GROUP BY 
	tbl_kalimat.id_kalimat