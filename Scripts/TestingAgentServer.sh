#!/bin/bash

./setup.sh HOSTNAME ENCRYPT_KEY IP_OF_BOOTSTRAP IP_NON_BOOTSTRAP
nohup consul agent -config-dir /root/consul_demo/config.json &

# Now lets test on our agent server.
curl -X PUT -d 'test' http://localhost:8500/v1/kv/web/key1
curl http://localhost:8500/v1/kv/web/key1
curl http://localhost:8500/v1/kv/web/key1?raw
