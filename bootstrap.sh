#!/usr/bin/env bash

# install Java
apt-get update
apt-get install -y default-jdk

# install and start ES
curl -L -O https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.9.3-amd64.deb
sudo dpkg -i elasticsearch-7.9.3-amd64.deb
rm elasticsearch-7.9.3-amd64.deb
sudo /etc/init.d/elasticsearch start

# install kibana
curl -O https://artifacts.elastic.co/downloads/kibana/kibana-7.9.3-linux-x86_64.tar.gz
curl https://artifacts.elastic.co/downloads/kibana/kibana-7.9.3-linux-x86_64.tar.gz.sha512 | shasum -a 512 -c - 
tar -xzf kibana-7.9.3-linux-x86_64.tar.gz
rm kibana-7.9.3-linux-x86_64.tar.gz
mv kibana-7.9.3-linux-x86_64 kibana
sudo chmod -R 777 kibana
echo 'server.host: "0.0.0.0"' >> ~/kibana/config/kibana.yml
./kibana/bin/kibana

# install logstash
curl -O https://artifacts.elastic.co/downloads/logstash/logstash-7.10.1-linux-x86_64.tar.gz
curl https://artifacts.elastic.co/downloads/logstash/logstash-7.10.1-linux-x86_64.tar.gz.sha512 | shasum -a 512 -c - 
tar -xzf logstash-7.10.1-linux-x86_64.tar.gz
rm logstash-7.10.1-linux-x86_64.tar.gz
mv logstash-7.10.1 logstash
sudo chmod -R 777 logstash