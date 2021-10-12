# https://stackoverflow.com/questions/58218153/if-youre-seeing-this-grafana-has-failed-to-load-its-application-files-error-w
#If using docker, use following settings in environment to get this done.
#GF_SERVER_ROOT_URL=https://myurl.ddns.net:443/grafana/
#GF_SERVER_SERVE_FROM_SUB_PATH=true

#docker run -d --name=grafana -p 3000:3000 grafana/grafana:8.1.5
docker run -d --name=grafana -v grafana-volume:/var/lib/grafana -p 3000:3000 grafana/grafana:8.1.5

#docker run --network host -d --name=grafana grafana/grafana:8.1.5
#docker run -d --name=grafana -p 3000:3000 -v /etc/grafana/grafana-defaults.ini:/usr/share/grafana/conf/defaults.ini grafana/grafana:8.1.5

docker container ls | grep grafana

netstat -tulpn | grep 3000
