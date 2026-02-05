### Project ini masih dalam tahap pengembangan, terimakasih...

Terakhir di update 05 Februari 2026
___
# 🏪 Analisis Data Ritel End-to-End: Strategi Ekspansi dan Perilaku Pasar PT Lintas Strategi 🏪<br>
<img src="gambar, icon/Keperluan readme/minimarket.jpg" width="800" alt="Header"> <br>

#### Project overview
Proyek ini mengolah data transaksi PT Lintas Strategi secara end-to-end guna memetakan karakteristik pasar dan perilaku konsumen di Indonesia. Tujuannya adalah mentransformasi data mentah menjadi insight actionable yang mendukung strategi ekspansi, optimalisasi distribusi, serta pengambilan keputusan berbasis data yang presisi.

#### Problem statement / business questions
- Berapa revenue yang di dapatkan perusahaan?
- Berapa profit yang di dapatkan perusahaan?
- Kota besar mana yang menghasilkan profit tertinggi dan paling potensial untuk ekspansi bisnis?
- Kategori produk apa yang memiliki kontribusi profit terbesar dan paling diminati konsumen?
- Bagaimana tren penjualan dan profit dari waktu ke waktu?
- Metode pembayaran apa yang paling sering digunakan dan bagaimana pengaruhnya terhadap revenue?
- Lokasi toko mana yang menunjukkan kinerja terbaik berdasarkan profit yang dihasilkan?

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

<img src="gambar, icon/Keperluan readme/data duplikat.png" width="350" alt="Gambar screenshot hasil pengecekan"> <br>

Hasil temuan: Tidak ada data duplikat

#### Struktur dataset
Tahap ini berguna untuk melakukan pengecekan terhadap tipe data tiap kolom informasi yang ada, jangan sampai ada tipe data yang salah (contoh: data tanggal tetapi tipe datanya text). Berikut ini hasilnya:

<img src="gambar, icon/Keperluan readme/struktur data.png" width="400" alt="Gambar screenshot hasil pengecekan struktur dataset"> <br>

Hasil temuan: Tipe data untuk kolom 'Date' tidak sesuai

#### Distribusi data
Tahap ini berguna untuk memastikan tidak ada distribusi value yang aneh, misalnya: terdapat value yang seharusnya tidak ada, terdapat value yang tidak wajar

<img src="gambar, icon/Keperluan readme/distribusi data - kategorial.png" width="900" alt="Gambar screenshot distribusi data kategorial"> <br>
<img src="gambar, icon/Keperluan readme/distribusi data - numerik.png" width="500" alt="Gambar screenshot distribusi data numerik"> <br>
<img src="gambar, icon/Keperluan readme/distribusi data - ngecek outlier harga dan modal.png" width="400" alt="Analisis Outlier">

Hasil temuan: Tidak ada distribusi data yang tidak wajar

#### Missing/null values
Jika distribusi data adalah memastikan tidak ada value yang tidak wajar, tahap ini adalah memastikan tidak ada value yang hilang/rusak.

<img src="gambar, icon/Keperluan readme/missing or null values.png" width="300" alt="Gambar screenshot missing/null values"> <br>

Hasil temuan: Tidak ada missing/null values


### Data remediation (fixing data issues)
Setelah dilakukan Data Quality Assurance (DQA), selanjutnya adalah data remediation (fixing data issues). Karena masalah yang ditemukan hanya pada struktur dataset, proses ini dilakukan pada Microsoft Power BI.

<figure>
  <img src="gambar, icon/Keperluan readme/tipe data sebelum.png" width="300" alt="Tipe data sebelum">
  <figcaption align="left"> <i>Tipe data (sebelum = object / text / string)</i> .</figcaption>
</figure>

<figure>
  <img src="gambar, icon/Keperluan readme/tipe data sesudah.png" width="300" alt="Tipe data sesudah">
  <figcaption align="left"> <i>Tipe data (sesudah = date)</i> </figcaption>
</figure>

___
### Feature engineering
Featur engineering adalah ... . Ini berguna untuk memperbaiki atau menambah informasi baru berdasarkan informasi yang sudah ada. Pada proyek ini, ada 2 kolom informasi yang ditambahkan: revenue_fixed & profit.

#### Revenue_fixed
Terdapat kesalahan value pada kolom 'Revenue'. Hal ini di dasarkan pada perhitungan Revenue, yaitu: Unit_Price x Units_Sold

<figure>
  <img src="gambar, icon/Keperluan readme/featur engineering - kesalahan revenue.png" width="500" alt="Kesalahan velue revenue">
  <figcaption align="left"> <i>Kesalahan value 'Revenue'</i> </figcaption>
</figure>

Hal ini diperbaiki dengan membuat kolom baru bernama 'revenue_fixed' yang berisi value dengan perhitungan revenue_fixed = Unit_Price x Units_Sold

<figure>
  <img src="gambar, icon/Keperluan readme/feature engineering - perbaikan revenue.png" width="300" alt="Kesalahan velue revenue">
  <figcaption align="left"> <i>Kolom revenue_fixed (perbaikan 'Revenue')</i> </figcaption>
</figure>

#### Profit
Kolom profit sangat berguna untuk melihat keuntungan perusahaan, maka dari itu saya membuat kolom ini berdasarkan rumus profit = revenue_fixed - (unit_cost x units_sold).

<figure>
  <img src="gambar, icon/Keperluan readme/feature engineering - profit.png" width="300" alt="Kesalahan velue revenue">
  <figcaption align="left"> <i>Kolom baru 'profit'</i> </figcaption>
</figure>

___

## Dashboard planning
Berdasarkan Problem statement / business questions pada awal project, ditentukanlah dashboard yang mengandung: 
#### Metrik KPI
| KPI   | Problem statement / business questions yg diselesaikan |
|-----------|-----------|
| Total revenue  | Berapa revenue yang di dapatkan perusahaan? |
| Total profit  | Berapa profit yang di dapatkan perusahaan?  |
| Top 1 store by profit | Lokasi toko mana yang menunjukkan kinerja terbaik berdasarkan profit yang dihasilkan? |
| Top 1 best-seller category | Kategori produk apa yang memiliki kontribusi profit terbesar dan paling diminati konsumen? |

#### Grafik non-KPI
| Grafik   |  Problem statement / business questions yg diselesaikan  |
|-----------|-----------|
| Trend penjualan & profit  | Bagaimana tren penjualan dan profit dari waktu ke waktu? |
| Top 10 category by profit  | (detail) Kategori produk apa yang memiliki kontribusi profit terbesar dan paling diminati konsumen?  |
| Payment method | Metode pembayaran apa yang paling sering digunakan dan bagaimana pengaruhnya terhadap revenue? |
| Location rank by profit | Kota besar mana yang menghasilkan profit tertinggi dan paling potensial untuk ekspansi bisnis? |

___

## Visualisasi
pppp