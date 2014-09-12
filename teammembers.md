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

<p>
<ul>
  <li>E-mail: ahmetcecen@gatech.edu</li>
  <li>Cell: +12675864505</li>
  <li>Skype: +16787015869 (ahmetcecen)</li>
  <li><a href="http://ahmetcecen.github.io/">Research Blog</a></li> &middot;<a href="http://scholar.google.com/citations?user=OWGKu6wAAAAJ&hl=en">Publications</a>
  <li></li>
</ul>

E-mail: ahmetcecen@gatech.edu




</p>
</p>


{% if page.author2.image %}<img src="/images/{{ page.author2.image }}" height="100" width="100" align="left" style="float: left; margin: 5px 15px 15px 0px;">{% endif %}
<p align="justify"><strong><a rel="author2" href="https://plus.google.com/{{ page.author2.gplus }}" title="{{ page.author2_name }}" target="_blank">{{ page.author2.name }}</a></strong><br>
<strong>Ahmet Cecen</strong> hates writing his own bio and thinks it is a pretentious and bombastic practice.


Clear and Concise Information:

{% highlight matlab %}
Ahmet Cecen
Graduate Student @ Georgia Tech 
Computational Science and Engineering

E-mail: ahmetcecen@gatech.edu
Cell: +12675864505
Skype: +16787015869 (ahmetcecen)
{% endhighlight %}
</p>
</body>


