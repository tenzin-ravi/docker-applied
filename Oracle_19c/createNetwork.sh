docker network create \
  --driver=bridge \
  --subnet=172.19.0.0/16 \
  --ip-range=172.19.5.0/24 \
  --gateway=172.19.5.254 \
  oracledb
