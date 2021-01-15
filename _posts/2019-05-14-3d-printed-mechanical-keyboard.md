---
layout: post
title: 3d printed mechanical keyboard
date: 2019-05-16 01:45 +0700
permalink: /3d-printed-mechanical-keyboard
categories: kbd
---
Assalamu'alaikum Warrahmatullah Wabarakatuh

Bismillahirrahmanirrahim

Kegiatan akhir-akhir ini adalah `Prototyping` mechanical keyboard case dengan menggunakan metode 3d printing. Tahun lalu sudah berhasil membuat 60% case, namun masih ada beberapa kesalahan kecil dalam desainnya, yang sampai sekarang pun masih belum disentuh kembali.

Sedikit review dari pembuatan case 60% tahun lalu.

- Pembuatan desain dilakukan dengan pengukuran manual, lalu dilanjutkan dengan pemodelan pada aplikasi `Blender`. Karena kurangnya penguasaan terhadap aplikasi, maka proses pemodelan tidak begitu akurat, sehingga menyebabkan hasil tidak pas. Lubang `mounting` pada pcb (pembuatan berdasarkan tray mount) melenceng sebesar 1-2mm, sehingga tidak semua lubang dapat digunakan.

- Karena keterbatasan vendor, case diprint secara vertikal, sehingga hasil jadinya agak sedikit penceng (tidak terlihat ketika dipandang sekilas, tapi langsung ketahuan saat dilakukan pemasangan).

![3d print case model hhkb 7u](/assets/img/IMG_4545.JPG){:width="50%" .center-image}

- Kurang halus waktu ndempul.

Dokumentasi lebih lengkap [imgur][mech-1]

[mech-1]:https://imgur.com/gallery/WYtRT1Y

--------------------------------------

Awal tahun ini sudah merencanakan pembuatan 60% case, 66 keys lebih tepatnya karena mengambil model dari Leopold FC660M. 

Pada saat pembuatan case ini alhamdulillah bisa mendapatkan vendor 3d printing yang sanggup melakukan pencetakan objek dengan ukuran besar, sehingga tidak dicetak vertikal atau `worst case` nya dicetak dengan terlebih dahulu di `slice`. Yaitu dipotong menjadi dua atau lebih bagian sehingga dapat lebih mengakomodasi ukuran cetak.

![3d print case model fc660](/assets/img/IMG_4885.JPG){:width="90%" transform="rotate(45deg)" .center-image}

Mikrokontroler yang digunakan adalah Adafruit Bluefruit 32u4 Feather dengan fitur BLE (Bluetooth Low Energy). Namun untuk dapat menggunakan fitur BLE, maka pin yang dapat digunakan hanya 17 pin, sehingga layout nya harus dibagi dalam matrix 6x11. Untuk pembahasan mengenai pin, matrix, mikrokontroler dsb akan dibahas pada post berikutnya.

![3d print case model fc660](/assets/img/IMG_4900.JPG){:width="90%" .center-image}

Hasil jadinya, masih menggunakan kabel, dikarenakan batere yang sudah disiapkan (LiPo battery 500mAh 3.7V) terputus pada pin penghubung antar kutub dan sangat susah untuk menyambungkan nya kembali dengan timah sehingga untuk sementara menggunakan mode kabel dulu (Meskipun mode bluetooth sudah bisa digunakan).

![3d print case model fc660](/assets/img/IMG_4908.JPG){:width="90%" .center-image}