#!/bin/sh

set -e

echo ${KUBE_CONFIG_DATA} | base64 -d > kubeconfig
export KUBECONFIG="${PWD}/kubeconfig"

echo "running entrypoint command(s)"

set +e

response=$(sh -c " $*")
res=$?

echo "response=$response" >> $GITHUB_OUTPUT
exit $res