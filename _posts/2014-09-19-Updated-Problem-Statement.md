---
layout: post

title: Updated Problem Statement
category: blog

author:
  name: Patxi Fernandez-Zelaia
  bio: Domain Expert
  image: patxi.png

---

## Revised Problem Statement and Proposed Workplan

### Process

Machining processing induces large strains at high-strain rate and elevated temperatures. A 2D idealization is shown below.

![Image](http://matinfteam4.github.io/images/geometry.png)

There are three experimental controls in such an experiment which both control strain, rate and temperature in a non-unique fashion,

1. Depth of cut (t)
2. Machining surface velocity (V)
3. Tool angle

### Structure Changes

1. Continuum of grain refinement ranging from initial micrometer scale down to the nanometer scale within bands

[![Image](http://ars.els-cdn.com/content/image/1-s2.0-S0921509305008166-gr5.jpg)](http://www.sciencedirect.com/science/article/pii/S0921509305008166)

2. Grain elongation at the micrometer scale
3. Increase in dislocation density at the atomistic scale
4. Varying degrees of grain boundary misorientation

[<img src="http://ars.els-cdn.com/content/image/1-s2.0-S1359645409004807-gr4.jpg" width="600px" />](http://www.sciencedirect.com/science/article/pii/S1359645409004807)

One example of a metallographic sample of a machined chip.

[![Image](https://farm4.staticflickr.com/3891/15119720722_3b72b8854f_z.jpg)](https://www.flickr.com/photos/127308447@N06/15119720722/)

### Problem Statement

Capture the process-structure linkage in the homogeneous regions of the machined chip. Structure of interest include

1. Grain size
2. Grain morphology

### Methods sections

Each metallographic sample may be used to generate ~10 independent micrographs which are assumed to undergo the same processing route. The homogeneous portion of these chips will be used to quantify microstructural features. The analysis will consist of:

1. Segmentation of micrographs - Processing images to identify phase boundaries (twins or grain boundaries). 

2. Quantification of relevant statistics - Use n-point statistics to explore process-structure linkages and quantify the relevant microstructure function(s). This will also include reducing the order of the statistics possibly through principal component analysis (PCA).

### Deliverables

1. Generate segmented data set from micrographs
2. Extract pathways in n-point statistic space corresponding to specific processes
