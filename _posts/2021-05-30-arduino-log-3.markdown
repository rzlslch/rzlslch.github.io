---
layout: post
title: "Arduino log 3"
permalink: /arduino-log-3
date: 2021-05-30 03:02 +0700
categories: code
comments: true
---
Assalamu'alaikum Warahmatullah Wabarakatuh

Bismillahirrahmanirrahim

Jadi yang kemaren ada problem soal koneksi keputus tiba-tiba, ternyata masalah nya ada di perangkat nya.
1. Kabel nya ga bener-bener nancep rapet ke port, agak longgar gitu. 
2. Batere nya uda mau habis. Problem ini karena saya konekin power nya ke port VIN, dimana itu voltase masuknya di range 7-12V, sedangkan batere saya cuman 3.7V (2.2-4.2V), jadinya ya kekuras cepet banget. Sekarang sih saya masukin ke 5V, paling enggak bisa lebih hemat daya dikit.

Dan kemaren lalu ada problem yang menarik sekali (nulisnya baru sekarang setelah problem solved agak lama juga). Kebetulan saya pake arduino micro (Robotdyn atmega32u4-M), tapi salah ngeburn bootloader arduino leonardo ke dalemnya. Alhasil board nya ke detect sebagai arduino leonardo (pro micro). Dan ga bisa diapa-apain. Saya burn ulang bootloader nya pun ga bisa. 

--------------

Sedikit curhat. Skip aja ga penting ini.

Jadi karena saya minim sekali pengalaman dan pengetahuan di bidang ini, sekedar googling pun ga bisa mengatasi problem ini. Akhirnya saya memutuskan untuk bertanya ke komunitas arduino. 

Gini, saya itu ga begitu suka berinteraksi sama komunitas kalo ga bener-bener kepepet. Pengalaman saya bertanya di komunitas itu kebanyakan tidak menghasilkan solusi soalnya. Memang, di komunitas biasanya banyak berkumpul orang-orang yang ahli di bidangnya. Tapi kalo berdasarkan pengalaman saya, sehebat-hebat nya seseorang yang ahli dalam bidang tertentu, akan susah untuk memecahkan permasalahan orang lain sekedar lewat postingan di komunitas online. Kenapa? ada beberapa faktor yang mempengaruhi.
1. Susah diagnosis. Karena ini berhubungan dengan perangkat keras, susah juga untuk mendapatkan informasi-informasi yang membantu untuk diagnosis permasalahannya.
2. Post tenggelam. Karena komunitas isinya orang banyak, post nya ga cuman post kita kan. Kebanyakan post bakalan tenggelam dan jarang dilihat oleh orang-orang yang ahli. Jika memang kebetulan dilihat orang yang ahli, biasanya kembali ke poin nomor 1. 
3. Time value. Kalo emang ga lagi nganggur sebenernya males juga lo problem solving masalah orang lain yang ga jelas juga gimana dan kenapa terjadinya.
4. Dan masih banyak lagi.

Jadi apa yang terjadi? Saya post pertanyaan saya. 

"Arduino Micro salah burn bootloader blablabla".

Ada yang komen. "Burn bootloader ulang"

Saya jawab. "Ga bisa. Device nya ga respon. error log nya seperti ini blablabla"

Dibales. "Pake <<*insert another scenic hardware name*>> uda dicoba?"

Saya jawab lagi. "Ga punya gan"

Well, saya penasaran dong apa itu yang dimaksud. Setelah saya cari-cari, ternyata itu alat ntah gimana ngoprasiin nya, entah fungsi nya buat apa, dan harganya mahal banget. Harganya nih ya, bisa buat beli microcontroller yang saya rusakin ini dapet 2. Lah, daripada beli gituan yang make nya aja ga tau gimana dan buat apa, apa ga mending beli lagi aja microcontroller nya. Gausah dibenerin dah gapapa, toh udah dapet baru, ya ga? Zzzzz

Terus ada yang komen lagi. "<<*ngequote percobaan saya burn bootloader*>> bisa di foto device programmer nya?"

Ya saya bales. "Saya ga pake device gan, pake arduino IDE"

