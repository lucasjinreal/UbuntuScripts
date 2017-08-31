# -*- coding:utf-8 -*-
import sys
sys.path.insert(0, "/home/jfg/caffe/python")
import lmdb
import caffe
from caffe.proto import caffe_pb2  
import cv2  
import numpy as np  
  
if __name__ == '__main__':
	lmdb_path = sys.argv[1]
	print('lmdb path at ', lmdb_path)
	lmdb_env = lmdb.open(lmdb_path, readonly=True) 
	lmdb_txn = lmdb_env.begin() 
	lmdb_cursor = lmdb_txn.cursor()
	key = lmdb_cursor.key()
	value = lmdb_cursor.value()
	datum = caffe_pb2.Datum()
	  
	for (idx, (key, value)) in enumerate(lmdb_cursor):
	    datum.ParseFromString(value)
	    print('--- seeing the {0} image in lmdb ---'.format(idx + 1))
	    label = datum.label
	    print('label: ', str(label))

	    width = datum.width
	    print('width', width)
	    height = datum.height
	    print('height', height)

	    data = caffe.io.datum_to_array(datum)
	    print(data.shape)
	    print(data)

	    image = data.transpose(1, 2, 0)
	    print(image)
	    print(image.shape)
	    cv2.imshow('cv2.png', image)  
	    cv2.waitKey(0)

	    if idx >= 50:
	      	break 
	print("lmdb preview done!")   
	cv2.destroyAllWindows()  
	lmdb_env.close()