---
layout: default
title: Thoughts
permalink: /thoughts/
---

<h1 class="mb-3 page-title">{{ page.title | escape }}</h1>
{%- for link in site.data.thoughts -%}
<h5 class="border-bottom row py-3 mb-1">
    <a class="text-dark  text-decoration-none col-sm-8 col-md-9" href="{{ link.url | relative_url }}">
        {{ link.text | escape }}
    </a>
</h5>

{%- endfor -%}
