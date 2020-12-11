To provision the Vagrant container with elasticsearch and kibana, run `vagrant up`.
Kibana can be accessed through port forwarding, port 5601 on the host.
In order to access Kibana on the host, you must specify a non-loopback IP (e.g. 0.0.0.0) in the kibana.yml.
To start elasticsearch, run `sudo /etc/init.d/elasticsearch start`
elasticsearch runs on 9200 -- `curl localhost:9200` (for non-loopback interfaces)
Kibana may not run after provisioning unless you `chmod` to give your user permission