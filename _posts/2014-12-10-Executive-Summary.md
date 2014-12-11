---
layout: post

title: Executive Summary
category: blog

author:
  name: Patxi Fernandez-Zelaia
  bio: Domain Expert 
  image: patxi.png

---

#Machining Introduction

Machining is a secondary manufacturing operation that typically follows primary shaping processes such as casting or forging. Imposed strains and strain rates can be as large as $$10^5 s^{-1}$$ and 1-15, respectively. During these extreme deformation conditions significant energy is dissipated through plastic work which increases the temperatures in the chip. 

The described strain-rate-temperature conditions define a thermomechanical processing route that is unique to machining. 

Measured shear strain rates  for oxygen-free high-conductivity (OFHC) copper. Note that velocimetry techniques are limited to lower machining speeds; in this case a 0.01 m/s speed was utilized. Industrial applications maching at 3-5 m/s where strain rates may approach $$10^5 s^{-1}$$.

[![Image](http://ars.els-cdn.com/content/image/1-s2.0-S1359646208006131-gr2.jpg)](http://www.sciencedirect.com/science/article/pii/S1359646208006131)

Measured shear strains for this set of experiments fall in the 3-12 range.
[![Image](http://ars.els-cdn.com/content/image/1-s2.0-S1359646208006131-gr1.jpg)](http://www.sciencedirect.com/science/article/pii/S1359646208006131)

#Processing Effects on Microstructure

The imposed thermomechanical processing route can induce significant microstructural changes in both the machined workpiece and the produced chip. Microstructural changes may include but are not limited to,

- Grain refinement
- Increase in dislocation density
- Increase in twin density

Micrograph from a quick-stop machining experiment displaying the gradation of structure in brass from the relatively undeformed bulk to the highly refined chip.
[![Image](http://matinfteam4.github.io/images/final/ramalingan.png)](http://manufacturingscience.asmedigitalcollection.asme.org/article.aspx?articleid=1442776)

TEM work showing features on the nanometer length scale.
[![Image](http://ars.els-cdn.com/content/image/1-s2.0-S0921509305008166-gr3.jpg)](http://www.sciencedirect.com/science/article/pii/S0921509305008166)

#Problem Statement 

The manufacturing community has begun to investigate linkages between processing and structure in machining. The motivation is that designers can produce better components if surface structure is tailored for specific applications; highly refined grain structure could be beneficial for fretting applications but deleterious in a corrosive environment.

[![Image](http://ars.els-cdn.com/content/image/1-s2.0-S1359645409004807-gr8.jpg)](http://www.sciencedirect.com/science/article/pii/S1359645409004807)

The goal of the present work is to explore process-structure linkages in priciple component (PC) space while quantifying structure gradients present in machined chips. Gradients in the direction perpendicular to the machined surface will be addressed. 7 unique processing conditions will be utilized. The structure we are addressing are grain boundaries.

[![Image](http://matinfteam4.github.io/images/final/chip5x.png)](http://matinfteam4.github.io/images/final/chip5x.png)

#Experimental

The orthogonal cutting model is 2D experimental technique that assumes a plane strain condition in the depth direction. Experiments can be performed that approximate this condition and are valuable as they simplify geometry such that 2D inspection of the microstructure is sufficient to characterize the chip or workpiece.

[![Image](http://matinfteam4.github.io/images/final/experiment.png)](http://matinfteam4.github.io/images/final/experiment.png)

The two independent experimental variables in this configuration are

- feed (f)
- cutting velocity (V)

These variables control the imposed strains, rates and temperature and as such they have a direct effect on the final structure of the chips. 

A number of experiments were performed across three feeds and five speeds. Samples were prepared metallographically and etched. A total of 7 samples were used for this study. 5 images of separate chip 'segments' were used as the data set for each processing condition. The assumption is that each individual 'segment' is statistically representative of the imposed processing conditions.

[![Image](http://matinfteam4.github.io/images/final/experiment2.png)](http://matinfteam4.github.io/images/final/experiment2.png)

#Microstructure Segmentation

The following procedure was used to process, segment and develop chord-length distributions.

- Detect chip-epoxy interface in each sample
- rotate all images so that the chip-epoxy interface is aligned horizontally
- crop out a smaller image from the rotated images
- Convert to grayscale
- Filtering to remove noise
- Canny edge detection to identify edges (i.e. grain/phase boundaries)
- calculate length of chords in each row of image
- bin data using 1 pixel increments and develop PDF of chord length distribution from counts

[![Image](http://matinfteam4.github.io/images/final/chords.png)](http://matinfteam4.github.io/images/final/chords.png)

Two different chord-length statistics were considered for this work

1. The probability that a chord in a row is of length X
2. The probability that a pixel in a row is found in a chord of length X

Each distribution in a sample image can be seen below.
[![Image](http://matinfteam4.github.io/images/final/distributions.png)](http://matinfteam4.github.io/images/final/distributions.png)

Note that the later definition does a much better job of describing the longer chord lengths away from the machined surface.  This agrees with what is expected as larger grains are observed further away from the machined surface.

#Data Reduction

Chord length distributions were developed across all rows of pixels in each image. Frequency of chord lengths were summed over all 5 images for each process condition. This represents the "averaged" data set. 

Principal Component Analsysis (PCA) was used to reduce the dimensionality of the problem. A plot of PC1 and PC2 in PC-space for ***the top 50 pixels*** are shown in the following image.

[![Image](http://matinfteam4.github.io/images/final/pca.png)](http://matinfteam4.github.io/images/final/pca.png)

Note that there is some clustering associated with processing conditions. In particular clustering appears to most associated with cutting velocity.

There appeared to be NO clustering of data in the bottom 50 pixels of each image (adjacent to the machined surface). It is very likely that the level of resolution needed to quantify structure in the zone exceeds the limitations of optical microscopy.

#Results

## Machine Learning

## Etch Gradients

A somewhat unexpected result was discovered associated with etching gradients present in machined chips. 

While exploring PC1 data from processing condition #32 it was observed that data associated with ***each individual image***  was arranged in the same order that the images were taken.
[![Image](http://matinfteam4.github.io/images/final/etch1.png)](http://matinfteam4.github.io/images/final/etch1.png)

The images were taken by incrementally translating over the chip along the length of the chip. Incidentally, all chips have some degree of an etch gradient eminating from the center of the chip. The chip associated with processing condition #32 has the largest such gradient; towards the middle it appears as if the chip is completely unetched yet towards the ends it is etched.
[![Image](http://matinfteam4.github.io/images/final/etch2.png)](http://matinfteam4.github.io/images/final/etch2.png)

It is certainly possible that the identical polishing and etching technique could produce varying results in different chips as chips potentially contain varying degrees of work hardening and residual stresses. However it is unclear why etch gradients exist in individual chips. It is possible that polishing mechanics differ between the interior and edges due to the presence of stainless steel clips in the center (if say the holders are more resistive to the abrasion process and are slightly elevated relative to chip). Analogously a similar argument could explain why using a swabbing etching technique could preferentially etch material due to the presence of the clip holders (i.e. more pressure can be applied away from the clip while swabbing thus breaking up protective oxide layers).

#Conclusions

- Current techniques are fairly successful in classifying the structure towards the inner parts of the chips for the current dataset.
- The current techniques cannot resolve information close to the machining surface as distinctly as the information farther away. 
	- Grain refinement in the highly sheared zones may be on the nanometer length scale. Optical microscopy is limited to a few microns. It is very likely that insufficient quantification of the structure lead to poor classification near the machined surface interface.
- Uneven etching effects were found to be effectively captured by the principal components of chord length distribution.
- Process path learning was demonstrated with variable accuracy on the given dataset. Substantial improvements were possible, but not explored, due to the current limitations and amount of data.

#Future Work


- More Reliable Imaging
 - Different Polishing and Etching Techniques
	 - Accounting for the Etching Gradients
	 - Electropolishing
	 - Eliminating SS clips or holding towards edge of chip
	 - Different etchant
 - SEM
	 - Higher magnification
	 - Larger field of view (minimize out of focus issues)
 - TEM?...
	 - Difficult sample preperation
	 - Difficult to generate large data set
	 - Difficult to capture gradients over 10-100 microns when focusing on a 500nm x 500nm image 
- Nano-Indentation Data
  - Alternative method for inferring local structure
- More refined discretization of speed/feed.
	- Learning was only moderately successful due to small size of data set. Finer discretization may yield better predictive results.
- Incorporating cutting force measurements in to the learning process.
	- Transducers fixed to cutting tool used to measure cutting forces in all experiments
	- Could potentially explore the structure-properties space using this data




