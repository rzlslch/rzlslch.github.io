---
layout: post
title: 'odoo 12: custom res.config.settings'
date: 2019-05-17 17:16 +0700
permalink: /odoo-12-custom-res-config-settings
categories: code
---
Assalamu'alaikum Warrahmatullah Wabarakatuh

Bismillahirrahmanirrahim

Pada Odoo 12, untuk dapat menambahkan `custom config` pada `setting`, adalah sebagai berikut.

Pertama adalah dengan membuat `fields` pada `res.config.settings`

{% highlight python %}
class ResConfigCustom(models.TransientModel):
    _inherit = 'res.config.settings'

    custom_field = fields.Char('Custom Config')
{% endhighlight %}

Karena `model` dari `res.config.settings` merupakan `TransientModel`, data yang dimasukkan tidak dapat disimpan dalam `model` tersebut. Sehingga data tersebut harus disimpan pada `model` lainnya. Contohnya, data akan disimpan pada `res.company`. Maka harus dibuatkan field untuk menyimpan data tersebut.

{% highlight python %}
class ResCompanyCustom(models.Model):
    _inherit = 'res.company'

    custom_field = fields.Char('Custom Config')
{% endhighlight %}

Untuk menyimpan data pada `model` yang sudah disiapkan, buat akses untuk memanggil fungsi `save` pada `res.config.settings`. Tidak seperti `model` pada umumnya yang menggunakan `write`, `res.config.settings` menggunakan `create` waktu memanggil fungsi `save`. Maka panggil fungsi `create` pada model `res.config.settings`. Dalam fungsi tersebut panggil fungsi untuk menyimpan data yang ada pada `model` yang dituju. Karena data yang akan disimpan berada pada `field custom_field`, maka ambil `values` yang dijalankan ketika melakukan proses `create` dan simpan pada `model` yang dituju, yaitu `res.company`. 

{% highlight python %}
    @api.model
    def create(self, values):
        res = super(ResConfigCustom, self).create(values)
        self.env.user.company_id.write({'custom_field': values['custom_field']})
        return res
{% endhighlight %}

Sekarang data telah tersimpan pada `model` yang dituju.

Lalu bagaimana cara agar data tersebut dapat ditampilkan pada `res.config.settings`? Caranya adalah dengan memanggil fungsi `default_get` yang dijalankan setiap kali sistem mau menampilkan `config settings`. Fungsi ini akan memasukkan data pada `parameter fields` pada `res.config.settings`. Langsung masukkan saja data yang mau ditampilkan pada `fields` yang dituju.

{% highlight python %}
    @api.model
    def default_get(self, fields):
        res = super(ResConfigCustom, self).default_get(fields)
        res['custom_field'] = self.env.user.company_id.custom_field
        return res
{% endhighlight %}

Maka secara otomatis, `res.config.settings` akan menampilkan data yang sebelumnya disimpan pada `res.company`