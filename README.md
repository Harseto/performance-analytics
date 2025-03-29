# performance-analytics
cara awal pembuatan syntax dari google bigquery
pertama kunjungi web google bigquery (sudah login memakai akun pribadi)
lalu klik ikon console sebelah ikon pemilihan bahasa di pojok kanan atas
kemudian pilih klik BigQuery
kemudian pilih klik BigQuery Studio
lalu klik "Create Project"
isi nama project
lalu klik "Create"
setelah berhasil klik titik 3 di file yang sudah kita namai tadi
klik "create Dataset" untuk pembuatan Dataset
namain dataset sesuai yang di inginkan
pilih location type nya "Multi-region"
lalu klik "Create Dataset"
seetelah itu klik titik 3 pada dataset yang telah dibuat untuk memasuki tabel dari file CSV
lalu kolom "Create table form" pilih "Upload" (untuk memasukan file yang ingin di masukan ke bigquery)
isi kolom "Table" namain sesuai nama file yang dari kolom "Create table form"
lalu klik "Create Table"
saya memembuat 4 table karena berdasarkan data yang ingin di analisa berupa 4 table
setelah 4 table sudah di masukkan ke bigquery lanjut untuk pembuatan syntax di "Untitled Query"
pertama memasukan query adalah SELECT untuk memanggil atau menampilan kolom yang di inginkan
kedua membuat perhitungan untuk kolom nett_sales
ketiga menentukan persenan laba berdasarkan dari rate harga
keempat membuat perhitungan untuk kolom nett_profit (keuntungan setelah diskon)
kelima memakai query FROM untuk mengetahui dari tabel mana data tersebut
lalu query JOIN untuk menggabungkan dari beberapa tabel
setelah semua itu sudah tidak ada syntax error maka klik RUN
Hasil dari syntax tersebut akan ditampilkan di Preview Query Result (yaitu tepat di bawah Syntax)
setelah syntax di bigquery berhasil lalu hasil syntax tersebut di copas di Github
