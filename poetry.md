---
layout: default
title: Poetry
permalink: /poetry/
---

<ul>
  {% for post in site.categories.poetry %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <span>{{ post.date | date_to_string }}</span>
  </li>
  {% endfor %}
</ul>