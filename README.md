ANTs templates
=======================

Two examples of ANTs template building using the different template building scripts
available in ANTs:

* Faces
* BrainSlices

each of which is contained in its own separate subdirectory.

The scripts require ANTs to be on the PATH. They no longer require or use ANTSPATH, which
has been deprecated since ANTs 2.5.0. Run each script from the directory containing the
images to be used for template building, with the appropriate interpreter (bash, R,
Python), eg `bash ./templateCommandSyN.sh`.

For the BrainSlices example, we have included different template command calls:

* ``templateCommandBtp.sh`` -- template building using the original ``buildtemplateparallel.sh`` script.
* ``templateCommandSyN.sh`` -- go-to univariate template building using SyN transform
* ``templateCommandMultivariateBSplineSyN.sh`` -- multivariate template building using [B-spline SyN](http://www.ncbi.nlm.nih.gov/pubmed/24409140)
* ``templateCommandTimeVarying.sh`` -- univariate template building using more
  time-consuming time-varying transform
* ``templateCommandSyN.R`` -- R script for univariate template building using SyN
  transform. Requires [ANTsR](https://github.com/ANTsX/ANTsR).
* ``templateCommandSyN.py`` -- Python script for univariate template building using SyN transform. Requires [ANTsPy](https://github.com/ANTsX/ANTsPy).

Faces example
-----------------------

![Faces result](https://github.com/ntustison/TemplateBuildingExample/blob/master/Figures/FacesResult.png)

Brain slices example
-----------------------

Data is taken from Arno's MindBoggle101 [work](http://www.frontiersin.org/Brain_Imaging_Methods/10.3389/fnins.2012.00171/full).

![Brain slices result](https://github.com/ntustison/TemplateBuildingExample/blob/master/Figures/BrainSlicesResult.png)
