---
layout: post

title: CEPDB Review

author:
  name: Ahmet Cecen
  gplus: 101348383208228664859
  bio: Data Scientist
  image: ahmet.png
---

# CEPDB - the Harvard Clean Energy Project Database #

## What is CEPDB?

CEPDB is rigorous index of molecules and their various performance characteristics. The scope of the currently accessible data in the beta release is limited to parameters relevant to organic photovoltaics. 

## Origin

The Harvard Clean Energy Project is an initiative to facilitate and expedite discovery and innovation in the use, storage and generation of solar energy. The resulting database is a survey of massive amounts of candidates that are potentially suitable for such use. Data is generated using Q-Chem, an ab initio quantum chemistry package for simulations.

Data is obtained through the use of IBM World Community Grid, which is a crowd processing scheme where individuals can volunteer their unused processing capabilities towards solving massive scale problems. The intention is that the everyday routine of the volunteer is minimally affected by this endeavor. 

## Data

The database currently allows limited access to data as a beta release. The data about a given molecule is limited to the following information: 

- Principal Energy Levels
- Photovoltaic Performance Parameters
- Chemoinformatics from Chemicalize.org (Embedded to the website using an iframe)


An example query looks like this:

<iframe src="https://cepdb.molecularspace.org/single/%5BSiH2%5D1C%3Dc2c3ccc4cscc4c3c3ncc%28cc3c2%3DC1%29-c1nccc2nsnc12" height="600" width="600"></iframe>


## Query Methods

Query is limited to direct access through html for the time being (i.e browsing with a web client), with no convenient APIs. However, each data page is written in very simple html syntax and parsed similar to an xml file, so doing inline search queries and pulling desired data would be relatively easy (Requiring only 2-3 lines of code.). 

Query is possible by either imposing bounds to metrics pertaining to Principal Energy Levels or Photovoltaic Performance; or by using a partial or complete stochiometric or SMILES formula for the molecule.

## Code Base Contents

The current version of CEPDB does not link to any codes or repositories.  

## References

- [CEPDB - the Harvard Clean Energy Project Database](https://cepdb.molecularspace.org/)
- [IBM World Community Grid](http://www.worldcommunitygrid.org/about_us/viewGridComputingBasics.do)
- [CEPDB Data FAQ](http://www.molecularspace.org/explore/about-the-data/)



