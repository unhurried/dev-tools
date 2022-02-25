#!/usr/bin/env bash

set -eu

IMAGE='mysql-client'

function build() {
    # Add the following options to use a proxy server.
    # --build-arg http_proxy=http://example.com:80 \
    # --build-arg https_proxy=http://example.com:80 \
    docker build -t "${IMAGE}" .
}

function run() {
    # Add the following options to use a proxy server.
    # --env http_proxy=http://example.com:80 \
    # --env https_proxy=http://example.com:80 \
    docker run -it --rm \
        --name "${IMAGE}" \
        -v `pwd`/script:/root/script \
        --add-host=host.docker.internal:host-gateway \
        "${IMAGE}" \
        /root/script/init.sh
}

if [ "$(docker image ls -q "${IMAGE}")" ]; then
    read -p "docker image ${IMAGE} already exists. Do you want to rebuild? (y/N): " yn
    case "$yn" in [yY]*) build;; esac
else
    build
fi

run
