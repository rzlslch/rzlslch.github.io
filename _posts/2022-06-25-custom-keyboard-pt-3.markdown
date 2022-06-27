---
layout: post
title: custom keyboard part 3
permalink: /custom-keyboard-pt-3
date: 2022-06-25 20:23 +0700
categories: kbd
comments: true
---
Assalamu'alaikum Warahmatullah Wabarakatuh

Bismillahirrahmanirrahim

Sudah setahun lebih sejak terakhir kali saya build keyboard. Dan hampir setahun saya ga pake keyboard mechanical. Jadi di tahun 2022 ini, saya memutuskan untuk build keyboard baru.

Jadi gini ceritanya, keyboard saya yang biru kemarin, pro micro nya dirusak sama bocil, saya males mbenerin, udah.

Untuk keyboard yang sekarang, saya tetep ndesain sendiri. Ada beberapa yang berbeda di keyboard kali ini. 
- Layout nya saya pilih WKL. 
- Dan saya desain untuk pengunci case nya saya pake model snap-on, bukan baut dan/atau mur.
- controller nya nrfmicro, yang berarti bisa wireless out of the box

![nrfmicro](/assets/img/nrfmicro.jpg){:width="100%" .center-image}

Saya memutuskan untuk pakai snap-on bukan mur/baut karena di keyboard yang sebelumnya, saya menggunakan threaded insert m2, dan ketika masang malah melenceng semua. Emang stats dex saya rendah banget. Maka, di build yang kedua ini, saya memutuskan untuk memakai mekanisme snap-on saja. Biar semua mesin yang atur. Selain itu juga ga bingung misal mur nya hilang atau ga pas.

![top case snap](/assets/img/top_case_snap.jpg){:width="100%" .center-image}

Buka tutup case nya juga jadi lebih gampang. Ga perlu nyari obeng dulu.

![bot case snap](/assets/img/bot_case_snap.jpg){:width="70%" .center-image}
*bottom case nya buat housing snap nya* 
{: style="text-align: center;"}

![snap](/assets/img/snap.jpg){:width="100%" .center-image}
*buat buka tinggal didorong aja, lepas ntar. kayak bongkar pasang gearbox nya tamiya* 
{: style="text-align: center;"}

<br>
<br>

----------------

Case keyboard saya kali ini ada 3 bagian, lebih 1 dari yang sebelumnya yang cuman 2 bagian. Ada top case, bottom case, sama plate. plate nya sendiri saya buat tebalnya 3mm karena saya ga suka plate yang terlalu flex. Meskipun 50% kekakuannya karena kekunci sama pcb nya. (karena disolder)

![wkl_plate](/assets/img/wkl_plate.jpg){:width="100%" .center-image}

![wkl_top](/assets/img/wkl_top.jpg){:width="100%" .center-image}

![wkl_bottom](/assets/img/wkl_bottom.jpg){:width="100%" .center-image}

Untuk controller nya sendiri saya pake nrfmicro. Kebetulan tahun lalu waktu saya lagi seneng-senengnya riset arduino, saya nemu ada yang jual nrfmicro. Langsung saya stop riset saya. Ngapain riset kalo udah ada solusi. Jadi nrfmicro ini umurnya udah hampir setahun juga.

Untuk desain pcb, ya begitulah ya. Standar. Pokoknya bisa dibuat mounting pro-micro dan derivasi nya. Nrfmicro ini juga footprint nya plek sama kayak pro micro, cuman ketambahan 2 bolongan diatas sendiri buat baterei. Jadi pcb ini juga bisa dipake buat yang non-wireless pake pro micro misal nanti pengen build lagi.

![pcb](/assets/img/pcb_wkl1.JPG){:width="100%" .center-image}
![pcb](/assets/img/pcb_wkl2.JPG){:width="100%" .center-image}
*kira-kira kayak gini lah pcb nya, lupa moto, ini renderan dari kicad*
{: style="text-align: center;"}

<br>
<br>

----------------

Ada 2 firmware yang jadi pilihan saya untuk nrfmicro ini. Yang pertama qmk branch nrf52, yang kedua zmk. Saya pilih zmk.

Dan oh boy, zmk is goooood. it's gooooooood.

Apalagi bootloader nrfmicro yang memungkinkan untuk drag&drop firmware langsung. Ooooh it's soooo gooooooood. Dan zmk itu sebenernya guampang banget make nya, asalkan teliti. Soalnya wiki nya ga diupdate. XIANJING BIKIN BINGUNG WAKTU NULIS OVERLAY.

Oke, next part bakal bahas zmk ini.

Dan ini jadinya.

![wkl_done](/assets/img/wkl_done.jpg){:width="100%" .center-image}

Kesampaian juga akhirnya punya wkl 60% yang wireless. Catatan ini diketik menggunakan keyboard yang sedang dibahas.

<br>
<br>

Wassalamu'alaikum Warrahmatullah Wabarakatuh.

[Part 1]({% post_url 2021-01-16-custom-keyboard-pt-1 %})
[Part 2]({% post_url 2021-02-08-custom-keyboard-pt-2 %})
[Part 4]({% post_url 2022-06-27-custom-keyboard-pt-4 %})