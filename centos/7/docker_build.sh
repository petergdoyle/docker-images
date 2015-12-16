
no_cache=$1
img_name='petergdoyle/centos:7'

docker build $no_cache -t=$img_name .
