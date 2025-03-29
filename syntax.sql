  SELECT ft.transaction_id, ft.date, ft.branch_id, kc.branch_name, kc.kota, kc.provinsi, kc.rating as rating_cabang, ft.customer_name, p.product_id, p.product_name, ft.price, ft.discount_percentage,
  (ft.price * (1 - ft.discount_percentage/100)) as nett_sales,
  CASE 
      WHEN ft.price <= 50000 THEN 10
      WHEN ft.price > 50000 AND ft.price <= 100000 THEN 15
      WHEN ft.price > 100000 AND ft.price <= 300000 THEN 20
      WHEN ft.price > 300000 AND ft.price <= 500000 THEN 25
      ELSE 30
    END AS persentase_gross_laba,
    (ft.price * (1 - (ft.discount_percentage / 100))) * 
  CASE 
      WHEN ft.price <= 50000 THEN 0.10
      WHEN ft.price > 50000 AND ft.price <= 100000 THEN 0.15
      WHEN ft.price > 100000 AND ft.price <= 300000 THEN 0.20
      WHEN ft.price > 300000 AND ft.price <= 500000 THEN 0.25
      ELSE 0.30
    END AS nett_profit,
    ft.rating as rating_transaksi
  FROM `rakamin-kf-analytics-455103.Kimia_Farma.kf_final_transaction` as ft
  JOIN `rakamin-kf-analytics-455103.Kimia_Farma.kf_kantor_cabang` as kc ON ft.branch_id = kc.branch_id
  JOIN  `rakamin-kf-analytics-455103.Kimia_Farma.kf_product` as p ON ft.product_id = p.product_id;
