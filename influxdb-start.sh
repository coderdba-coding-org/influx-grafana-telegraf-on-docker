# without auto-restart
#docker run -d -p 8086:8086 --user 986:979 --name=influxdb -v /etc/influxdb/influxdb.conf:/etc/influxdb/influxdb.conf -v /var/lib/influxdb:/var/lib/influxdb influxdb:1.8 -config /etc/influxdb/influxdb.conf

# with auto-restart
docker run -d -p 8086:8086 --user 986:979 --name=influxdb --restart unless-stopped -v /etc/influxdb/influxdb.conf:/etc/influxdb/influxdb.conf -v /var/lib/influxdb:/var/lib/influxdb influxdb:1.8 -config /etc/influxdb/influxdb.conf
