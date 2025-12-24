# 🐳 Docker Documentation

Dokumentasi ini berisi perintah-perintah Docker yang diperlukan untuk membangun, menjalankan, dan mengelola container aplikasi.

---

## 1️⃣ Build Docker Image
Membangun Docker image dari aplikasi berdasarkan instruksi dalam Dockerfile.

### Command
```bash
docker build -t simple-apps .
```

### Penjelasan
| Bagian | Deskripsi |
|--------|-----------|
| `docker build` | Perintah utama untuk membangun Docker image. Docker membaca Dockerfile secara berurutan dan mengeksekusi setiap instruksi untuk menghasilkan sebuah image. |
| `-t` (tag) | Flag untuk memberikan nama (dan opsional versi) pada Docker image yang akan dibuat. |
| `simple-apps` | Nama Docker image yang akan dihasilkan. Jika versi tidak ditentukan, Docker otomatis memberikan tag `latest`. |
| `.` (dot) | Build context yang menunjuk ke direktori saat ini. Docker akan mencari file Dockerfile di direktori ini. |

---

## 2️⃣ Run Container
Menjalankan container dari Docker image yang sudah dibuat.

### Command
```bash
docker run -dit -p 8003:3000 --name ct-simple-apps simple-apps
```

### Penjelasan
| Bagian | Deskripsi |
|--------|-----------|
| `docker run` | Perintah untuk menjalankan container baru dari sebuah Docker image. |
| `-d` (detached) | Menjalankan container di background (mode detached). Container berjalan tanpa mengambil alih terminal saat ini. |
| `-i` (interactive) | Menjaga STDIN tetap terbuka meskipun tidak terhubung. Memungkinkan interaksi dengan container. |
| `-t` (tty) | Mengalokasikan pseudo-TTY, memberikan terminal interaktif untuk container. |
| `-p 8003:3000` | Port mapping. Memetakan port `8003` pada host ke port `3000` di dalam container. Akses aplikasi melalui `http://{{ip}}:8003`. |
| `--name ct-simple-apps` | Memberikan nama `ct-simple-apps` pada container agar mudah diidentifikasi dan dikelola. |
| `simple-apps` | Nama Docker image yang akan digunakan untuk menjalankan container. |

---

## 3️⃣ Remove Container
Menghapus container yang berhenti atau sedang berjalan.

### Command
```bash
docker rm -f ct-simple-apps
```

### Penjelasan
| Bagian | Deskripsi |
|--------|-----------|
| `docker rm` | Perintah untuk menghapus satu atau lebih container Docker. |
| `-f` (force) | Flag untuk memaksa penghapusan container yang sedang berjalan (running) tanpa perlu menghentikannya terlebih dahulu. |
| `ct-simple-apps` | Nama container yang akan dihapus. |

---

## 4️⃣ Useful Commands
Perintah tambahan yang berguna untuk mengelola container dan image.

### Melihat container yang berjalan
```bash
docker ps
```

### Melihat semua container (termasuk yang berhenti)
```bash
docker ps -a
```

### Melihat Docker images
```bash
docker images
```

### Menghentikan container
```bash
docker stop {{container-name}}
```

### Menjalankan kembali container yang dihentikan
```bash
docker start {{container-name}}
```

### Melihat logs container
```bash
docker logs {{container-name}}
```

### Menghapus Docker image
```bash
docker rmi {{images-name}}
```

### Membuat docker network dengan IP custom
```bash
docker network create --subnet 10.100.1.0/24 net-A
```

---

*Terakhir diperbarui: 2025-12-24*