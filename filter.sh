import re
import os
import fileinput

#character x to y times: {x,y}
#any character: .

####Directory to search COMPLETELY
searchDir = "/wls2"
#### Patter to search for/and replace
regex = re.compile(r'.{0,20}bund.de', re.IGNORECASE)
#### True for replacing ####
replace = False



dirname = os.path.dirname(os.path.realpath(__file__))
#print(regex)

sum = 0
for subdir, dirs, files in os.walk(dirname+searchDir):
    for file in files:
        path =  os.path.join(subdir, file)
        filename = subdir + os.sep + file
        with open(filename, "r+") as file:
          readFile = file.read()
          sum+=len(re.findall(regex, readFile))
          #print(readFile)
          item = (re.findall(regex, readFile))
          readFile = re.sub(regex, "HOST", readFile)

          if replace:
            fileout = open(path, 'w')
            fileout.write(readFile)
            fileout.close()

          if (item):
            print(item)
            #print(readFile)

print(sum)
~
