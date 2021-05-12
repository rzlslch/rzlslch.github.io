---
layout: post
title: "Arduino coding log 2"
permalink: /arduino-coding-log-2
date: 2021-05-12 22:36 +0700
categories: code
comments: true
---
Assalamu'alaikum Warahmatullah Wabarakatuh

Bismillahirrahmanirrahim

Jadi gini. Controller untuk transmitter nya saya ganti pake arduino micro (merk robotdyn) biar pin nya agak banyakan. Oke bisa jalan. Dan saya nyoba pake rotary encoder buat ngasih input. Karena kalo mau buat matrix switch yang agak banyakan ternyata ribet wiring nya di breadboard. Dan kodingan buat rotary encoder ini sebenernya simple sih. Ga perlu pake cegatan kalo cuman pengen muter kanan kiri, cuman ya aga *mbleyot* dikit kalo diputer2 satu step satu step. 

Kodingan nya kayak gini buat nangkep input puteran rotary encoder nya.

{% highlight c %}
...
int LastState;
int State;
int Pos = 0;
int TR = 0;
int TL = 0;
...

void setup() {
    ...

    pinMode(A0, INPUT_PULLUP); // pin 1 ke A0
    pinMode(A1, INPUT_PULLUP); // pin 2 ke A1

    LastState = digitalRead(A0); // set ke salah satu pin buat acuan
    ...
}

void loop() {
    ...

    State = digitalRead(A0);

    if (State != LastState) {
        if (digitalRead(A1) != State) {
            TR ++;
            if (TR > 0 && TR % 2 == 0) {
                TR = 0;
                ... // masukkan kode untuk putaran kanan
            }
        } else {
            TL ++;
            if (TL > 0 && TL % 2 == 0) {
                TL = 0;
                ... // masukkan kode untuk putaran kiri
            }
        }
    }

    LastState = State;
    
    ...
}
{% endhighlight %}

Ini udah oke.

Tapi problem nya adalah, kalo rangkaian ini ditinggal idle selama beberapa waktu, maka koneksi nya putus. Udah putus gitu aja. Ketika di puter2, dikasih inputan, ga masuk sama sekali. Ini masih problem yang harus saya pecahkan. Dan masih belum nemu pemecahannya.

Yaudah sih. Lagi bete saya.

<br>
<br>

Wassalamu'alaikum Warrahmatullah Wabarakatuh.