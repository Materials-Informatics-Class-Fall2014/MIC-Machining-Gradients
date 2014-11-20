---
layout: post

title: Chord Length Distribution and PCA Part Deux
category: blog

author:
  name: Patxi Fernandez-Zelaia
  bio: Domain Expert 
  image: patxi.png

---

## Chip Morphology and Features of Interest

The primary feature we are attempting to capture is ***chord length***. The strategy is to take multiple images at the bottom of each chip roughly in the middle and quantify gradients in the vertical direction.

[![Image](http://matinfteam4.github.io/images/22/chords/general.png)](http://matinfteam4.github.io/images/22/chords/general.png)

The chord length can be determined by 

1. performing segmentation  
2. calculating chord lengths based on binary images.


[![Image](http://matinfteam4.github.io/images/22/chords/chordpic.png)](http://matinfteam4.github.io/images/22/chords/chordpic.png)

## Chord Length Distributions

Performing this operating over 9 images and collecting samples the following distributions may be generated. Note that a 1-pixel bin size was utilized for all computation.

Additionally, the pdf is computed considering the number of pixels in each measured chord. i.e. this distribution represents "the probability of a pixel belonging to a chord of length X".

[![Image](http://matinfteam4.github.io/images/22/chords/image2.png)](http://matinfteam4.github.io/images/22/chords/image2.png)

Note that the measured trends match what we expect based soley on visual inspection.

## Principal Component Analysis

Generated chord length distributions across all rows of the image were used to generate a PCA representation. The hope is that we can focus on a few principal components only and be able to track their evolution in two ways:

1. spatially (in the vertical direction of the image) 
2. as a function of processing routes

Below are a few select components. Included is a binary segmented single image from the 9-image set, a histogram representing the PCA vector and the corresponding PCA weight at each row in the image.

[![Image](http://matinfteam4.github.io/images/22/chords/princecomp_pdf_1.png)](http://matinfteam4.github.io/images/22/chords/princecomp_pdf_1.png)

[![Image](http://matinfteam4.github.io/images/22/chords/princecomp_pdf_2.png)](http://matinfteam4.github.io/images/22/chords/princecomp_pdf_2.png)

[![Image](http://matinfteam4.github.io/images/22/chords/princecomp_pdf_3.png)](http://matinfteam4.github.io/images/22/chords/princecomp_pdf_3.png)

[![Image](http://matinfteam4.github.io/images/22/chords/princecomp_pdf_28.png)](http://matinfteam4.github.io/images/22/chords/princecomp_pdf_28.png)

## Point Cloud Visualization

The developed point clouds do contain some underlying pattern or structure. Note that point coloring has been gradated such that white points correspond to the bottom of the image and black points correspond to the top of the image.

An image with all the relevant data,

[![Image](http://matinfteam4.github.io/images/22/chords/image_pdf.png)](http://matinfteam4.github.io/images/22/chords/image_pdf.png)

And a closer view of the point cloud structure,

[![Image](http://matinfteam4.github.io/images/22/chords/PC1vPC2.png)](http://matinfteam4.github.io/images/22/chords/PC1vPC2.png)

[![Image](http://matinfteam4.github.io/images/22/chords/PC1vPC3.png)](http://matinfteam4.github.io/images/22/chords/PC1vPC3.png)  
