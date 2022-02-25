#!/usr/bin/env bash

set -eu

function git-clone() {
    repository=$1
    branch=$2
    dir_list=${@:3}

    echo -n "cloning ${repository} (${branch}) ... "

    git clone --quiet --depth 1 --filter=tree:0 --no-checkout \
        --branch ${branch} ${repository} .
    git sparse-checkout set --cone ${dir_list}
    git checkout --quiet --no-progress &> /dev/null

    echo "finished."
}

git config --global credential.helper cache

temp_dir=$(mktemp -d)
cd ${temp_dir}
git-clone https://github.com/unhurried/spring-boot-rest-api.git master /sql

echo -n "initializing database schemas ... "
MYSQL_PWD=password mysql -h host.docker.internal -u root < ./sql/create.sql 
echo "finished."
