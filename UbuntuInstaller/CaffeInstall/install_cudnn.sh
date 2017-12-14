# Please be caution that both caffe and tensorflow only supports cudnn5.1
# DO NOT using cudnn6 
cd cuda
sudo scp include/* /usr/local/cuda/include
sudo scp lib64/* /usr/local/cuda/lib64/
