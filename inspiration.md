---
layout: default
title: Inspiration
permalink: /inspiration/
---
<h1 class="mb-3 page-title">{{ page.title | escape }}</h1>
<div class="mb-5">
{%- for post in site.categories.inspiration -%}
<h5 class="border-bottom row py-3 mb-1">
    {%- assign date_format = site.minima.date_format | default: "%b %-d, %Y" -%}
    <a class="text-dark  text-decoration-none col-sm-8 col-md-9" href="{{ post.url | relative_url }}">
        {{ post.title | escape }}
    </a>
    <small class="d-none post-meta col-sm-4 col-md-3 text-end text-lighter">{{ post.date | date: date_format }}</small>
</h5>

{%- endfor -%}
</div>