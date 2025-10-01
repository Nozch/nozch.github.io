---
layout: default
title: "Blog"
permalink: /blog/
---

# Blog

<p>posts: {{ site.posts | size }} 件</p>

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
      <span style="font-size:.9em;color:#666;">
        {{ post.date | date: "%Y-%m-%d" }}
      </span>
    </li>
  {% endfor %}
</ul>
