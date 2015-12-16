
no_cache=$1
img_name='petergdoyle/oraclejdk:8'

docker build $no_cache -t=$img_name .
