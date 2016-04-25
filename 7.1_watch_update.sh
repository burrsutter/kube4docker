IP=$(kubectl --namespace=kubedemo get services mynode -o yaml \
  | grep clusterIP \
  | cut -f2 -d:)

for i in $(seq 1 100); do
  curl --connect-timeout 1 -s $IP:8000;
  sleep 1;
done
