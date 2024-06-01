---
layout: default
title: Poetry
permalink: /poetry/
---

<h1 class="mb-3 page-title">{{ page.title | escape }}</h1>
{%- for post in site.categories.poetry -%}
<h5 class="border-bottom d-flex py-3 mb-1">
  {%- assign date_format = site.minima.date_format | default: "%b %-d, %Y" -%}

  <a class="text-dark text-decoration-none col" href="{{ post.url | relative_url }}">
    {{ post.title | escape }}
  </a>
  <span class="post-meta col-md-3 text-end">{{ post.date | date: date_format }}</span>
</h5>
{%- endfor -%}
