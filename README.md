# FLiP-FlinkSQLPulsarCLI

### links

* https://github.com/streamnative/pulsar-flink
*


### Setup

#### flink 1.13.2
#### sql.yaml

```
catalogs:
- name: pulsarcatalog
    type: pulsar
    default-database: tn/ns
    service-url: "pulsar://localhost:6650"
    admin-url: "http://localhost:8080"
    format: json
 
#./bin/start-cluster.sh
./bin/sql-client.sh embedded --library /Users/tspann/Documents/servers/flink-1.13.2/sqllib -e /Users/tspann/Documents/servers/flink-1.13.2/sql-client.yaml

```

#### flink-json, flink-sql-avro, flink-dist-2.12-1.13.2
#### flink-csv

### sql-client.yaml

````
#==============================================================================
# Catalogs
#==============================================================================

# Define catalogs here.

catalogs: [] # empty list
# A typical catalog definition looks like:
#  - name: myhive
#    type: hive
#    hive-conf-dir: /opt/hive_conf/
#    default-database: ...


catalogs:
   - name: pulsarcatalog
     type: pulsar
     default-database: public/default
     service-url: "pulsar://localhost:6650"
     admin-url: "http://localhost:8080"
     format: json
     scan.startup.mode: earliest


````


### Old
#### sqllib -> avro1.10, flink-sql-avro.1.12.1, flink-json-1.12.1, pulsar-flink-sql-connector_2.11-1.12.4.6
````

./bin/start-cluster.sh
./bin/sql-client.sh embedded --library /Users/tspann/Documents/servers/flink112/sqllib

````
