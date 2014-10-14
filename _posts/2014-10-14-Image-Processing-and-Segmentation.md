---
layout: post

title: Image Processing and Segmentation
category: blog

author:
  name: Patxi Fernandez-Zelaia
  bio: Domain Expert 
  image: patxi.png

---

## Image Processing

Current challenge is to develop an algorithm to capture microstructural features (grain boundaries) in an automated and accurate fashion. 

Previous updated included attempts as using thresholding and edge detection methods in Matlab to characterize images.

[![Image](http://matinfteam4.github.io/images/22/6.png)](http://matinfteam4.github.io/images/22/6.png)

Preliminary results were poor. The initial concern was that large shadows in the image could generate false-detections. However gradient calculations seemed to eliminate shadow effects at the large length scale.

[![Image](http://matinfteam4.github.io/images/22/large.png)](http://matinfteam4.github.io/images/22/large.png)

Another concern was that images were very dark with low contrast. Images were taken with longer exposure time to increase the span of the histogram distribution.

A third concern arose due to repeated patterns NOT on the sample at the very small length scale,

[![Image](http://matinfteam4.github.io/images/22/dust.png)](http://matinfteam4.github.io/images/22/dust.png)

these features turned out to be dust/dirt in the lense of the microscope... We know this because the pattern remains stationary even as the stage containing the sample translates.

A simple work around for this is to reduce the image resolution prior to using edge detection... This effectly "smooths" out the small-scale pattern. Results are shown below.

[![Image](http://matinfteam4.github.io/images/22/new.png)](http://matinfteam4.github.io/images/22/new.png)

This appears to work decently for the highly sheared regions as well,

[![Image](http://matinfteam4.github.io/images/22/edgenew.png)](http://matinfteam4.github.io/images/22/edgenew.png)


