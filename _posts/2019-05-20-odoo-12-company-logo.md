---
layout: post
title: 'odoo 12: company logo'
date: 2019-05-20 04:47 +0700
permalink: /odoo-12-company-logo
categories: code
---
Assalamu'alaikum Warrahmatullah Wabarakatuh

Bismillahirrahmanirrahim

Pada Odoo 12, untuk menambahkan `image` logo pada header tidak lagi menggunakan

{% highlight xml %}
<img t-if="company.logo" t-att-src="'data:image/png;base64,%s' %company.logo"/>
{% endhighlight %}

melainkan dengan menggunakan

{% highlight xml %}
<img t-if="company.logo" t-att-src="image_date_uri(company.logo)"/>
{% endhighlight %}