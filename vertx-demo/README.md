

mvn package

docker build -t burr/myvertx:v1 .

docker images | grep myvertx

docker run -it -p 8080:8080 burr/myvertx:v1

one trick is knowing the IP address
if you are using minishift, try minishift console --url 
and then

http://192.168.99.101:8080

ctrl-c



