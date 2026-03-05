# Flutter Cart Catalog App

## Deskripsi Project

Project ini merupakan aplikasi Flutter sederhana yang dibuat untuk mempelajari penerapan **Clean Architecture** dan **State Management menggunakan Provider**.

Aplikasi ini memiliki fitur utama yaitu menampilkan katalog produk dan menambahkan produk ke dalam cart. Struktur project dibuat dengan memisahkan **presentation layer, domain layer, dan data layer** agar kode lebih rapi, mudah dipahami, dan mudah dikembangkan.

Project ini juga menerapkan **Repository Pattern** untuk memisahkan business logic dengan sumber data.

---

## Fitur Aplikasi

Fitur yang terdapat pada aplikasi ini:

- Menampilkan daftar produk pada halaman katalog
- Menambahkan produk ke cart
- Mengecek apakah produk sudah ada di cart
- Menampilkan daftar produk yang ada di cart
- Menghapus semua item dari cart
- Navigasi antara halaman Catalog dan Cart

---

## State Management

Project ini menggunakan **Provider** sebagai state management.

Provider digunakan untuk:
- Mengelola state cart
- Menghubungkan UI dengan business logic
- Memperbarui UI secara otomatis ketika data berubah

Class `CartProvider` bertugas sebagai pengelola state yang berkomunikasi dengan repository.

---

## Clean Architecture

Project ini menggunakan konsep **Clean Architecture** yang membagi kode menjadi beberapa layer agar tanggung jawab setiap bagian kode menjadi jelas.

### 1. Presentation Layer

Layer ini berisi tampilan aplikasi dan state management.

Contoh komponen:
- Pages
- Widgets
- Provider

Folder:
```

presentation/

```

Contoh file:
```

catalog_page.dart
cart_page.dart
cart_provider.dart

```

---

### 2. Domain Layer

Layer ini berisi **business logic utama aplikasi**.

Komponen utama:
- Entities
- Repository Interface

Folder:
```

domain/

```

Contoh file:
```

entities/product.dart
repositories/cart_repository.dart

```

---

### 3. Data Layer

Layer ini berisi implementasi dari repository yang digunakan untuk mengelola data cart.

Folder:
```

data/

```

Contoh file:
```

cart_repository_impl.dart

```

---

## Struktur Folder Project

```

lib
┣ features
┃ ┗ cart
┃   ┣ data
┃   ┃ ┗ repositories
┃   ┃   ┗ cart_repository_impl.dart
┃   ┣ domain
┃   ┃ ┣ entities
┃   ┃ ┃ ┗ product.dart
┃   ┃ ┗ repositories
┃   ┃   ┗ cart_repository.dart
┃   ┗ presentation
┃     ┣ pages
┃     ┃ ┣ catalog_page.dart
┃     ┃ ┗ cart_page.dart
┃     ┗ providers
┃       ┗ cart_provider.dart
┣ injection.dart
┗ main.dart

```

---

## Dependency Injection

File `injection.dart` digunakan untuk melakukan **dependency injection** yaitu menghubungkan repository dengan provider.

Dengan cara ini, UI tidak membuat repository secara langsung sehingga struktur kode lebih modular.

---

## Cara Menjalankan Project

1. Clone repository

```

git clone [https://github.com/username/repository-name.git](https://github.com/username/repository-name.git)

```

2. Masuk ke folder project

```

cd repository-name

```

3. Install dependency

```

flutter pub get

```

4. Jalankan aplikasi

```

flutter run

```

Untuk menjalankan di browser dapat menggunakan:

```

flutter run -d chrome

```

---

## Teknologi yang Digunakan

Teknologi yang digunakan pada project ini:

- Flutter
- Dart
- Provider (State Management)
- Clean Architecture
- Repository Pattern

---

## Tujuan Pembelajaran

Melalui project ini saya mempelajari:

- Implementasi Clean Architecture pada Flutter
- Pemisahan tanggung jawab antar layer
- Penggunaan Provider sebagai state management
- Penerapan Repository Pattern
- Dependency Injection sederhana

---