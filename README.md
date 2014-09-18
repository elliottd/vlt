Visual and Linguistic Treebank
------------------------------

Release 2, 25th August 2014

http://homepages.inf.ed.ac.uk/s0128959/dataset/

This is the first release of the Visual and Linguistic Treebank. It contains
multiple descriptions for the 2,424 images in the trainval portion of the
PASCAL VOC 2010 Action Recognition Taster. There is also object annotations for
431 images, and corresponding Visual Dependency Representations for the
object-annotated images.

The original images can be downloaded directly from PASCAL at
http://pascallin.ecs.soton.ac.uk/challenges/VOC/voc2010/#devkit

Visit http://github.com/elliottd/vdrDataTools/ to get tools to manipulate the
data in the rawData directory.

The tools/ directory contains a few tools to manipulate the data between
different on-disk representations. See the tools/README file for the list of
dependencies.

Please direct any comments or problems to: d.elliott@ed.ac.uk

===

An overview of the Visual and Linguistic Treebank Dataset.

images/

The files in this directory are the JPEGs of the images for which descriptions and annotations are available.

* tools/extractVOCImages.py can be used to populate this directory. 

rawData/xmlfiles/

The files in this directory are the object boundary annotations created from LabelMe annotations. 
There is one .xml file per annotated image.

* tools/xml2dot.py will create a .dot file from the object annotations stored in an XML file.

* tools/visualisePolygons.py will let you view the object annotations from the command line.

rawData/dotfiles/

The VDR annotations for the images. 
-1,-2,-3 suffixes mean they correspond to the 1st, 2nd, and 3rd description respectively.

.dot is the DOTTY object annotations
.labs is the object labels only
.align are the alignments between the DOT file and the corresponding image description
.conll is the VDR of the image in CoNLL-X format
.actions is the list of actions in the image

* tools/dot2conll.py transforms a DOT file into a CoNLL-X file.
* tools/dot2labs.py transforms a DOT file into a .labs file
* tools/alignments.py calculates the alignments between CoNLL-X and .DESC files

rawData/textfiles/

We collected three descriptions for each image from Amazon Mechanical Turk. 
The -1,-2,-3 suffixes mean they correspond to the 1st, 2nd, and 3rd description respectively.

.desc is the raw written description as collected from Mechanical Turk
.pos is a POS-tagged version of the text
.conll is the dependency parsed version of the text in CoNLL-X format

