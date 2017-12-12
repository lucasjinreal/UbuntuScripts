import os
import sys
import argparse
import shutil


def split_train_val(data_dir, split=0.8):
    """
    this method will split all images under data_dir to train and val
    with 'split' rate
    :param data_dir:
    :param split:
    :return:
    """
    if os.path.exists(data_dir):
        all_classes = [i for i in os.listdir(data_dir) if os.path.isdir(os.path.join(data_dir, i))]
        print('# Find classes: ', ', '.join(all_classes))
        for cls in all_classes:
            print('# Now solving: ', cls)
            target_train_dir = os.path.join(data_dir, 'train', cls)
            if not os.path.exists(target_train_dir):
                os.makedirs(target_train_dir)

            target_val_dir = os.path.join(data_dir, 'val', cls)
            if not os.path.exists(target_val_dir):
                os.makedirs(target_val_dir)

            all_files = [os.path.join(data_dir, cls, i) for i in os.listdir(os.path.join(data_dir, cls))]
            train_files = all_files[: int(len(all_files) * 0.8)]
            val_files = all_files[int(len(all_files) * 0.8):]

            move_files_to_des(train_files, target_train_dir)
            move_files_to_des(val_files, target_val_dir)
    else:
        print('{} not exist.'.format(data_dir))


def move_files_to_des(files_list, des):
    """
    move a list of files to destination dir
    :param files_list:
    :param des:
    :return:
    """
    assert isinstance(files_list, list), 'files_list must be list object'
    if os.path.exists(des):
        for f in files_list:
            if os.path.exists(f):
                shutil.copytree(f, dst=des)
    else:
        print('the destination dir not exist.')