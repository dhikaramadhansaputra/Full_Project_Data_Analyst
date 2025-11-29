### Bagian Ini Masih Dalam Tahap Pengembangan. Terima Kasih...

___

# Visualisasi Tren Penerimaan Mahasiswa Baru UMP 2014-2024
![Header](assets/mahaisswabaru.jpeg) <br>

#### Latar belakang
Proyek ini dibangun karena adanya kesulitan saat melakukan analisis data pendaftar mahasiswa baru di UMP yang disebabkan tidak adanya visualisasi sehingga proses evaluasi dan analisis strategi marketing masih dilakukan secara terbatas.

#### Tujuan proyek
Proyek ini bertujuan untuk merancang dan membangun dashboard visualisasi data pendaftar mahasiswa baru (2014 - 2024) di UMP sebagai alat bantu evaluasi strategi marketing.

#### Tahapan pelaksanaan proyek :
- Pengumpulan data
- Data preprocessing
- Visualiasi

#### Lingkungan & alat kerja :
- Visual Studio Code
- Tableau Public
- Python
- Pandas
- Chat GPT & Perplexity AI
- Github

___
## Pengumpulan Data
Karena alasan keamanan, proses pengumpulan data di database UMP tidak dilakukan langsung oleh penulis, melainkan oleh mitra proyek (BPA UMP). Berikut ini adalah dokumentasi dari tahap pengumpulan data: <br>

![Penerimaan data via WA](assets/pengambilan%20data%20(chat%20WA).png) <br>
![dataset mentah yang diterima](assets/Pengambilan%20data%20(daftar%20data).png) <br>
![Sample data mentah](assets/Pengambilan%20data%20(contoh%20data).png)<br>

#### Tentang data :
- Data yang dikumpulkan meliputi data mahasiswa yang berstatus mahasiswa baru dalam kurun tahun 2014-2024.
- Dataset mentah yang diterima berupa 10 file berekstensi Ms. Excel
- Pada data mentah, terdapat 74 kolom informasi yang nantinya akan diseleksi pada tahap Preprocessing

#### Atribut dataset (Setelah preprocessing) :
- NOPEN = Nomor pendaftaran mahasiswa baru
- JALUR = Jalur masuk mahasiswa baru
- TAHUN = Tahun masuk mahasiswa baru
- PILIHAN PRODI 1 = Pilihan program studi pertama mahasiswa baru pada saat mendaftar
- FAKULTAS PRODI 1 = Fakultas dari program studi pilihan pertama
- PILIHAN PRODI 2 = Pilihan program studi kedua mahasiswa baru pada saat mendaftar
- FAKULTAS PRODI 2 = Fakultas dari program studi pilihan kedua
- DITERIMA PRODI = Program studi yang menerima mahasiswa baru tersebut
- FAKULTAS PRODI DITERIMA = Fakultas dari program studi yang menerima mahasiswa baru tersebut
- USIA = Usia mahasiswa baru pada saat mendaftar
- ASAL SLTA = Asal sekolah mahasiswa baru sebelum mendaftar
- JURUSAN = Jurusan asal sekolah mahasiswa baru sebelum mendaftar
- ALAMAT ASAL = Alamat asal mahasiswa baru
- ALAMAT DOMISILI = Alamat domisili mahasiswa baru
- PEND. AYAH = Jenjang pendidikan ayah dari mahasiswa baru
- PEND. IBU = Jenjang pendidikan ibu dari mahasiswa baru
- PEKERJAAN IBU = Pekerjaan ibu dari mahasiswa baru
- ALAMAT ORANG TUA = Alamat orang tua mahasiswa baru
- Kabupaten/Kota = Kabupaten/Kota asal domisili mahasiswa baru
- PROVINSI = Provinsi asal domisili mahasiswa baru

___
## Data Preprocessing
Proyek ini memiliki 4 tahap preprocessing , yaitu: penggabungan dataset, pemilihan kolom, validasi data, dan problem solving. Detail dari tahapan preprocessing adalah sebagai berikut :

