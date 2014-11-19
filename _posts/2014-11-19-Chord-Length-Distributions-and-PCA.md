---
layout: post

title: Chord Length Distribution and PCA
category: blog

author:
  name: Patxi Fernandez-Zelaia
  bio: Domain Expert 
  image: patxi.png

---

## Chip Morphology and Features of Interest

The primary feature we are attempting to capture is ***chord length***. The strategy is to take multiple images at the bottom of each chip roughly in the middle and quantify gradients in the vertical direction.

[![Image](http://matinfteam4.github.io/images/22/chords/general.png)](http://matinfteam4.github.io/images/22/chords/general.png)

The chord length can be determined by (1) performing segmentation (2) calculating chord lengths based on binary images.

Note that this is all a ***single phase***. In other words we cannot define a binary microstructure as we are usually accustomed. The approach now is to capture the location of ***boundaries*** and generate statistics. 

## Image Processing Follow Up

We feel pretty confident with our developed methodology to accurately capture boundary features. Once boundaries are detected the ***boundary thickness is reduced to 1 pixel***. In this way we eliminate any bias that may be introduced from the ***perceived*** boundary thickness.

[![Image](http://matinfteam4.github.io/images/22/new.png)](http://matinfteam4.github.io/images/22/new.png)

## Preliminary Autocorrelation Results

***Left Shear Zone***
[![Image](http://matinfteam4.github.io/images/22/24/3.png)](http://matinfteam4.github.io/images/22/24/3.png)

***Middle 'Undeformed' Region***
[![Image](http://matinfteam4.github.io/images/22/24/1.png)](http://matinfteam4.github.io/images/22/24/1.png)

***Right Shear Zone***
[![Image](http://matinfteam4.github.io/images/22/24/2.png)](http://matinfteam4.github.io/images/22/24/2.png)

Note that the volume fraction of boundaries is roughly 10% which agrees with visual observation. Also note that this volume fraction is not necessarily physically accurate as we ***reduced boundary thickness to 1 pixel earlier***...

You ***may*** be able to see some faint trends however it is difficult because the overall boundary volume fraction is rather low... 

Taking the log of the autocorrelation results allows for a better visualization relative to the image.

***Ln() Left Shear Zone***
[![Image](http://matinfteam4.github.io/images/22/24/3log.png)](http://matinfteam4.github.io/images/22/24/3log.png)

***Ln() Middle 'Undeformed' Region***
[![Image](http://matinfteam4.github.io/images/22/24/1log.png)](http://matinfteam4.github.io/images/22/24/1log.png)

***Ln() Right Shear Zone***
[![Image](http://matinfteam4.github.io/images/22/24/2log.png)](http://matinfteam4.github.io/images/22/24/2log.png)

