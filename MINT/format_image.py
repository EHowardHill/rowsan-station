import os, pprint
from PIL import Image

im = Image.open('dude.bmp')
pix = im.load()

size = im.size

img = []

exist = 255

for y in range(size[1]):
    bit = ''
    y_len = 1
    for x in range(size[0]):
        if pix[x,y] == exist and x < size[0] - 1:
            y_len += 1
        else:
            img.append(y_len)
            exist = pix[x,y]
            y_len = 1

with open('dude.bpx', 'w') as pic:
    for b in img:
        pic.write(str(b)+'\n')