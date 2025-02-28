# Klasifikasi Kemiskinan di Indonesia
![Header](asset/header.jpg) <br>
Seperti yang kita tahu, Indonesia adalah negara kepulauan yang memiliki 284.889.720 jiwa penduduk (Februari 2025) dengan keberagaman kondisi sosial dan ekonomi di setiap wilayah. Saya memulai project ini dengan tujuan membuat analisis dan visualisasi pengaruh faktor ekonomi, sosial dan distribusi kemiskinan terhadap hasil akhir suatu daerah di Indonesia dikatakan miskin tidaknya.

#### Langkah-langkah project :
- Data collecting
- Data pre-processing
- Analisis & visualisasi
#### Lingkungan & alat kerja :
- Kaggle
- Visual Studio Code
- Python
- Pandas
- Chat GPT
- Microsoft Power BI

___
## Data Collecting
Pada proses data collecting (pengumpulan data) ini, saya menggunakan platform [Kaggle](https://www.kaggle.com/). Kaggle adalah website yang salah satu kegunaannya adalah gudang dataset. Berikut ini adalah link dataset (raw data) yang saya gunakan pada project ini: [https://www.kaggle.com/datasets/ermila/klasifikasi-tingkat-kemiskinan-di-indonesia](https://www.kaggle.com/datasets/ermila/klasifikasi-tingkat-kemiskinan-di-indonesia).

#### Data Attribute : 
- Provinsi = Provinsi di Indonesia
- Kabupaten/Kota = Kabupaten/Kota di Indonesia
- Persentase Penduduk Miskin (P0) Menurut Kabupaten/Kota (Persen) = Persentase penduduk miskin di daerah tertentu
- Rata-rata Lama Sekolah Penduduk 15+ (Tahun) = Rata rata lama sekolah penduduk di daerah tersebut (hanya orang berumur 15+ yang dihitung)
- Pengeluaran per Kapita Disesuaikan (Ribu Rupiah/Orang/Tahun) = Rata-rata pengeluaran per individu dalam setahun (setelah disesuaikan dengan faktor yg tertera)
- Indeks Pembangunan Manusia = ukuran komprehensif yang menggambarkan kualitas hidup masyarakat di daerah tersebut (dihitung berdasarkan 3 dimensi utama: Umur harapan hidup, pendidikan, pengeluaran per-kapita)
- Umur Harapan Hidup (Tahun) = Rata-rata perkiraan lama hidup penduduk di daerah tersebut
- Persentase rumah tangga yang memiliki akses terhadap sanitasi layak = Persentase penduduk di daerah tersebut yang memiliki akses terhadap sanitasi yang layak
- Persentase rumah tangga yang memiliki akses terhadap air minum layak = Persentase penduduk di daerah tersebut yang memiliki akses terhadap air minum yang layak
- Tingkat Partisipasi Angkatan Kerja =  Persentase penduduk usia kerja di daerah tersebut (baik yang sedang bekerja maupun yang sedang mencari pekerjaan)
- Tingkat Pengangguran Terbuka = Persentase pengangguran yang sedang mencari pekerjaan
- PDRB atas Dasar Harga Konstan menurut Pengeluaran (Rupiah) = Nilai total barang dan jasa yang dihasilkan oleh suatu daerah dalam satu tahun, dihitung berdasarkan harga konstan (tidak terkena inflasi).
- Klasifikasi Kemiskinan = Suatu daerah dikategorikan miskin tidaknya (0 (False) berarti tidak miskin, (1) True berarti miskin)
___
## Data Pre-processing

![raw data](asset/raw_data.png)
Pada langkah data pre-processing ini saya melakukan berbagai kegiatan, antara lain: data cleaning (mengatasi data yang rusak/hilang), data standardizing (memperbaiki tipe data yang salah), features selection (mempertimbangkan kolom mana yang dipakai atau tidak, mempertimbangkan apakah diperlukan kolom tambahan atau tidak). Saya menggunakan file Jupiter Notebook yang menggunakan bahasa Python dengan tambahan library Pandas.

#### Hal-hal yang saya lakukan :
- Import data mentah (biasa disebut extract dalam proses ETL) menggunakan pandas.read_csv()
- Mengidentifikasi null values di setiap kolom (485 rows null values ditemukan)
-  Membuang 485 rows yang semua kolomnya berisi null values (total raw data ada 999 rows, sisa 514 rows data tanpa null values)
- Mengganti tipe data pada kolom 'Klasifikasi Kemiskinan' dari float ke boolean
- Melakukan pembulatan dan pengubahan tipe data menjadi integer pada :
    - kolom 'Umur Harapan Hidup (Tahun)'
    - kolom 'Rata-rata Lama Sekolah Penduduk 15+ (Tahun)'
    - Pengeluaran per Kapita Disesuaikan (Ribu Rupiah/Orang/Tahun)
- Mengubah tipe data dari object (string) menjadi float pada kolom :
    - Persentase Penduduk Miskin (P0) Menurut Kabupaten/Kota (Persen)
   - Persentase rumah tangga yang memiliki akses terhadap sanitasi layak
   - Persentase rumah tangga yang memiliki akses terhadap air minum layak
   - Indeks Pembangunan Manusia
   - Tingkat Pengangguran Terbuka
   - Tingkat Partisipasi Angkatan Kerja
- Mengimport data yang sudah di pre-processing (biasa disebut load dalam proses ETL) sebagai file csv (data clean.csv)
___ 
#### Beberapa dokumentasi selama pre-processing (sisanya bisa dilihat pada file 'data pre-processing.ipynb')
- Null values sebelum di cleaning (atas) dan sesudah di cleaning (bawah) <br>
![null_values(raw)](asset/null_values(raw).png) <br> ![null_values(clean)](asset/null_values(clean).png)

- Membuang 458 rows yang isinya hanya null values <br>
![jumlah_rows(raw)](asset/jumlah_rows(raw).png) <br> ![jumlah_rows(clean)](asset/jumlah_rows(clean).png)

- Mengganti tipe data yang salah <br>
![tipe_data(raw)](asset/tipe_data(raw).png) <br> ![tipe_data(clean)](asset/tipe_data(clean).png)
___
## Analisis & Visualisasi
Pada proses analisis dan visualisasi ini saya menggunakan Microsoft Power BI sebagai alat saya. Sayangnya pada tahap ini saya tidak bisa melakukan yang terbaik karena saya tidak bisa menggunakan jenis visualisasi 'map' dan 'filled map' (karena dari pihak kampus belum melakukan enable pada email universitas saya untuk fitur tersebut).

#### Brainstorming visualisasi
Pada tahap ini, saya tidak asal klik sana sini dengan berharap menemukan visualisasi terbaik, tetapi saya melakukan listing apa saja yang ingin dianalisa. berikut ini adalah hasil brainstorming visualisasi saya :
- Variabel sosial dengan kemiskinan :
   - apakah tingkat pendidikan mempengaruhi kategori kemiskinan?
   - bagaimana pengaruh besarnya pengangguran terhadap finalisasi pengkategorian kemiskinan?
   - apakah akses sanitasi dan air minum yang layak mempengaruhi kemiskinan? kalau iya, seberapa besar?
- Faktor ekonomi :
   - apakah pendapatan per-kapita berkorelasi dengan tingkat kemiskinan?	
   - apakah indeks pembangunan manusia (IPM) yang rendah cenderung memiliki tingkat kemiskinan yang tinggi?
- Distribusi dan pola kemiskinan :
   - bagaimana distribusi presentasi penduduk miskin di seluruh daerah?
   - peta kemiskinan berdasarkan provinsi (biar tau provinsi mana yang punya daerah miskin terbanyak)
   - apakah ada pola kemiskinan berdasarkan PDRB per kapita?
___
#### Analisis dan visualisai (faktor sosial)
Sesuai brainstorming yang sudah saya lakukan di tahap sebelumnya, pada analisis dan visualisai faktor sosial ini saya berfokus pada aspek pendidikan (rata-rata lama sekolah penduduk yang berusia 15 tahun ke-atas), aspek besarnya penganggurran, aspek akses sanitasi dan air minum

[Klik disini untuk melihat visualisasi (faktor sosial)](hasil_visualisasi/faktor_sosial.pdf)

#### berikut ini adalah hasil analisis faktor sosial :
- Tingkat pendidikan sangat mempengaruhi hasil akhir suatu daerah dikatakan miskin tidaknya. Terbukti pada tingkat pendidikan kurang dari 5 tahun tidak ada daerah yang TIDAK MISKIN, sedangkan pada 5 tahun ke atas, lebih banyak daerah yang dikategorikan TIDAK MISKIN
- Tingkat Pengangguran Terbuka (TPT) tidak memiliki pola khusus, ini membuktikan TPT tidak langsung mempengaruhi hasil akhirs
- Akses sanitasi dan air minum yang layak justru mempengaruhi hasil akhir secara langsung. daerah yang memiliki persentase akses yang layak, cenderung dikategorikan TIDAK MISKIN. begitu pula kebalikannya

___
#### Analisis dan visualisai (faktor ekonomi)
Di dalam analisis dan visualisasi faktor ekonomi ini saya berfokus kepada beberapa aspek seperti yang sudah saya paparkan pada waktu brainstorming, antara lain: pendapatan per-kapita dan aspek pembangunan manusia (IPM)

[Klik disini untuk melihat visualisasi (faktor ekonomi)](hasil_visualisasi/faktor_ekonomi.pdf)

#### berikut ini adalah hasil analisis faktor ekonomi :
- Pengeluaran per-kapita untuk daerah yang dikategorikan TIDAK MISKIN memiliki rata-rata pengeluaran per-kapita lebih besar dibandingkan daerah MISKIN
- Indeks Pembangunan Manusia mempengaruhi hasil akhir daerah tersebut dikatakan miskin tidaknya. daerah MISKIN memiliki IPM yang lebih rendah dibandingkan daerah TIDAK MISKIN
___
#### Analisis dan visualisai (distribusi dan pola kemiskinan)
Pada analisis dan visualisasi distribusi dan pola kemiskinan ini saya tidak sepenuhnya menerapakan apa yang telah saya brainstorming sebelumnya (dikarenakan keterbatasn fitur pada email Universitas saya). Saya berfokus pada distribusi penduduk miskin dan pola kemiskinan berdasarkan PRDB sekaligus persentase penduduk miskin

[klik disini untuk melihat visualisasi (distribusi dan pola kemiskinan berdasarkan PRDB)](hasil_visualisasi/distribusi_dan_pola_kemiskinan_berdasarkan_PRDB.pdf)

#### Berikut ini adalah hasil analisis distribusi dan pola kemiskinan :
- Peringkat persebaran persentase penduduk miskin dapat dilihat pada sisi kiri
-  Terdapat pola kemiskinan pada visualisasi tabel, yaitu :
   - Daerah yang dikategorikan sebagai TIDAK MISKIN (False), cenderung memiliki persentase penduduk miskin lebih rendah dari pada daerah yang dikategorikan sebagai MISKIN (True)
   - PRDB (Produk Domestik Regional Bruto) di daerah yang dikategorikan sebagai TIDAK MISKIN (False) memiliki total nilai yang jauh lebih banyak dari pada PRDB di daerah yang dikategorikan MISKIN (True)
`
___