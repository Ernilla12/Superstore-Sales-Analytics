# Superstore-Sales-Analytics
Data driven insight for smater retail decisions and sales growth


# 1. PROBLEM
Dalam industri ritel modern, pengelolaan data penjualan yang masif sering kali menyulitkan manajemen dalam mengidentifikasi area yang paling menguntungkan maupun yang mengalami inefisiensi. Proyek ini dirancang untuk menjawab beberapa tantangan bisnis utama (business questions) dari dataset Superstore:
**Tren Kinerja Penjualan:** Bagaimana fluktuasi total penjualan dari tahun ke tahun serta bulan ke bulan? Kapan periode puncak transaksi terjadi?
**Kontribusi Segmen Pelanggan:** Segmen pasar mana (*Consumer*, *Corporate*, atau *Home Office*) yang memberikan kontribusi pendapatan terbesar bagi perusahaan?
**Analisis Produk & Kategori:** Kategori produk dan sub-kategori apa saja yang menjadi pendorong utama pendapatan (*top performers*) vs produk yang performanya rendah?
**Distribusi Geografis & Pelanggan:** Sebaran wilayah mana saja yang memiliki basis pelanggan dan volume transaksi paling aktif?

# 2. Data & Tools
Dataset yang digunakan berasal dari dataset publik **Superstore** (Kaggle) yang mencakup data transaksi ritel komprehensif. Proses analisis end-to-end dilakukan menggunakan tools berikut:

**MySQL (Data Cleaning & Exploratory Data Analysis):** Digunakan untuk membersihkan data mentah, menangani *missing values*, mengubah format tipe data, serta melakukan agregasi dan *querying* SQL kompleks untuk menemukan pola awal sebelum divisualisasikan.
**Power BI (Data Visualization & Dashboard):** Digunakan untuk memodelkan data, membangun relasi antar tabel, serta merancang *interactive executive dashboard* yang dinamis.

# 3. Key Insights
Berdasarkan hasil eksplorasi data dan visualisasi pada dashboard, ditemukan beberapa temuan penting (*key findings*):
1. **Dominasi Segmen Consumer:** Segmen **Consumer** menjadi kontributor terbesar terhadap total pendapatan perusahaan yaitu sebesar **58.66% ($95.56M)**, diikuti oleh segmen *Corporate* (21.48%) dan *Home Office* (19.86%).
2. **Kinerja Kategori Produk:** Kategori **Furniture** memimpin perolehan total sales keseluruhan, disusul oleh **Technology** dan **Office Supplies** di posisi berikutnya.
3. **Produk Unggulan (*Top Products*):** Produk *Riverside Palais Royal Lawyers Bookcase, Royale Cherry Finish* dan *Lexmark MX611dhe Monochrome Laser Printer* menjadi produk dengan kontribusi nilai penjualan tertinggi secara individu.
4. **Musiman Penjualan (*Sales Seasonality*):** Terdapat lonjakan volume penjualan yang signifikan pada bulan-bulan tertentu (seperti Agustus dan November), mengindikasikan adanya pengaruh kampanye musiman atau siklus pembelian tahunan.
5. **Skala Pasar yang Luas:** Bisnis menjangkau **362 pelanggan unik** yang tersebar di **174 kota** di seluruh wilayah operasional dengan total akumulasi sales mencapai **$162.9 Juta**.

# 4. Recommendations
Sebagai langkah taktis dan strategis bagi manajemen berdasarkan insight di atas, beberapa rekomendasi yang dapat diimplementasikan meliputi:
**Optimalisasi Program Loyalitas (Consumer Focus):** Mengingat segmen *Consumer* memegang pangsa pasar terbesar (~58%), perusahaan perlu memperkuat *membership/loyalty program* dan penawaran personalisasi produk guna mempertahankan Retensi Pelanggan.
**Strategi Stok & Inventory Kategori Utama:** Memastikan ketersediaan stok yang memadai untuk kategori *Furniture* dan *Technology* terutama menjelang bulan-bulan sibuk (*peak seasons* seperti akhir tahun/Q4) untuk menghindari *stockout*.
**Evaluasi Produk Underperform:** Melakukan analisis lanjutan terhadap sub-kategori dengan kontribusi persentase kecil pada distribusi inventaris untuk merancang strategi promosi *bundling* atau diskon cuci gudang (*clearance sale*).
**Ekspansi Pemasaran Berdasarkan Wilayah:** Meningkatkan penetrasi pemasaran digital di kota-kota lapis kedua yang memiliki potensi pertumbuhan transaksi tinggi namun belum tergarap optimal.

# 5. Dashboard Preview
Dashboard interaktif ini dirancang dengan navigasi menu (*Home*, *Overview*, *Products*, *Dataset*) untuk memudahkan eksplorasi data secara mendalam oleh para pemangku kepentingan.

Adapun link untuk dashboard Superstore-Sales-Analytics yang bisa di akses sebagai berikut: 
https://tinyurl.com/37589tej
