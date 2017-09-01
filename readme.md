Summary
Vagrant setup running grafana



sudo service grafana-server start
sudo service grafana-server restart


admin|admin


http://localhost:3000/login


sudo vi /etc/grafana/grafana.ini
;disable_login_form = true


Reference
http://docs.grafana.org/

Creating datasource plugins
http://docs.grafana.org/plugins/developing/datasources/
https://github.com/grafana/simple-json-datasource
r
