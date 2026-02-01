### Project ini masih dalam tahap pengembangan, terimakasih...

Terakhir di update 01 Februari 2026
___
# Analisis Pasar untuk Industri Ritel di Indonesia <br>
<img src="gambar, icon/Keperluan readme/minimarket.jpg" width="800" alt="Header"> <br>

#### Latar belakang
Industri ritel di Indonesia, khususnya di kota besar memiliki karakteristik pasar dan perilaku konsumen yang berbeda-beda. Perbedaan tren pembelian, preferensi produk, dan metode pembayaran menuntut perusahaan untuk mengambil keputusan berbasis data. PT Lintas Strategi membutuhkan analisis data transaksi ritel untuk memahami daya beli konsumen serta peluang ekspansi bisnis. 

#### Problem statement / business questions
- Kota besar mana yang menghasilkan profit tertinggi dan paling potensial untuk ekspansi bisnis?
- Kategori produk apa yang memiliki kontribusi profit terbesar dan paling diminati konsumen?
- Bagaimana tren penjualan dan profit dari waktu ke waktu pada masing-masing kota?
- Metode pembayaran apa yang paling sering digunakan dan bagaimana pengaruhnya terhadap revenue?
- Lokasi toko mana yang menunjukkan kinerja terbaik berdasarkan profit yang dihasilkan?

#### Tujuan proyek
Proyek ini bertujuan mengolah data transaksi ritel secara end-to-end, mulai dari database hingga visualisasi. Hasil analisis diharapkan menghasilkan insight yang actionable untuk mendukung strategi pemasaran dan distribusi.

#### Tahapan pelaksanaan proyek :
- Pembuatan database MySQL & input raw dataset, raw dataset berasal dari Kaggle (https://www.kaggle.com/datasets/hafidzunalimaljazari/dataset-penjualan-dummy)
- Data preprocessing / ETL (Extract, Transform, Load)
- Dashboard planning
- Visualiasi

#### Lingkungan & alat kerja :
- Visual Studio Code
- Microsoft Power BI
- Python
- Alat bantu AI (Chat GPT, Gemini)
- Github
___

## Pembuatan database MySQL & input raw dataset

Database berisi 11 kolom dan 20.000 baris sesuai dengan raw dataset. Proses input raw dataset menggunakan metode local infile pada MySQL Workbranch: <br>

<img src="gambar, icon/Keperluan readme/pembuatan database - querry pembuatan database.png" width="500" alt="Gambar screenshot querry pembuatan database"> <br>
<img src="gambar, icon/Keperluan readme/pembuatan database - querry local infile.png" width="500" alt="Gambar screenshot querry metode local infile"> <br>
<img src="gambar, icon/Keperluan readme/pembuatan database - contoh dataset mentah.png" width="500" alt="Gambar screenshot sample raw dataset"> <br>

#### Atribut data
- transaction_id = nomor unik transaksi
- Date = tanggal transaksi
- Product_Name = nama produk
- Category = kategori produk
- Units_Sold = jumlah produk terjual
- Unit_Price = harga produk satuan
- Revenue = pendapatan kotor
- Store_Location = lokasi toko
- Payment_Method = metode pembayaran
- Province = provinsi lokasi toko
- Unit_Cost = biaya pembuatan produk

___

## Data preprocessing / ETL (Extract, Transform, Load)
data preprocessing / ETL dibagi menjadi 4 tahap, yaitu: data collection, Data Quality Assurance (DQA), Data Remediation (fixing data issues), Feature engineering.

### Data collection
Data collection dilakukan dengan metode export wizard dengan menggunakan MySQL Workbranch. Data yg dikumpulkan adalah semua data yang ada dalam database, yaitu 20 ribu data dalam kurun 2 tahun (2023 - 2024).

<img src="gambar, icon/Keperluan readme/data collection - expoert wizard.png" width="350" alt="Gambar screenshot metode export"> <br>

### Data Quality Assurance (DQA)
Data Quality Assurance (DQA) adalah proses identifikasi masalah yang ada pada dataset mentah, ini berguna untuk memastikan kualitas data sebelum ke langkah selanjutnya. Untuk proyek ini, pengecekan dilakukan pada 4 bagian utama: Data duplikat, struktur dataset, distribusi data, missing/null values.

#### Data duplikat
Tujuan tahap ini adalah untuk memastikan tidak ada data yang 100% terduplikat. Hal ini berguna untuk menjaga keakuratan laporan. Berikut ini adalah hasil pengecekan:

<img src="gambar, icon/Keperluan readme/" width="500" alt="Gambar screenshot hasil pengecekan"> <br>

Hasil temuan: 

#### Struktur dataset
Tahap ini berguna untuk melakukan pengecekan terhadap tipe data tiap kolom informasi yang ada, jangan sampai ada tipe data yang salah (contoh: data tanggal tetapi tipe datanya text). Berikut ini hasilnya:

<img src="gambar, icon/Keperluan readme/" width="500" alt="Gambar screenshot hasil pengecekan struktur dataset"> <br>

Hasil temuan: 

#### Distribusi data
Tahap ini berguna untuk memastikan tidak ada distribusi value yang aneh, misalnya: terdapat value yang seharusnya tidak ada, terdapat value yang tidak wajar

<img src="gambar, icon/Keperluan readme/" width="500" alt="Gambar screenshot semua distribusi data"> <br>

Hasil temuan:

#### Missing/null values
Jika distribusi data adalah memastikan tidak ada value yang tidak wajar, tahap ini adalah memastikan tidak ada value yang hilang/rusak.

<img src="gambar, icon/Keperluan readme/" width="500" alt="Gambar screenshot missing/null values"> <br>

Hasil temuan: 


### Data remediation (fixing data issues)
Setelah dilakukan Data Quality Assurance (DQA), selanjutnya adalah data remediation (fixing data issues).

#### Data duplikat
#### Struktur dataset
#### Distribusi data
#### Missing/null values



### Feature engineering
Featur engineering adalah ... . Ini berguna untuk menambah informasi baru berdasarkan informasi yang sudah ada. Pada proyek ini, ada x kolom informasi yang ditambahkan.

#### Revenue_fixed
#### Profit