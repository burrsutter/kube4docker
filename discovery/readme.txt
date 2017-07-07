Setup CDK Minishift as seen on slide 11
https://docs.google.com/presentation/d/1-SCFDQyZY4WL-4__nlBopvjBv-fKorCdA41xWiUIcDk/edit?usp=sharing

oc new-project discoverydemo 

cd producer

mvn fabric8:deploy

curl http://producer-discoverydemo.192.168.99.101.nip.io/

cd ..

cd consumer

mvn fabric8:deploy
oc get pods -w
oc get services (kubectl get services)
oc get pods (kubectl get pods)

curl http://consumer-discoverydemo.192.168.99.101.nip.io/





