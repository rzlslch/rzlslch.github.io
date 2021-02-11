---
layout: post
title: "javascript: nungguin loop yang pake nungguin promise"
permalink: /javascript-nungguin-loop-yang-pake-nungguin-promise
date: 2021-02-11 21:44 +0700
categories: code
comments: true
---
Assalamu'alaikum Warrahmatullah Wabarakatuh

Bismillahirrahmanirrahim

Jadi begini, kemarin waktu ngoding kerjaan, saya nemu trik yang lumayan asik tentang loop yang digabungin sama `Promise`. Seperti yang kita tahu, `Promise` kan buat nungguin hasil ya. Kira-kira seperti itu lah.

Misal seperti self running function yang kayak ini

{% highlight javascript %}
(function() {
    new Promise((resolve, reject) => {
        setTimeout(() => {                  // fungsi buat nunggu 
            resolve('hasil yang ditunggu')  // selama 1 detik misal
        }, 1000);
    })
        .then(result => {
            console.log('Jalankan ini kalo hasilnya udah keluar');
            console.log(`ini ${result}`);
        })
})()
{% endhighlight %}

Nah, sudah bisa ngerti kan gunanya `Promise`?

Lalu ada suatu kasus. Dimana ada lebih dari satu `Promise`, dan hasil dari semua `Promise` tersebut harus ada dulu sebelum menjalankan fungsi yang lain. Misal gini

{% highlight javascript %}
(function() {
    var promise1 = Promise.resolve( ... );
    var promise2 = Promise.resolve( ... );
    var promise3 = Promise.resolve( ... );
    var promise4 = Promise.resolve( ... );

    console.log('jalankan ini ketika semua promise selesai');
})()
{% endhighlight %}

Biasanya, kasus seperti ini mesti manggil `async/await` untuk menghindari callback hell yang terjadi di dalam `.then` wkwkwkwk.. Tapi nampaknya saya lupa kalo ada `Promise.all`.

{% highlight javascript %}
(async function() {
    var promise1 = Promise.resolve( ... );
    var promise2 = Promise.resolve( ... );
    var promise3 = Promise.resolve( ... );
    var promise4 = Promise.resolve( ... );

    await Promise.all([promise1, promise2, promise3, promise4]);

    console.log('jalankan ini ketika semua promise selesai');
})()
{% endhighlight %}

Kelebihan `Promise.all` sendiri ada pada error handling nya. Kalo pake banyak `await`, error bakal dimunculkan ketika `Promise` yang berjajar di return semua. Sedangkan pada `Promise.all`, ketika ada salah satu yang error, saat itu lah bakal di return error nya dan berhenti sampai sana. Dan ini mantap kali kalo dipake di dalem loop.

Misal 

{% highlight javascript %}
const array = [ ... ] // misal ini data array buat ngeloop

function promise() { // ini promise yang mau dipanggil
    return new Promise((resolve, reject) => {
        ... // code promise nya misal
        resolve();
    })
}

(async function() {
    await Promise.all(array.map(async e => {
        await promise();
    }))

    console.log('sudah selesai semua');
})()
{% endhighlight %}

Jadi untuk nungguin loop yang di dalem nya ada promise yang juga harus ditungguin, bisa pake cara seperti diatas. Sebenernya masih banyak cara lain, misal pake `asyncForEach` atau yang lain, tapi menurut saya pake `Promise.all` enak aja dipake. Selain itu error handling nya juga ga nunggu lama-lama, nda harus semua `Promise` selesai dulu.

Konklusi nya, pakailah `Promise.all`. Udah sih itu aja.

<br>
<br>

Wassalamu'alaikum Warrahmatullah Wabarakatuh.