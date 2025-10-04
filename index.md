---
layout: default
title: HOME
---
# ようこそ

<ul>
{% for item in site.data.nav %}
  {%- assign exists = site.pages | where: "url", item.url | first -%}
  <li>
    {% if exists %}
      <a href="{{ item.url | relative_url }}">{{ item.title }}</a>
      {%- assign cnt = site[item.count_from] | size -%}
      {%- if cnt and cnt > 0 %}<small style="color:#666;">（{{ cnt }} 件）</small>{% endif -%}
    {% else %}
      {{ item.title }} <small style="color:#999;">（準備中）</small>
    {% endif %}
  </li>
{% endfor %}
</ul>
