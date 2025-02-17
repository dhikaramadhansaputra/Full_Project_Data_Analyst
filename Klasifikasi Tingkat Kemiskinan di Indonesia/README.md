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