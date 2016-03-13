#!/bin/bash

echo "Starting Jupyter Proxy and TmpNb"

export TOKEN=$( head -c 30 /dev/urandom | xxd -p )
docker run --restart=on-failure:6 --net=host -d -e CONFIGPROXY_AUTH_TOKEN=$TOKEN --name=proxy \
   jupyter/configurable-http-proxy --default-target http://127.0.0.1:9999

docker run --restart=on-failure:6 --net=host -d -e CONFIGPROXY_AUTH_TOKEN=$TOKEN --name=tmpnb \
   --memory="20m" \
   -v /var/run/docker.sock:/docker.sock jupyter/tmpnb python orchestrate.py --image='codergirl/tmpnb:latest' \
   --command="jupyter notebook --NotebookApp.base_url={base_path} --ip=0.0.0.0 --port {port}" --pool_size='30'

sleep 2
docker ps
