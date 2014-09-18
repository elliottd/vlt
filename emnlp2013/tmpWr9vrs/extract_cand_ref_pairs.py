import os
import random

# Read the file names into memory.
handle = open("emnlp-test-files")
test_files = handle.readlines()
handle.close()

# Tidy up the data in memory
test_files = [x.replace("\n","") for x in test_files]
#test_files = [x.replace(".dot","") for x in test_files]
#test_files = [x.replace("-1","") for x in test_files]
#test_files = [x.replace("-2","") for x in test_files]
#test_files = [x.replace("-3","") for x in test_files]

# Write the PythonROUGE references to disk.
# Each file contains the nth reference.

for i in range(1,4):
  handle = open("source-both-%d" % i, "w")
  for t in test_files:
    try:
      ref = open("../../textfiles/%s-%d.desc" % (t,i)).readlines()
    except IOError, e:
      if e.errno == 2:
        ref = ["\n"]
    handle.write("%s" % ref[0])
  handle.close()
