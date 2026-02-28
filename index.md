---
layout: default
---
<div class="mb-5">

<h2 class="page-title">Alumni Relations</h2>

{% for link in site.data.alumni-relations %}
    <h5 class="border-bottom row py-3 mb-1"><a href="{{ link.url }}" target="_blank" class="text-dark  text-decoration-none">{{ link.text }}</a></h5>
{% endfor %}

</div>
<div class="mb-5">

<h2 class="page-title">Articles</h2>

{% for link in site.data.articles %}
    <h5 class="border-bottom row py-3 mb-1"><a href="{{ link.url }}" target="_blank" class="text-dark  text-decoration-none">{{ link.text }}</a></h5>
{% endfor %}

</div>
<div >
  <h2 class="page-title">Poetry</h2>
  {%- for post in site.categories.poetry -%}
  <h5 class="border-bottom row py-3 mb-1">
    {%- assign date_format = site.minima.date_format | default: "%b %-d, %Y" -%}

    <a class="text-dark  text-decoration-none col-sm-8 col-md-9" href="{{ post.url | relative_url }}">
      {{ post.title | escape }}
    </a>
    <small class="d-none post-meta col-sm-4 col-md-3 text-end text-lighter">{{ post.date | date: date_format }}</small>
  </h5>
  {%- endfor -%}

</div>