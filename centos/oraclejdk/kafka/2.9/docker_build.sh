
no_cache=$1
img_name='petergdoyle/kafka:2.9'

docker build $no_cache -t=$img_name .
