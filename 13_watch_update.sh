IP=$(kubectl --namespace=kubedemo get services myvertx -o yaml \
  | grep clusterIP \
  | cut -f2 -d:)

for i in $(seq 1 1000); do
  curl --connect-timeout 1 -s $IP:8080;
  echo
  sleep 1;
done
