# curl -i -XPOST http://localhost:8086/query --data-urlencode "q=CREATE DATABASE mydb"

curl -G -u admin:admin123 -XPOST http://localhost:8086/query --data-urlencode "q=CREATE RETENTION POLICY threedays ON metrics DURATION 3d REPLICATION 1"
