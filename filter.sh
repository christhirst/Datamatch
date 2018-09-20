#!/usr/bin/python

import re
import os

dirname = os.path.dirname(os.path.realpath(__file__))
regex = re.compile(r'\b\w{4}\b')
#print(regex)
  #      read_data = g.read()
for subdir, dirs, files in os.walk(dirname+"/g"):
    for file in files:
        #print os.path.join(subdir, file)
        filepath = subdir + os.sep + file
        #file = open(filepath, "r")
        with open(filepath, "r") as file:
          gg = file.read()
          print(gg)         
          print(len(re.findall(regex, gg)))

          #for line in file:
            #four_letter_words = re.findall(regex, line)
            #for word in four_letter_words:
              #print(word)
          #print(line)
        #p = re.sub(read_data ,read_data)
