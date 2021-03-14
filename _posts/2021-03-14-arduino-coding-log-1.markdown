---
layout: post
title: "Arduino coding log 1"
permalink: /arduino-coding-log-1
date: 2021-03-14 12:12 +0700
categories: code
comments: true
---
Assalamu'alaikum Warahmatullah Wabarakatuh

Bismillahirrahmanirrahim

Pada kesempatan kali ini saya memutuskan untuk bereksperimen dengan micro controller. Lebih tepat nya Arduino Pro Micro (Leonardo). Saya menambahkan modul nrf24l01+ sebagai transreceiver. 

| Barang                                  | Harga (Rp)|
| :-------------------------------------- | --------: |
| 2 pro micro @ 60rb                      | 120.000   |
| 2 module nrf24l01+ @13rb                | 26.000    |
| breadboard                              | 15.000    |
| kabel jumper pelangi                    | 20.000    |
| 2 kabel data usb-micro @15rb            | 30.000    |
| dioda 1n4148 x100                       | 20.000    |
| **Total**                               | **231.000** |

Saya mempelajari bagaimana cara berkirim data menggunakan modul nrf24l01+ untuk menggantikan interaksi wireless dengan bluetooth. Saya pernah punya pengalaman yang kurang mengenakkan dengan bluetooth. Waktu itu saya menggunakan bluefruit feather untuk membuat keyboard wireless bluetooth. Tapi waktu digunakan delaynya kerasa banget. Apalagi biasanya koneksi nya nyendat-nyendat. Kadang masuk, kadang enggak. Disitu saya udah trauma. Apalagi untuk keyboard, latency itu cukup berpengaruh besar dalam kenyamanan penggunaan.

Akhirnya saya memutuskan untuk mempelajari, kira-kira apa yang bisa dibuat untuk menggantikan bluetooth sebagai media koneksi wireless ini. Dan dari situ lah saya menemukan nrf24l01. Modul ini menggunakan modul radio 2.4Ghz, sehingga lebih reliable untuk dijadikan media wireless. Meskipun tidak seperti bluetooth yang langsung bisa konek ke receiver bluetooth apapun, koneksi radio ini harus ada transmitter dan receiver. Nah oleh karena itu, saya memutuskan untuk memulai mempelajari nya lebih dalam. Kebetulan saya baru saja memiliki kesempatan untuk mencoba merealisasikan apa yang selama ini saya idam-idamkan.

Dimulai dari, bagaimana cara menghubungkan modul nrf24l01 ke microcontroller yang saya punya?

Saya membaca referensi dari sini [An Experiment With NRF24L01 and Arduino Pro Micro Data Transmission for IoT][riset]

[riset]:https://www.researchgate.net/publication/338345202_An_Experiment_With_NRF24L01_and_Arduino_Pro_Micro_Data_Transmission_for_IoT

Disitu ditunjukkan koneksi dari modul nrf24l01 ke arduino pro micro harus seperti apa.

Langsung saja pada kodingan, berikut ini adalah untuk transmitter. Disini saya menggunakan library [RF24 fork milik maniacbug][rf24-maniacbug] karena disana terdapat support untuk modul nrf24l01+.

[rf24-maniacbug]:https://github.com/maniacbug/RF24

{% highlight c %}
#include "RF24.h"

RF24 radio(10,10); // disini saya tidak menggunakan CE sama sekali

const uint64_t channel = 0xF0F0F0F0E1LL; // berdasarkan kajian diatas

void setup() {
    radio.begin();
    radio.openWritingPipe(channel); // untuk pairing dengan channel yg telah ditentukan
}

void loop() {
    byte msg = 1;
    radio.write(&msg, sizeof(msg)); // kirim data

    delay(2000);
}
{% endhighlight %}

Sedangkan untuk receiver nya

{% highlight c %}
#include "RF24.h"

RF24 radio(10,10); // disini saya juga tidak menggunakan CE sama sekali

const uint64_t channel = 0xF0F0F0F0E1LL; // samakan alamat channel nya

void setup() {
    Serial.begin(9600); // di baud 9600

    radio.begin();
    radio.openReadingPipe(channel); // membuka pipe untuk membaca data yg terkirim
    radio.startListening(); // mulai 'mendengarkan' data dari transmitter
    radio.printDetails(); // saya juga ga ngerti ini ngapain?
}

void loop() {
    if (radio.avaliable()) {
        byte msg;
        bool done = false;
        while (!done) {
            done = radio.read(&msg, sizeof(msg)); // mulai 'membaca' data yg terkirim
            Serial.println(msg); // cetak data nya
        }
    }

    delay(20);
}
{% endhighlight %}

Setelah saya upload kodingan tersebut ke masing-masing pro micro nya, saya sudah mulai bisa mengujicoba perihal koneksi dan data yang saling kirim dan terima. Ketika data sudah berhasil terkirim dan diterima, maka sampai sejauh ini modul nrf24l01+ sudah bekerja sesuai fungsinya.

Tinggal ambil keputusan, mau dibuat apakah modul ini?

Sebenarnya saya sudah memutuskan mau dibuat apa percobaan ini. Yaitu dibuat untuk membangun mechanical keyboard custom dengan fitur wireless yang menggunakan transreceiver 2.4Ghz. Dan saya juga sudah sedikit riset tentang matrix keyboard.

![arduino](/assets/img/arduino-01.jpg){:width="100%" .center-image}

Dan hal ini mungkin akan jadi bahasan selanjutnya terkait judul dari post ini.

Baiklah sekian dulu field report riset arduino saya, untuk part berikutnya saya akan bahas tentang penggunaan matrix dalam rangkaian.

<br>
<br>

Wassalamu'alaikum Warrahmatullah Wabarakatuh.