########## Source some fish plugins ###########
if test -f {$HOME}/.autojump/share/autojump/autojump.fish; . {$HOME}/.autojump/share/autojump/autojump.fish; end








########## Global Variables ############
set CUDA_HOME /usr/local/cuda
set MYNAME (whoami)


########## Exported paths ###################
set PATH /usr/local/cuda/bin /usr/local/go/bin $PATH
set LD_LIBRARY_PATH /usr/local/cuda/lib64 /media/{$MYNAME}/samsung/source/ai/inno/onnx-tensorrt/build {$HOME}/TensorRT/build $LD_LIBRARY_PATH

#export LIBRARY_PATH={$CUDA_HOME}/lib64:$LIBRARY_PATH
#export TURTLEBOT3_MODEL=burger
#export CITYSCAPES_DATASET=/media/jintain/sg/permanent/datasets/Cityscapes

set CUDACXX /usr/local/cuda/bin/nvcc





########## Alias #############################
alias work="cd /media/{$MYNAME}/wd"
alias work2="cd /media/{$MYNAME}/wd/ai/career/autox"
alias work3="cd /media/{$MYNAME}/samsung/source/ai"
alias work4="cd /media/{$MYNAME}/samsung/source/career"
alias todo="gedit ~/.todo.txt"
alias clion=/opt/clion-2019.2/bin/clion.sh
alias goland="/opt/GoLand-2018.3.2/bin/goland.sh"
alias rs="source /opt/ros/kinetic/setup.zsh"
alias kiss2="source /opt/ros/crystal/setup.zsh"
alias initreal="source /media/{$MYNAME}/wd/ros/fusion/catkin_ws_realsense/devel/setup.zsh"
alias cloud-ss='ssh root@47.106.163.216'
alias autox='cd /autox-sz/'
alias nu="nautilus ."
alias hp="http_proxy=http://localhost:8123"
alias tryit="cd /media/{$MYNAME}/samsung/weapons/tryit"
alias ax="cd /autox-sz/users/fagangjin"


### END ###

