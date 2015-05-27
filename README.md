ANTs templates
=======================

Two examples of ANTs template building using `antsMultivariateTemplateConstruction2.sh`

* Faces
* BrainSlices

each of which is contained in its own separate subdirectory.

For the BrainSlices example, we have included four different template command calls:

* ``templateCommandBtp.sh`` -- template building using the original ``buildtemplateparallel.sh`` script.
* ``templateCommandSyN.sh`` -- go-to univariate template building using SyN transform
* ``templateCommandMultivariateBSplineSyN.sh`` -- multivariate template building using [B-spline SyN](http://www.ncbi.nlm.nih.gov/pubmed/24409140)
* ``templateCommandTimeVarying.sh`` -- univariate template building using more time-consuming time-varying transform

Faces example
-----------------------

![Faces result](https://github.com/ntustison/TemplateBuildingExample/blob/master/Figures/FacesResult.png)

Brain slices example
-----------------------

Data is taken from Arno's MindBoggle101 [work](http://www.frontiersin.org/Brain_Imaging_Methods/10.3389/fnins.2012.00171/full).

![Brain slices result](https://github.com/ntustison/TemplateBuildingExample/blob/master/Figures/BrainSlicesResult.png)
