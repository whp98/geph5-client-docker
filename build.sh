version_str=v0.2.10
docker rmi whp98/geph5-client:$version_str
docker build -t whp98/geph5-client:$version_str .
docker push whp98/geph5-client:$version_str
docker push whp98/geph5-client
