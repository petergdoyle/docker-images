
no_cache=$1
img_name='petergdoyle/tomcat:8'

docker build $no_cache -t=$img_name .