### Penggabungan dataset
Dataset mentah yang diterima dari mitra proyek (BPA UMP) merupakan 10 berkas Microsoft Excell. Untuk alasan efisiensi pada tahap Preprocessing, penggabungan dataset ini diperlukan. Berikut ini adalah dokumentasi dari tahap ini:

![dataset sesudah digabung](assets/penggabungan%20dataset%20(ss%20file).png) <br>

### Pemilihan kolom
Berfungsi untuk mengurangi jumlah kolom informasi dari dataset mentah dan menyisakan kolom informasi yang diperkirakan akan berguna pada tahap visualisasi. 
- Sample kolom sebelum dipilih (74 kolom): <br>
![sample kolom sebelum dipilih](assets/struktur%20dataset%20mentah.png)<br>
- Kolom setelah pemilihan: <br>
![Kolom yang dipilih](assets/pemilihan%20kolom%20(kolom).png)

### Validasi data & Problem Solving
Validasi bertujuan untuk menilai tingkat kelengkapan dan akurasi data yang tersaring. Pada proyek ini, terdapat 4 aspek utama yang akan divalidasi: Struktur data, duplikasi data, missing/null values, dan distribusi data. Sedangkan problem solving bertujuan untuk mengatasi daftar masalah yang ditemukan pada proses validasi data.

#### Struktur Dataset
Bertujuan untuk menentukan kesesuaian tipe data tiap kolom informasi.
- Strukur dataset sebelum: <br>
![Struktur dataset sebelum](assets/Validasi%20data%20-%20struktur%20data%20(tipe%20data).png)<br>

- Struktur dataset sesudah: <br>
![Struktur dataset sesudah](assets/validasi%20ulang%20-%20struktur%20data.png) <br>

#### Duplikasi Data
Bertujuan untuk menghapus semua data yang 100% terduplikat
- Jumlah data duplikat ditemukan: <br>
![jumlah data duplikat](assets/Validasi%20data%20-%20Duplikasi%20data%20(menghitung%20data%20duplikat,%20kecuali%20aslinya).png) <br>
- Sample data duplikat: <br>
![sample data duplikat](assets/Validasi%20data%20-%20Duplikasi%20data%20(sampel%20data%20duplikat).png) <br>
- data duplikat setelah dihapus: <br>
![data duplikat setelah dihapus](assets/validasi%20ulang%20-%20data%20duplikat.png) <br>

#### Missing/null Values
Berfungsi untuk mendeteksi dan menangani data yang hilang/rusak. Metode yang digunakan adalah statistical imputation (untuk numeric), dan label imputation (untuk kategorikal).
- missing/null values sebelum: <br>
![null values sebelum](assets/validasi%20data(missing%20values).png) <br>
- missing/null values sesudah: <br>
![missing values sesudah](assets/validasi%20ulang%20-%20missing%20values.png) <br>

#### Distribusi Data
Berfungsi untuk melihat sekaligus mengatasi nilai anomali (nilai yang seharusnya tidak ada) dalam persebaran data. Metode yang digunakan untuk mengatasi anomali adalah statistical imputation (numeric) dan label imputation (kategorikal) 
- sample distribusi data sebelum: <br>
![Prodi diterima sebelum](assets/Validasi%20data%20-%20distribusi%20prodi%20diterima.png) <br>
![Usia sebelum](assets/Validasi%20data%20-%20distribusi%20usia.png) <br>
![fakultas diterima sebelum](assets/Validasi%20data%20-%20distribusi%20fakultas%20prodi%20diterima.png) <br>
- sample distribusi data sesudah: <br>
![prodi diterima sesudah](assets/validasi%20ulang%20-%20distribusi%20prodi%20pilihan%201.png) <br>
![usia sesudah](assets/validasi%20ulang%20-%20distribusi%20usia.png) <br>
![fakultas diterima sesudah](assets/validasi%20ulang%20-%20distribusi%20fakultas%20prodi%20diterima.png) <br>
___
## Visualisasi
dijelasin apa itu dan tujuannya apa mungkin? sama ada berapa tahap yang di lakuin disini

#### Brainstorming visualisasi
ada 2 dashboard, jelasin semua

#### Dashboard Overall
mungkin cuma gambar?
#### Dashboard Demografi
mungkin cuma gambar?

### Link Menuju Dashboard?
