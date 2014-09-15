---
layout: info
permalink: /
title: Exploring Process Structure Linkages in Machining of Commercial Purity Titanium
---

## Background
Machining is a subtractive manufacturing process that removes material via failure due to severe plastic deformation (SPD). The imposed processing conditions induce deformation conditions (strain, strain-rate, temperature) contribute to structural changes at small length scales. These structural changes can affect properties relevant to performance at the machined surface.

For a more comprehensive background please check the following [post](http://matinfteam4.github.io/blog/project-background/).

## Experimental

Controlled machining experiments were performed on commercial purity titanium (CP-Ti) through various processing routes. The experimental matrix spanned two controlled variables:

1. Depth of cut
2. Machining surface velocity

These imposed conditions produce varying amounts of strain, strain-rate and temperature. The structural changes vary across scales and may include:

1. Continuum of grain refinement from micrometer scale down to the nanometer scale
2. Grain elongation at the micrometer scale
3. Increase in dislocation density at the atomistic scale
4. Varying degrees of grain boundary misorientation

Experiments produced a machined workpiece as well as machined chips. As chips offer a larger volume of deformed material it is easier to generate data from machined chips rather than the workpiece. Metallographic samples were prepared and etched. Optical microscopy is sufficient for characterizing some features in some samples (micrometer scale) whereas other techniques (SEM, EBSD, TEM) are needed for other features. Regions in may exist in machined chips where there are large gradients of grain size spanning the micro to nanometer scales. Regions where large spatial gradients exist will be neglected due to availability of experimental data.

## Methods sections

Each produced chip may be used to generate ~10 micrographs which are assumed to undergo the same processing route. The homogeneous portion of these chips will be used to quantify microstructural features. The analysis will consist of:

1. Segmentation of micrographs - Processing images to identify phase boundaries (twins or grain boundaries). 

2. Quantification of relevant statistics - Use n-point statistics to explore process-structure linkages and quantify the relevant microstructure function(s). This will also include reducing the order of the statistics possibly through principal component analysis (PCA).

## Deliverables

1. Generate segmented data set from micrographs
2. Extract pathways in n-point statistic space corresponding to specific processes