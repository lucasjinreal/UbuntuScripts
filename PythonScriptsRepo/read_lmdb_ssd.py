# -*- coding:utf-8 -*-
import sys
sys.path.insert(0, "/home/chenqi-didi/Documents/work/caffe/python")
import lmdb
import caffe
from caffe.proto import caffe_pb2  
import cv2  
import numpy as np  
  
lmdb_env = lmdb.open('/home/chenqi-didi/data/VOCdevkit/VOC0712/lmdb/VOC0712_trainval_lmdb', readonly=True) # 打开数据文件  
lmdb_txn = lmdb_env.begin()
lmdb_cursor = lmdb_txn.cursor()
key = lmdb_cursor.key()
value = lmdb_cursor.value()
anno_datum = caffe_pb2.AnnotatedDatum()  
  
for (idx, (key, value)) in enumerate(lmdb_cursor):
    anno_datum.ParseFromString(value)

    anno = anno_datum.annotation_group._values[0].annotation._values[0].bbox
    print key
    print anno
    print 'type: ', anno_datum.type
    print len(anno_datum.annotation_group)


    data = anno_datum.datum.data
    print 'width:', anno_datum.datum.width
    print 'height:', anno_datum.datum.height
    print 'channels:', anno_datum.datum.channels

    img = cv2.imdecode(np.frombuffer(data, dtype='uint8'), 1)
    
    print img.shape
    cv2.imshow('cv2.png', img)
    cv2.waitKey(0)

    if idx >= 6:
    	break

  
   
cv2.destroyAllWindows()  
lmdb_env.close()
