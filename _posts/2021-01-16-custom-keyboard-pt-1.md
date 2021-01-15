---
layout: post
title: custom keyboard part 1
date: 2021-01-16 00:07 +0700
permalink: kbd/custom-keyboard-pt-1
categories: kbd
---
Assalamu'alaikum Warrahmatullah Wabarakatuh

Bismillahirrahmanirrahim

Alhamdulillah saya kesampaian juga untuk bikin custom keyboard lagi. Custom keyboard terakhir kalo ga salah 2 tahun lalu. Seperti biasa, custom keyboard kali ini juga pake 3d printing, dan saya memutuskan untuk pake layout 60% standard ANSI, karna emang ternyata paling enak layout itu.

Berikut ini penampakannya.

![3d print case standart 60%](/assets/img/custom-keyboard-01.jpg){:width="100%" .center-image}

![3d print case standart 60%](/assets/img/custom-keyboard-02.jpg){:width="100%" .center-image}

Bahannya menggunakan PLA, cukup halus dan kokoh ya. Ini saya ngeprint nya pesen, pake infill 50% biar agak kokoh, tapi ternyata malah lebih kokoh daripada yang saya bayangkan sebelumnya.

Pesan 3d print nya [disini][tokped-roboku], rekomended!

[tokped-roboku]:https://www.tokopedia.com/roboku/jasa-cetak-3d-print-pla


Setelah pesanan nya dateng, saya amplas dulu biar halus, pake amplas 600 (pengennya pake 1000 tapi adanya itu, yaudah). Jadi nya cukup halus, nanti rencananya mau saya spray paint.

<br>
<br>

----------------------------------------------------------

Untuk custom keyboard kali ini ada yang agak beda. Biasanya saya selalu pake pcb aftermarket, atau handwiring kalo emang ga bisa dapet pcb. Kali ini saya coba buat pcb sendiri. Tapi tetep pake microcontroller aftermarket. Sebenernya tujuannya adalah untuk ngepres dana, pcb aftermarket soalnya mahal-mahal. Paling enggak harus keluarin dana sekitar 500rb untuk 1 pcb. Maka dari itu, gimana kalo nyoba buat pcb sendiri aja, pikir saya waktu itu. Toh berapa sih harga cetak pcb, ga mungkin lebih mahal dari harga pcb jadi kan.

Setelah coba-coba desain pcb menggunakan KiCad, saya lalu cari jasa cetak pcb. Dan saya pun terkaget-kaget. 

Ternyata mahal banget. 

Yang tujuan awalnya pengen ngepres dana, ini malah overbudget kalo pake pcb custom. Padahal ga pake komponen apa-apa, cuman pcb dan jalurnya tok. Coba saya tanya ke vendor, ada yang kena nya sampe 1jt. Hmm.. Sempet mikir ga jadi aja. Tapi alhamdulillah, akhirnya dapet cetak pcb murah, cuman agak lama prosesnya. Satu pcb nya ukuran 30x10 cm cuman 95rb, tapi minimal harus cetak 5. Total + ongkir kenanya 495rb. Sama aja ya kan. Gapapa tapi masih dalam budget untuk pcb. Dan dapet 5! Masih ada sisa 4 setelah build ini, sapa tau besok-besok mau build lagi, atau kalo ada tertarik build macem gini juga saya udah ada pcb nya (tapi tetep kudu ikut layout dan desain saya sih..)

![custom pcb](/assets/img/custom-pcb-01.jpg){:width="100%" .center-image}

Untuk microcontroller nya sendiri, saya menggunakan pro micro clone, harga nya cuman 50rb, itu belinya udah lama sih. Kalo sekarang mungkin masi bisa dapet harga sekitar 50-80rb tergantung toko nya.

Cetak pcb nya [disini][tokped-pcb]

[tokped-pcb]:https://www.tokopedia.com/redpower2006

<br>
<br>

-----------------------------------------------------------------

Selanjut nya adalah switch dan stabilizer.

Untuk switch sendiri saya memilih menggunakan gateron black. Udah pernah pengalaman pake gat black, suka, nyaman, akhirnya pilihan jatuh kesana. Gateron Black yang KS-3X47 lebih tepatnya. Kenapa pilih itu, ya karena adanya itu. Saya bukan termasuk orang yang terlalu picky dalam masalah switch. Gateron Black sudah cukup smooth dan berat nya pas. 

Stabilizer nya saya menggunakan DUROCK white plate mount stabs yang TKL. Salah satu penyebab kenapa sampe mundur lama banget buat bikin custom keyboard ya salah satu nya karena stabilizer sih. Buat cari plate mount stabilizer tanpa harus beri dari luar negeri itu lumayan susah. Akhirnya ditunda-tunda terus, lupa, dan baru kesampaian sekarang karena akhirnya MKID ready stock!

![custom switch & stabilizer](/assets/img/custom-switch-stabs-01.jpg){:width="100%" .center-image}
*ada ablilista japan cup 2018 pengen ngikut mejeng*
{: style="text-align: center;"}


Switch dan Stabilizer bisa dibeli di [MKID][tokped-mkid]

[tokped-mkid]:https://www.tokopedia.com/mechkeyboardsid/etalase/switch-sparepart

<br>
<br>

-------------------------------------------------------------------

Untuk keycaps, saya beli PBT Iris clone di shopee.

![keycaps](/assets/img/custom-keycaps-01.jpg){:width="70%" .center-image}
*maafkan filter nya, yang ngefoto istri saya* 
{: style="text-align: center;"}

<br>
<br>

-------------------------------------------------------------------

Kira-kira seperti itu proses ide dari pembuatan custom keyboard untuk kali ini. Dibawah ini akan saya rangkum bahan-bahan, alat, dan total pengeluaran yang saya keluarkan waktu build keyboard ini

<br>

| Barang                                  | Harga (Rp)|
| :-------------------------------------- | --------: |
| 3d printing untuk case (210gr)          | 210.000   |
| cetak pcb minimal 5pcs @95rb + ongkir   | 495.000   |
| gateron black x65 @4200                 | 273.000   |
| DUROCK stab plate mount TKL             | 95.000    |
| Ongkir MKID                             | 16.000    |
| Pro Micro Clone + Ongkir                | 65.000    |
| PBT Iris Clone JKDK free ongkir shopee  | 777.000   |
| kabel micro usb                         | 40.000    |
| dioda 1N4148 (beli 100 sekalian) @100 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  | 10.000    |
| --------------------------------------- | --------: |
| **Total**                               | **1.981.000** |

<br>

Ternyata hampir 2jt. Saya merasa gagal dalam manajemen dana hobi. Tapi cukup puas karena akhirnya kesampaian bikin custom keyboard lagi. 

<br>

Apakah ini endgame? Tentu saja bukan. Tapi paling enggak keyboard ini bakalan saya jadikan daily driver. Keyboard yang sekarang pake switch kailh rose clicky, lama-lama ga nyaman pake clicky, apalagi yang tipe speed. Belum klik udah aktuasi.

<br>

Baiklah sekian dulu field report custom keyboard saya, untuk part berikutnya akan saya bahas proses pengecatan dan solder menyolder.

<br>
<br>

Wassalamu'alaikum Warrahmatullah Wabarakatuh.