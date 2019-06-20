# !/usr/bin/env python

# get the train list of segmentation needed
# in this format
# /path/to/image.jpg /path/to/label_image.jpg

# assumes image under train/ labeled_image under train_labels/

# do not using ./
img_dir = 'train'
label_dir = 'train_labels'

target_save_f = 'image_label.list'

# list the img dir, found the label under label dir, and write a line
import os

base_dir = os.path.dirname(os.path.abspath(__file__))
all_image_f = [os.path.join(base_dir, img_dir, i) for i in os.listdir(img_dir) if os.path.isfile(os.path.join(base_dir, img_dir, i))]

f = open(target_save_f, 'a+')
f.truncate()
for img_f in all_image_f:
    print(img_f)
    current_img_name = os.path.basename(img_f)

    label_img_f = os.path.join(base_dir, label_dir, current_img_name)
    if os.path.exists(label_img_f):
        l = '{} {}'.format(img_f, label_img_f)
        f.write(l + '\n')
f.close()
print('Done, image_label.list has been generated.')
