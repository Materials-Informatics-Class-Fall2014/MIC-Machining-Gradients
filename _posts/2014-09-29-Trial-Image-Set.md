---
layout: post

title: Trial Image Set
category: blog

author:
  name: Patxi Fernandez-Zelaia
  bio: Domain Expert 
  image: patxi.png

---

Initially a trial image will be utilized to develop edge detection and segmentation methodology. The chip chosen corresponds to the following processing conditions (given in machining parameters). The corresponding estimates of strain and rate are also shown.

| Degree of Deformation |   Deformation Rate      |
| ----------------      | ----------------------- |
| depth of cut =0.1 mm  |      V = 2.33 m/s       |
| strain ~ 0.1-10       |      rate = ~10^5       |

A 5X image and the selected segment are shown below,

[![Image](http://matinfteam4.github.io/images/22/5X.png)](http://matinfteam4.github.io/images/22/5X.png)

A 20X image of the selected segment is shown below,

[![Image](http://matinfteam4.github.io/images/22/20X.png)](http://matinfteam4.github.io/images/22/20X.png)

Images taken at the highest available resolution (100X) are to be used for edge detection and image segmentation. The dropbox location is 

[https://www.dropbox.com/sh/ycet38z54770g78/AACLCbNVXNgJnELyGYDhNgGaa?dl=0](https://www.dropbox.com/sh/ycet38z54770g78/AACLCbNVXNgJnELyGYDhNgGaa?dl=0 "dropbox").

Note that there is a text file "order.txt" which contains the ordering of the images relative to the 20X sample, i.e., 

[![Image](http://matinfteam4.github.io/images/22/grid.png)](http://matinfteam4.github.io/images/22/grid.png)

The individual 100X-mag images individually span the entire segmentment. Note that in the above image this is not clear (I got lazy and didn't want to rescale everything and move all the boxes just to illustrate this point...).

Note that the optical microscope does not have very much depth of field. As such, to capture the entire image in focus, a multifocus feature is used to stitch together several partially-focused images. A concern is that artificially generated edges may be difficult to deal with. As such all images are being retained for comparison.

[![Image](http://matinfteam4.github.io/images/22/6_focus_issues.png)](http://matinfteam4.github.io/images/22/6_focus_issues.png)

Preliminary edge finding results using a Canny filter are shown below. 

[![Image](http://matinfteam4.github.io/images/22/tresh_7.png)](http://matinfteam4.github.io/images/22/tresh_7.png)

Preliminary thresholding results are shown below. 


[![Image](http://matinfteam4.github.io/images/22/1.png)](http://matinfteam4.github.io/images/22/1.png)

[![Image](http://matinfteam4.github.io/images/22/6.png)](http://matinfteam4.github.io/images/22/6.png)

[![Image](http://matinfteam4.github.io/images/22/22.png)](http://matinfteam4.github.io/images/22/22.png)



