### Bagian Ini Masih Dalam Tahap Pengembangan. Terima Kasih...

___

# Visualisasi Tren Penerimaan Mahasiswa Baru UMP 2014-2024
![Header](assets/mahaisswabaru.jpeg) <br>

Persaingan pergurungan tinggi dalam mendapatkan mahasiswa baru sangat sengit, tidak hanya di PTN tetapi juga di PTS. Biro Publikasi dan Admisi (BPA) Universitas Muhammadiyah Purwokerto (UMP) memiliki peran penting dalam mengelola data pendaftar mahasiswa baru setiap tahunnya. Namun, selama ini proses evaluasi dan analisis data pendaftar di biro tersebut masih dilakukan secara manual dan terbatas, sehingga menyulitkan dalam melihat tren maupun distribusi demografis secara menyeluruh. Kurangnya visualisasi yang interaktif membuat pengambilan keputusan strategis seperti evaluasi jalur masuk atau persebaran asal daerah pendaftar menjadi kurang optimal. Oleh karena itu, proyek Kerja Praktik ini bertujuan untuk merancang dan membangun dashboard visualisasi data pendaftar mahasiswa baru di UMP sebagai alat bantu evaluasi strategi marketing. Metode yang digunakan melibatkan eksplorasi data historis tanpa pendekatan prediktif seperti machine learning atau model statistik. Data yang digunakan merupakan data internal Biro Publikasi dan Admisi UMP yang terdiri dari 19 atribut yang sudah dipilih, seperti jalur masuk, prodi pilihan, asal sekolah, alamat domisili, serta latar belakang orang tua. Proyek ini mencakup seluruh data pipeline mulai dari pengumpulan data, preprocessing menggunakan bahasa Python, hingga representasi visual menggunakan Tableau Public. Hasil dari proyek ini berupa dashboard interaktif yang menampilkan indikator kinerja utama, grafik tren, dan peta distribusi pendaftar yang dapat diakses secara daring melalui landing page.

#### Tahapan pelaksanaan proyek :
- Pengumpulan data
- Data preprocessing
- Representasi data secara visual
#### Lingkungan & alat kerja :
- Visual Studio Code
- Tableau Public
- Bahasa Python
- Pandas
- Chat GPT & Perplexity AI
- Github

___
## Pengumpulan Data
Karena alasan keamanan, proses pengumpulan data di database UMP tidak dilakukan langsung oleh penulis, melainkan oleh mitra proyek (BPA UMP). Berikut ini adalah dokumentasi dari tahap pengumpulan data:

![Penerimaan data via WA](assets/pengambilan%20data%20(chat%20WA).png) <br>
![dataset mentah yang diterima](assets/Pengambilan%20data%20(daftar%20data).png) <br>
![Sample data mentah](assets/Pengambilan%20data%20(contoh%20data).png)

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
Preprocessing merupakan pengolahan data yang bertujuan untuk mempersiapkan data mentah agar siap dikonsumsi. Pada proyek ini, preprocessing memiliki 4 tahap, yaitu: penggabungan dataset, pemilihan kolom, validasi data, dan problem solving. Detail dari tahapan preprocessing adalah sebagai berikut :

### Penggabungan dataset
Dataset mentah yang diterima dari mitra proyek (BPA UMP) merupakan 10 berkas Microsoft Excell. Untuk alasan efisiensi pada tahap Preprocessing, penggabungan dataset ini diperlukan. Berikut ini adalah dokumentasi dari tahap ini:

![dataset sesudah digabung](assets/penggabungan%20dataset%20(ss%20file).png) <br>

### Pemilihan kolom
Pemilihan kolom berfungsi untuk mengurangi jumlah kolom informasi dari dataset mentah dan menyisakan kolom informasi yang diperkirakan akan berguna pada tahap visualisasi, proses ini sangat bermanfaat untuk efisiensi pada saat validasi data dan problem solving. 
- Sample kolom sebelum dipilih (74 kolom):
![sample kolom sebelum dipilih](assets/struktur%20dataset%20mentah.png)
- Kolom setelah pemilihan:
![Kolom yang dipilih](assets/pemilihan%20kolom%20(kolom).png)

### Validasi data & Problem Solving
Validasi bertujuan untuk menilai tingkat kelengkapan dan akurasi data yang tersaring. Pada proyek ini, terdapat 4 aspek utama yang akan divalidasi: Struktur data, duplikasi data, missing/null values, dan distribusi data. Sedangkan problem solving bertujuan untuk mengatasi daftar masalah yang ditemukan pada proses validasi data.

#### Struktur Dataset
Validasi struktur data pada proyek ini berfungsi untuk menentukan kesesuaian tipe data tiap kolom informasi.
- Strukur dataset sebelum:
![Struktur dataset sebelum](assets/Validasi%20data%20-%20struktur%20data%20(tipe%20data).png)
    - Masalah yang ditemukan:
        - Kolom USIA bertipe data Float, akan lebih ideal jika tipe datanya Integer.
    - Solusi yang diambil:
        - Mengubah tipe data pada kolom USIA menjadi Integer
- Struktur dataset sesudah:
![Struktur dataset sesudah](assets/validasi%20ulang%20-%20struktur%20data.png)

** jelasin fungsi dan list problem & solusi + hasil akhir

#### Duplikasi Data
** jelasin fungsi dan list problem & solusi + hasil akhir


#### Missing/null Values
** jelasin fungsi dan list problem & solusi + hasil akhir

#### Distribusi Data
** jelasin fungsi dan list problem & solusi + hasil akhir

___
## Representasi Visual
dijelasin apa itu dan tujuannya apa mungkin? sama ada berapa tahap yang di lakuin disini

#### Brainstorming visualisasi
ada 2 dashboard, jelasin semua

#### Dashboard Overall
mungkin cuma gambar?
#### Dashboard Demografi
mungkin cuma gambar?

### Link Menuju Dashboard?
