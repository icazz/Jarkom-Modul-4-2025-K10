# Jarkom-Modul-4-2025-K10
## Anggota Kelompok 10
| Nama                      | NRP        | Pembagian |
| --------------------------| ---------- | --------- |
| Bayu Kurniawan            | 5027241055 | CPT CIDR  |
| Ica Zika Hamizah          | 5027241058 | GNS VLSM  |

### GNS VLSM 

Pertama buat topologi sesuai soal di GNS, agar memudahkan pengerjaan, tandai setiap subnet dan beri nama seperti A1, A2, dll. Dalam topologi dibawah ini terdapat 23 subnet.

![rangkaian](assets/topologi_gns_vlsm.png)

Berikut daftar rute sesuai subnetnya

![rute](assets/rute.png)

#### Menentukan base network

Karena prefix IP-nya `192.216`, maka base-nya adalah `192.216.0.0`. Total kebutuhan host adalah 3219, maka prefixnya `/20`.
Maka base networknya adalah `192.216.0.0/20`.

Berikut kebutuhan host, dan pembagian ipnya bisa dilihat dibawah ini.

![pembagian](assets/pembagian.png)

Untuk memudahkan pembagian dan perhitungan, buat pohon untuk persebaran IP-nya, dimulai dari prefix atas yakni `/20`

![1](assets/1.png)


![2](assets/2.png)


![3](assets/3.png)



