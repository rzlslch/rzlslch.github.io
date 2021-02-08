---
layout: post
title: custom keyboard part 2
date: 2021-02-07 23:28 +0700
permalink: /custom-keyboard-pt-2
categories: kbd
comments: true
---
Assalamu'alaikum Warrahmatullah Wabarakatuh

Bismillahirrahmanirrahim

Alhamdulillah akhirnya keyboard pun selesai dibuat.

![3d print case standart 60%](/assets/img/custom-keyboard-03.jpg){:width="70%" .center-image}
*custom keyboard ~~endgame~~ akhirnya jadi*
{: style="text-align: center;"}

----------------

Selama pembuatan keyboard ini, ada beberapa (banyak) masalah.

Jadi gini. Yang pertama, keyboard ini ga jadi pake case yang kapan hari 3d print. Saya ngeprint lagi case yang sama, ada perubahan sedikit, tapi di penyedia jasa print 3d yang beda. Sebelumnya, hasil 3d print nya uda cukup bagus, halus, bahkan udah saya cat sampek jadi. Tapi waktu mau dipasang ke pcb, ternyata ukurannya salah. Bukan dari desainnya, tapi emang waktu di print 3d, kayak ukurannya menyusut jadi sekitar 90-95% ukuran aslinya. Ya jadinya ga pas ke pcb nya.

Yang kedua, aga panjang ceritanya. Karena ga bisa dipasang ke case nya, dan waktu itu saya butuh banget keyboard (keyboard lama mati, males pake laptop, di pc cuman bisa pake on-screen keyboard), saya solder lah switch dan controller langsung ke pcb nya. Jadinya kayak gini.

![3d print case standart 60%](/assets/img/custom-keyboard-nude.jpg){:width="100%" .center-image}

Untuk sementara, masi bisa pake keyboard, dan akhirnya saya desain lagi case nya yang emang ada beberapa revisi untuk masalah baut dan spasing. Pake keyboard temporary ini, bisa lah buat ngoprasikan **Blender**.

![model 3d](/assets/img/blender29new_keyboard_01.jpg){:width="100%" .center-image}

Setelah jadi, export jadi stl, kirim lah ke vendor untuk di print. Print nya [disini][tokped-cinta-print3d]

[tokped-cinta-print3d]:https://www.tokopedia.com/cinta3dprintshop/3d-print-pla-3d-printing-cetak-3-dimensi-biru

![3d print case standart 60%](/assets/img/custom-keyboard-04.jpg){:width="100%" .center-image}
*casing buat keyboard, hasilnya lumayan halus, dan yang paling penting, presisi. maapkan mejanya berantakan, bekas buat nyolder2*
{: style="text-align: center;"}

Setelah barangnya sampek, kudu dipasang ke pcb kan. Karena switch nya uda kepasang ke pcb, mau ga mau kudu desolder semua switch, yang nantinya bakal dipasang ke case nya. Disini case nya tipe nya floating, jadi plat dan case top jadi satu, ga ada *pagar* switch nya. 

Sampe sini masih oke. Karena desain pcb nya nya yang nempatkan mcu nya dibawah switch K1, jadinya harus ngelepas mcu nya juga untuk desolder switchnya. Masalahnya datang dari sini. Ketika desolder pin **Pro Micro**, dia tetep ga mau dicopot alias masih nempel.

Terpaksa, saya potong itu kaki pin nya mcu pake nipper.

Eh la kok malah jadi kacau semua. Waktu motong kaki pin nya, ntah mungkin karena terlalu kuat, jadi nya malah ngerusak lubang pin di **Pro Micro** nya. 

![3d print case standart 60%](/assets/img/bangkai-pro-micro.jpg){:width="60%" .center-image}
*bangkai pro micro*
{: style="text-align: center;"}

Ada beberapa lobang pin yang jebol. Walaupun sebenernya **Pro Micro** nya masi bisa nyala dan dipakai, tapi desain pcb yang saya pake wajib pake semua pin nya dan saya juga males ngejumper. Akhirnya beli pro micro lagi. Murah kok cuman 50-60rb an.

Dan bangkai pro micro nya juga masi bisa dipake buat ngebuild yang lain ntar, dengan sisa pin yang ada.

Masalah yang ketiga adalah, jalur pcb custom nya ikutan rusak. Tapi nda masalah sih, saya kan ada 4 pcb lagi. Problem sebenernya adalah saya kehabisan dioda 1N4148. Di daerah sini ga ada toko komponen elektronika, jadi ga bisa langsung beli. Kalo pesen di toko online juga harus nunggu pengiriman. Dan model pcb nya harus solder dioda manual.

![3d print case standart 60%](/assets/img/custom-pcb-02.jpg){:width="100%" .center-image}
*seperti ini*
{: style="text-align: center;"}

Saya harus desolder semua dioda dari pcb yang rusak, yang nantinya bakal disolder lagi ke pcb lain yang masih bener. desolder 61 dioda, terus solder ulang ke pcb baru. 122 kali. Capek.

Setelah semua proses dilalui, selesai juga keyboard ini. MCU juga uda di flash ke settingan sebelumnya, tambah beberapa modifikasi. Case nya juga langsung apa ada nya, ga pake amplas2 atau cat2 lagi, soalnya saya udah capek. Dan hasilnya cukup memuaskan

![3d print case standart 60%](/assets/img/custom-keyboard-05.jpg){:width="100%" .center-image}

![3d print case standart 60%](/assets/img/custom-keyboard-06.jpg){:width="100%" .center-image}

<br>
<br>

Baiklah sekian dulu field report saya, mungkin ada part berikutnya yang akan membahas bagaimana mendesain pcb menggunakan KiCad, membuat layout menggunakan QMK sekaligus bagaimana nge-*flash* mcu sampai jadi keyboard.

<br>
<br>

Wassalamu'alaikum Warrahmatullah Wabarakatuh.

[Part 1]({% post_url 2021-01-16-custom-keyboard-pt-1 %})