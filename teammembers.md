---
layout: info
permalink: /teammembers/
title: Team Members

author1:
  name: Ahmet Cecen
  gplus: 101348383208228664859
  bio: Data Scientist
  image: ahmet.png

author2:
  name: Patxi Fernandez-Zelaia
  bio: Domain Expert
  image: patxi.png
---

<body>

{% if page.author1.image %}<img src="/images/{{ page.author1.image }}" height="100" width="100" align="left" style="float: left; margin: 5px 15px 15px 0px;">{% endif %}
<p align="justify"><strong><a rel="author1" href="https://plus.google.com/{{ page.author1.gplus }}" title="{{ page.author1_name }}" target="_blank">{{ page.author1.name }}</a></strong><br>
<strong>Ahmet Cecen</strong> is a second year PHD student majoring in Computational Science and Engineering. 
</p>
<br>
{% if page.author2.image %}<img src="/images/{{ page.author2.image }}" height="100" width="100" align="left" style="float: left; margin: 5px 15px 15px 0px;">{% endif %}
<p align="justify"><strong><a rel="author2" href="https://plus.google.com/{{ page.author2.gplus }}" title="{{ page.author2_name }}" target="_blank">{{ page.author2.name }}</a></strong><br>
<strong>Patxi Fernandez-Zelaia</strong> is a PHD student at the George Woodruff School of Mechanical Engineering.</p>

