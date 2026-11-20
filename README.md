# KoSehat Mobile — Sustainable Living Tracker for Campus Life

---

## 👥 Anggota Kelompok & Pembagian Modul

| No  | Nama Anggota                    | NPM          | Modul                                       | Deskripsi & Pembagian Kerja                                                                                                          |
| --- | ------------------------------- | ------------ | ------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| 1   | **Zidane Ahdina Putra**         | `2506583953` | **Autentikasi & Profil Pengguna**           | Mengelola sistem masuk berbasis SSO UI, pendaftaran preferensi target kesehatan, dan pembaruan profil pengguna via DRF.              |
| 2   | **Fata Akhmad Aulia**           | `2506540853` | **Meal Planner & Eco-Diet**                 | Penjadwalan menu makan harian sehat hemat kos serta fitur pencatatan pengurangan konsumsi makanan cepat saji berwadah sekali pakai.  |
| 3   | **Ranu Ario Sulistianto**       | `2506657270` | **Health & Habit Tracker**                  | Pencatatan dan penjadwalan rutinitas harian yang seimbang meliputi olahraga ringan, durasi tidur teratur, dan asupan hidrasi harian. |
| 4   | **Prajna Kausalya Damdami**     | `2506657213` | **Dashboard & Impact Analytics**            | Visualisasi statistik grafik kebiasaan hidup sehat harian dan estimasi dampak pengurangan sampah kemasan makanan.                    |
| 5   | **Dzakwan Farabi Al Muzhaffar** | `2506612436` | **Katalog Resep & Edukasi Eco-Mindfulness** | Pengelolaan katalog resep masakan sehat hemat serta fitur materi edukasi seputar kesejahteraan fisik dan mental mahasiswa kos.       |

---

## 📌 Deskripsi Aplikasi

**KoSehat Mobile** adalah platform _mobile-based tracking & scheduling_ gaya hidup berkelanjutan dan manajemen kebiasaan harian yang dirancang untuk membantu mahasiswa Universitas Indonesia dalam beradaptasi dengan kehidupan mandiri di kos atau asrama.

Aplikasi mobile ini terhubung secara _real-time_ dengan situs web utama Django KoSehat melalui web service berbasis **Django REST Framework (DRF)**.

---

## 🎭 Peran / Aktor Pengguna Aplikasi

- **Pengguna (Mahasiswa UI)**: Mengelola profil pribadi, menyusun jadwal perencanaan makan sehat, mencatat aktivitas olahraga harian, memantau durasi tidur dan tingkat hidrasi, serta melihat statistik perkembangan kebiasaan harian.
- **Admin**: Mengelola katalog resep makanan sehat hemat, memperbarui daftar panduan olahraga ringan, serta menguraikan konten edukasi gaya hidup ramah lingkungan.

---

## 🔄 Alur Pengintegrasian Data (Flutter & Web Service DRF)

1. **HTTP Request**: Aplikasi Flutter melakukan pemanggilan HTTP asinkron (`GET` / `POST`) ke endpoint Django REST Framework yang berjalan di server PWS.
2. **Serialisasi DRF**: Django menerima permintaan, mengambil data dari model ORM, lalu men-serialisasi data tersebut menjadi respons dalam format JSON.
3. **Parsing Data JSON**: Aplikasi Flutter menerima respons JSON dan melakukan deserialisasi data menjadi objek model Dart.
4. **Rendering UI**: Data yang sudah diparsing ditampilkan secara dinamis pada antarmuka Flutter menggunakan widget `FutureBuilder` atau state management.

---

## 🌐 Daftar Endpoint Django REST Framework (DRF)

| Modul / App           | Method | Endpoint URL                  | Fungsi                                          |
| --------------------- | ------ | ----------------------------- | ----------------------------------------------- |
| `authentication`      | `POST` | `/auth/api/login/`            | Autentikasi pengguna                            |
| `authentication`      | `POST` | `/auth/api/logout/`           | Logout pengguna                                 |
| `authentication`      | `GET`  | `/auth/api/profile/`          | Mengambil data profil user terautentikasi       |
| `meal_planner`        | `GET`  | `/meal/api/plans/`            | Mengambil daftar jadwal meal plan               |
| `meal_planner`        | `POST` | `/meal/api/create-flutter/`   | Menambahkan rencana makan baru                  |
| `habit_tracker`       | `GET`  | `/habit/api/habits/`          | Mengambil data log habit pengguna               |
| `habit_tracker`       | `POST` | `/habit/api/create-flutter/`  | Mencatat aktivitas habit harian baru            |
| `dashboard_analytics` | `GET`  | `/dashboard/api/analytics/`   | Mengambil summary statistik & dampak lingkungan |
| `recipe_catalog`      | `GET`  | `/recipe/api/recipes/`        | Mengambil katalog resep sehat hemat             |
| `recipe_catalog`      | `POST` | `/recipe/api/create-flutter/` | Menambahkan resep baru dari aplikasi mobile     |

---

## 🔗 Link Desain & Deployment

- **Link Figma (UI)**: _(Akan menyusul setelah checkpoint 1)_
- **Link APK Release**: _(Akan menyusul setelah pengumpulan akhir)_