Dianya bales. "Sudah kuduga" Udah. gitu doang.

Apanya yang kau duga hei kisanak? Kemunculan Sunda Nusantara?

Terus apa yang saya lakukan? Baca-baca lagi. Banyak baca-baca-baca, akhirnya bisa ngesolve problem sendiri. Nanti cara solve nya saya tempel di bawah. Dan dengan jurus baru yang saya dapetin dari baca-baca, arduino pro micro saya yang dahulu saya kira ngebrick, gegara ga bisa diapa-apain udah, bisa sembuh dengan jurus yang sama. Alhamdulillah sekali.

Kebanyakan ya kayak gini pengalaman saya berinteraksi di komunitas. Bukan mendiskreditkan komunitas nya, tapi untuk orang kayak saya, berinteraksi di komunitas itu, apalagi bertanya pertanyaan yang saya mentok ga tau jawabannya, sebenernya itu cuman pembuka jalan lain untuk menemukan pemecahan masalahnya secara mandiri. Dengan kata lain sia-sia, gak guna. Ya karena hampir semua respon nya kayak gitu. Karena memang kebanyakan problem yang saya hadapi itu bener-bener ra umum. 

Tapi, apakah saya menghindari komunitas? Oh tentu tidak. Justru saya bergabung di banyak komunitas sebagai silent reader. Karena saya menemukan manfaat yang jauh lebih besar daripada berinteraksi di komunitas, yaitu ilmu. Tutorial-tutorial, Diskusi-diskusi, perdebatan, saya suka bacain hal-hal seperti itu di komunitas. Biasanya pengetahuan yang didapet sehabis baca gituan bisa diinkorporasikan ke kegiatan yang sedang saya lakukan. Oh ternyata bisa seperti itu to, gimana kalo tak *apply* ke project ini, atau itu. Gitu.

End of curhat.

--------------

Kebetulan saya punya arduino nano, saya pake arduino nano sebagai programmer bootloader untuk board saya yang lain.
1. Siapkan (sambungkan ke pc) arduino nano nya (pake arduino lain sebenernya bisa).
2. Buka Arduino IDE 
3. Klik File -> Example -> 11.ArduinoISP -> upload ke arduino nano yang uda disiapkan tadi.
4. Konekkan pin dari arduino nano ke arduino target yang mau di burn bootloader.
    - SCK (nano) -> SCK (target)
    - MOSI (nano, D11) -> MOSI (target)
    - MISO (nano, D12) -> MISO (target)
    - 5V (nano) -> 5V (target)
    - GND -> GND
    - D10 (nano) -> RST (target)
6. Ambil bootloader yang mau di burn dari [sini][arduinocore-avr]. Untuk ini saya pake Caterina-Micro.hex
7. Jalankan avrdude dengan perintah ini `avrdude.exe -P COM19 -b 19200 -c avrisp -p m32u4 -v -e -U flash:w:Caterina-Micro.hex` dimana COM19 itu port dari arduino nano yang saya pake.
8. profit.

Saya ga tau cara ini bisa dipake ke board apa aja, tapi ini saya pake ke board yang beda chip nya pun bisa. Jadi harusnya bisa untuk semua. Cuman yang tegangan sama clock nya beda, itu belom nyoba. Gatau apa 5V bisa dihubungkan ke 3.3V atau enggak, kita tunggu aja tanggal mainnya.

Jadi untuk sementara ini saya masih riset pake board lain, inceran saya adalah arduino pro mini 3.3V supaya daya yang dipakai jadi lebih sedikit dan batere jadi lebih awet. Tapi komponen nya belum kebeli. Nunggu gajian bulan depan. Saya ga mau kalo hobi bisa sampai mengganggu cashflow (meski komponen harganya ga seberapa, tapi kalo terus-terus an ga dikontrol bisa-bisa ga sadar udah habis banyak gitu aja).

Jadi sekian dulu field report kali ini.

<br>
<br>

Wassalamu'alaikum Warrahmatullah Wabarakatuh.

[arduinocore-avr]:https://github.com/arduino/ArduinoCore-avr