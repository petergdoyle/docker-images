
no_cache=$1
img_name='petergdoyle/node'

docker build $no_cache -t=$img_name .
