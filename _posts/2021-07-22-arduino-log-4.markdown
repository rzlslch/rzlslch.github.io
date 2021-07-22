---
layout: post
title: "Arduino log 4"
permalink: /arduino-log-4
date: 2021-07-22 18:57 +0700
categories: code
comments: true
---
Assalamu'alaikum Warahmatullah Wabarakatuh

Bismillahirrahmanirrahim

Jadi kemaren cerita nya saya mau pake pro mini untuk dijadiin controller, wireless pake nrf24l01. Dan ternyata ntah mengapa pro mini saya ga bisa detect nrf24l01. 3 pro mini, 3 3 nya ga bisa detect. Sudah saya kasih kapasitor, kata forum-forum ga bisa ke detect karena listriknya kurang. Tetep ga bisa. Saya pake pro mini 3.3v, ga bisa. akhirnya beli lagi pro mini 5v. Tetep ga bisa. Beda merk. Satunya clone, satunya robotdyn. Ga bisa. Ancen asu. Mana saya uda desain di kicad basisnya pro mini. Asu.

Akhirnya saya balik ke micro. Bisa. Yaudah pake micro aja.

Yang baru adalah, receiver nya yang pake pro micro saya tambahin OLED 128x32. Mantap. OLED nya saya pake untuk nampilin state layer. Jadi proyek ini kan tujuannya buat bikin mechanical keyboard. 60%. Ada layer nya. Nah state layer itu yang saya tampilin di layar. Dan dia cuman pake 2 pin, SCL dan SDA. Mantaps sekali. Yang ini sudah oke.

Sekarang, saya riset untuk suplai daya nya. Saya pake batrei lipo 3.7v. Saya mau cobain untuk suplai daya ke pin 3.3v dan 5v. Lebih baik yang mana dan mending pake yang mana. Kalo suplai daya ke pin 3.3v, maka sumber daya akan mengirimkan daya secara paralel ke pin 3.3v arduino micro dan nrf24l01. Kalo suplai daya ke pin 5v, maka nrf24l01 akan mengambil daya dari pin 3.3v dari arduino micro.

Sekian dulu.

<br>
<br>

Wassalamu'alaikum Warrahmatullah Wabarakatuh.