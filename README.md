# Proyek API Sederhana (response-api-sederhana)

Ini adalah proyek API sederhana yang dibuat menggunakan PHP native untuk mengelola data pengguna (Users). API ini mendukung operasi CRUD (Create, Read, Update, Delete).

## Teknologi
* PHP 8.1
* Server Apache (via XAMPP)
* MySQL / MariaDB

## Instalasi
1.  Clone repository ini: `git clone https://...`
2.  Letakkan folder proyek di dalam `www` pada direktori Laragon Anda.
3.  Buat database baru di phpMyAdmin dengan nama `db_chatai`.
4.  Import file `database.sql` (jika ada) ke dalam database tersebut.
5.  Sesuaikan koneksi database di dalam file `config.php`.
6.  Jalankan server Apache dan MySQL melalui laragon Control Panel.
7.  API siap diakses melalui `http://localhost/response-api-sederhana/`.

## Endpoints API

Berikut adalah daftar endpoint yang tersedia:

---

### 1. Mendapatkan Semua Pengguna
* **Method:** `GET`
* **Endpoint:** `/users`
* **Contoh URL:** `http://localhost/response-api-sederhana/index.php?path=users`
  ![Screenshot 2025-06-06 234355](https://github.com/user-attachments/assets/f56fcd55-7f06-4fdc-8d89-dd8f20ffacb8)
  ![Screenshot 2025-06-06 234422](https://github.com/user-attachments/assets/27b611b4-cc70-4b29-ad3d-93d801ffffa8)

### 2. Membuat Pengguna Baru
* **Method:** `POST`
* **Endpoint:** `/users`
* **Contoh URL:** `http://localhost/response-api-sederhana/index.php?path=users`
  ![Screenshot 2025-06-07 000432](https://github.com/user-attachments/assets/4a9071aa-4ced-4f2f-bea1-38be15cada58)
  Dapat dilihat bahwa user baru yang ditambahkan melalui method POST akan masuk ke dalam database
  ![Screenshot 2025-06-07 000455](https://github.com/user-attachments/assets/c0938b5a-fb33-42ab-849a-050d0dcc1ac9)

### 3. Mengubah Data Pengguna(Update)
* **Method:** `PUT`
* **Endpoint:** `/users`
* **Contoh URL:** `http://localhost/response-api-sederhana/index.php?path=users`
  ![Screenshot 2025-06-07 001116](https://github.com/user-attachments/assets/d6a8f5e3-5a77-4d17-9d6b-5b657b94e2af)
  Setelah Method PUT di request maka perubahan dapat dilihat pada database
  ![Screenshot 2025-06-07 001208](https://github.com/user-attachments/assets/4259a1a8-629a-4fda-ae33-d3c8e720a7f0)

### 4. Menghapus Data Pengguna
* **Method:** `DELETE`
* **Endpoint:** `/users`
* **Contoh URL:** `http://localhost/response-api-sederhana/index.php?path=users/7`
  ![Screenshot 2025-06-07 001428](https://github.com/user-attachments/assets/baa01407-1826-4071-bf65-484b455f0522)
   Setelah Method DELETE di request maka perubahan dapat dilihat pada database
  ![Screenshot 2025-06-07 001452](https://github.com/user-attachments/assets/4f3d43a3-1edd-4ee5-8bed-577ebea1d6b2)




  

  


