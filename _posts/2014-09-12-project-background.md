---
layout: post

title: Project Background
category: blog

author:
  name: Patxi Fernandez-Zelaia
  bio: Domain Expert
  image: patxi.png
---

## Process 

Machining (turning, milling, planing, drilling, etc..) is a common subtractive manufacturing process used to give products desired shapes. Material removal occurs due to intense shearing which induces failure at the tool-workpiece interface. The induced shearing produces chips as well as a new machined surface which may contain structuralal changes relative to the initial bulk material.

Video taken in an SEM of various steels being cut with various cutting inserts. Click to be taken to the youtube video.

<a href="https://www.youtube.com/watch?v=mRuSYQ5Npek&list=UUEEF2Y1AykbUkp0LEk7IV4A
" target="_blank"><img src="https://i.ytimg.com/vi_webp/mRuSYQ5Npek/default.webp" 
alt="Machining" width="480"/></a>

A CP-Ti chip produced at GT is shown below. The chip was etched to reveal structure (grain/twin boundaries). Optical microscopy has limited resolution however the micrograph is useful for qualitatively describing the heterogeneity present in the chip.

[![Image](https://farm4.staticflickr.com/3891/15119720722_3b72b8854f_z.jpg)](https://www.flickr.com/photos/127308447@N06/15119720722/)

## Modeling

The simplest physical model for the continuum problem is the orthogonal cutting simplification. This plane strain model was used early in the study of machining to develop models for predicting cutting forces and temperatures. Today it is still used for solid modeling in FEA towards developing material models. From there complex operations such as drilling or oblique cutting can be simulated. Experimentally orthogonal cutting is ideal for studying the cutting process.

[<img src="http://engineeronadisk.com/notes_manufact/images/cutting3.gif" width="600px" />](http://engineeronadisk.com/notes_manufact/images/cutting3.gif)

The degree of strain can be controlled through the geometric quantities shown in the below image. Strain rate can be controlled through the prescribed cutting velocity. The temperatures generated in this process are a function of both the imposed deformation and associated time scale (disipated deformation energy). These independent variables allow for tailoring of the process to achieve different structure/properties.

[<img src="http://engineeronadisk.com/V2/notes_manufacturing/engineeronadisk-19.gif" width="600px" />](http://engineeronadisk.com/V2/notes_manufacturing/engineeronadisk-19.gif)

## Process-Structure-Property Relations

Recent work by several authors ([Brown et al.](http://dx.doi.org/10.1016/j.actamat.2009.07.052), [Swaminathan et. al.](http://www.sciencedirect.com/science/article/pii/S0921509305008166), [Swaminathan et al.](http://www.sciencedirect.com/science/article/pii/S1359646207001571)) have begun to quantify the relationship between processing and deformed microstructure in machining operations. There is also an increasing interest towards including structure-property linkages in model development ([Ding et al.](http://www.sciencedirect.com/science/article/pii/S0927025611002850), [Ding & Shin](http://dx.doi.org/10.1016/j.jmatprotec.2012.12.016)).

[<img src="http://ars.els-cdn.com/content/image/1-s2.0-S1359645409004807-gr4.jpg" width="600px" />](http://www.sciencedirect.com/science/article/pii/S1359645409004807)
