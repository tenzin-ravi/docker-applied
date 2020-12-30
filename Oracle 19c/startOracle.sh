docker rm -f oracle19c
docker run -dt --network=oracledb --name oracle19c --hostname dockerdb --user oracle --ip 172.19.5.10 \
-p 192.168.1.45:1521:1521 -p 192.168.1.45:5500:5500 \
-e ORACLE_SID=RAVI \
-e ORACLE_PDB=RAVIPDB \
-v /oradrive/oradata:/opt/oracle/oradata \
-v /oradrive/oradata/RAVI/network/admin:/opt/oracle/product/19c/dbhome_1/network/admin \
-v /oradrive/oradata/RAVI/dbs:/opt/oracle/product/19c/dbhome_1/dbs \
-v /oradrive/oradata/RAVI/wallet:/opt/oracle/wallet \
oracle/database:19.3.0-ee
