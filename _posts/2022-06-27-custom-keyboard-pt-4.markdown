---
layout: post
title: "custom keyboard part 4"
permalink: /custom-keyboard-pt-4
date: 2022-06-27 18:11 +0700
categories: kbd
comments: true
---
Assalamu'alaikum Warahmatullah Wabarakatuh

Bismillahirrahmanirrahim

Kali ini saya akan membahas [**ZMK**][zmk]. Di post sebelumnya, saya membahas tentang keyboard baru yang saya build menggunakan nrfmicro sebagai controller nya, dan zmk sebagai firmware nya. Dan ini gambar keyboard nya, HD. 

![keyboard wkl](/assets/img/keyboar_wkl.jpg){:width="100%" .center-image}

[zmk]:https://zmk.dev/

<br>
<br>

----------------

Oke langsung saja.

Di dokumentasi nya sendiri, zmk ini cukup jelas dan to the point. Jadi saya langsung ikuti aja. Mulai dari setup sampek bikin shield sendiri.

Disini masalah mulai muncul.

Kalo dari dokumentasi nya, tutorial seperti ini.

![tutorial_1](/assets/img/tutorial_1.JPG){:width="100%" .center-image}
![tutorial_2](/assets/img/tutorial_2.JPG){:width="100%" .center-image}

Yasudah ikutin aja kan? Tapi ternyata setelah dibuild, error. Saya ga tampilin error nya disini soalnya waktu kemaren build itu ga sempet dokumentasi.

Bingung kan, saya coba buka-buka shield yang ada. Dan bener emang. Di overlay mereka, ga ada yang pake `&pro_micro` lagi. Semua nya mereferensikan `&pro_micro_a` dan `&pro_micro_d`. Setelah cari-cari di google sebentar, ketemulah [ini][update-wiki-overlay]. Ternyata wiki nya ga keupdate. Xianjing beneran.

[update-wiki-overlay]:https://github.com/zmkfirmware/zmk/blob/304603240f7ba16f67912a0031c64fb9ae4e8279/docs/docs/dev-guide-new-shield.md

Tapi ga masalah sih. Setelah saya teliti, ternyata referensi nomor pin nya tetep sama, pake yang warna biru, cuman ada beberapa pin yang pake `A` dan `D`. Analog dan Digital? Bisa jadi. Jadi main amannya, default nya pake `&pro_micro_d`, kalo ada referensi pin `A%%`, maka di overlay ditulisnya `&pro_micro_a %%`. Jadi seperti ini.

{% highlight ruby %}
col-gpios
        = <&pro_micro_a 10 GPIO_ACTIVE_HIGH>
        , <&pro_micro_d 16 GPIO_ACTIVE_HIGH>
        , <&pro_micro_d 14 GPIO_ACTIVE_HIGH>
        , <&pro_micro_d 15 GPIO_ACTIVE_HIGH>
        , <&pro_micro_a 0 GPIO_ACTIVE_HIGH>
        , <&pro_micro_a 1 GPIO_ACTIVE_HIGH>
        , <&pro_micro_a 2 GPIO_ACTIVE_HIGH>

row-gpios
        = <&pro_micro_d 1 (GPIO_ACTIVE_HIGH | GPIO_PULL_DOWN)>
        , <&pro_micro_a 9 (GPIO_ACTIVE_HIGH | GPIO_PULL_DOWN)>
        , <&pro_micro_a 8 (GPIO_ACTIVE_HIGH | GPIO_PULL_DOWN)>
        , <&pro_micro_d 7 (GPIO_ACTIVE_HIGH | GPIO_PULL_DOWN)>
        , <&pro_micro_d 6 (GPIO_ACTIVE_HIGH | GPIO_PULL_DOWN)>
        , <&pro_micro_d 5 (GPIO_ACTIVE_HIGH | GPIO_PULL_DOWN)>
        , <&pro_micro_d 4 (GPIO_ACTIVE_HIGH | GPIO_PULL_DOWN)>
        , <&pro_micro_d 3 (GPIO_ACTIVE_HIGH | GPIO_PULL_DOWN)>
        , <&pro_micro_d 2 (GPIO_ACTIVE_HIGH | GPIO_PULL_DOWN)>
        , <&pro_micro_d 0 (GPIO_ACTIVE_HIGH | GPIO_PULL_DOWN)>
{% endhighlight %}

Dan kecenya lagi, di zmk juga bisa matrix-transform. Apa itu matrix-transform? Kita kan kalo bikin pcb, untuk mbagi pin yang terbatas biar jadi banyak, tombol-tombol nya dibikin matrix kan. Dan untuk mengakomodasi pin-pin yang terbatas kadang ada tombol yang letak nya di matrix ga sesuai sama letaknya di tampilan.

Misal. Kita ada micro controller yang punya 16 pin. Kita mau buat keyboard 60% misalkan.

Di keyboard 60% itu kan tampilan matrix tombolnya 14 kolom x 5 baris, dengan total 61 tombol. Berarti micro controller nya ga cukup untuk mengakomodasi 14x5 matrix. Dia butuh minimal 19 pin.

Tapi, kalo kita pake matrix 8x8, dengan jumlah tombol 64, maka microcontroller 16 pin jadi bisa mengakomodasi 61 tombol yang diperlukan sama layout 60%. Nantinya, desain pcb nya juga harus menyesuaikan. Fungsinya matrix transform itu, biar visual matrix sama pin matrix nya keliatan rapi dan gampang di mapping. Ini matrix transform saya.

![matrix](/assets/img/matrix.JPG){:width="100%"}

Setelah itu tinggal di build.

![zmk-build](/assets/img/zmk_build.JPG){:width="100%"}

Setelah selesai build nya, firmware nya nama nya zmk.uf2.

![zmk-firmware](/assets/img/zmk_firmware.JPG){:width="100%"}

Nrfmicro ini bootloader nya keren. Jadi dia itu modelnya kayak flashdisk. Tinggal drag&drop aja firmware yang barusan dibuild.

![bootloader](/assets/img/bootloader.JPG){:width="100%" .center-image}

Udah jadi. Kombinasi zmk dan nrfmicro bener-bener pas sih menurut saya. Ga pake ribet (kecuali waktu bikin overlay gara-gara wiki ga diupdate). 

<br>
<br>

----------------

Sebenernya di build kali ini itu ada satu yang kelewatan. Saya ga bikin switch on/off buat keyboard nya. Jadi dia ga bisa mati alias hidup terus. Ini saya kasih baterei 2000mah, dan pemakaian dayanya lumayan hemat sih. Dari pertama kali build keyboard ini (2022-06-22) sampai saya nulis artikel ini (2022-06-27) cuman berkurang 2%. Berarti kira-kira dia makan 0.5%/hari. Kalo 100% berarti bisa tahan kurang lebih setengah tahun ya baru butuh dicas lagi.

Oh iya, lubang usb di case nya juga pas banget. Ga nyangka.

![usb c](/assets/img/usb_c.jpg){:width="100%"}
<br>
<br>

Wassalamu'alaikum Warrahmatullah Wabarakatuh.

[Part 1]({% post_url 2021-01-16-custom-keyboard-pt-1 %})
[Part 2]({% post_url 2021-02-08-custom-keyboard-pt-2 %})
[Part 3]({% post_url 2022-06-25-custom-keyboard-pt-3 %})
