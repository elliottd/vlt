Visual and Linguistic Treebank
------------------------------

Release 3, 8th January 2015

http://homepages.inf.ed.ac.uk/s0128959/dataset/

This is the first release of the Visual and Linguistic Treebank. It contains
multiple descriptions for the 2,424 images in the trainval portion of the
PASCAL VOC 2010 Action Recognition Taster. There is also object annotations for
431 images, and corresponding Visual Dependency Representations for the
object-annotated images.

The original images can be downloaded directly from PASCAL at
http://pascallin.ecs.soton.ac.uk/challenges/VOC/voc2010/#devkit

Please direct any comments or problems to: elliott@cwi.nl

===

An overview of the Visual and Linguistic Treebank Dataset.

images/

The files in this directory are the JPEGs of the images for which descriptions and annotations are available.

* tools/extractVOCImages.py can be used to populate this directory. 

rawData/xmlfiles/

The files in this directory are the object boundary annotations created from LabelMe annotations. 
There is one .xml file per annotated image.

rawData/dotfiles/

The VDR annotations for the images. 
-1,-2,-3 suffixes mean they correspond to the 1st, 2nd, and 3rd description respectively.

.actions is the list of actions in the image

rawData/textfiles/

We collected three descriptions for each image from Amazon Mechanical Turk. 
The -1,-2,-3 suffixes mean they correspond to the 1st, 2nd, and 3rd description respectively.

.desc is the raw written description as collected from Mechanical Turk
