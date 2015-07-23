#!/bin/sh
wget http://devtools.jahia.com/nexus/content/groups/public/org/oasis-open/contextserver/context-server-package/1.0-SNAPSHOT/context-server-package-1.0-20150723.093156-1.tar.gz
tar zxvf context-server-package-1.0-20150723.093156-1.tar.gz
mv context-server-package-1.0-SNAPSHOT unomi
cp startWithIp.sh unomi/bin
wget http://geolite.maxmind.com/download/geoip/database/GeoLite2-City.mmdb.gz
gunzip GeoLite2-City.mmdb.gz
wget http://geolite.maxmind.com/download/geoip/database/GeoLite2-Country.mmdb.gz
gunzip GeoLite2-Country.mmdb.gz
cp GeoLite2-City.mmdb GeoLite2-Country.mmdb unomi/etc
echo cluster.name=dockerContextElasticSearch > unomi/etc/org.oasis_open.contextserver.persistence.elasticsearch.cfg
echo index.name=context >> unomi/etc/org.oasis_open.contextserver.persistence.elasticsearch.cfg
echo elasticSearchConfig=file:\${karaf.etc}/elasticsearch.yml >> unomi/etc/org.oasis_open.contextserver.persistence.elasticsearch.cfg
