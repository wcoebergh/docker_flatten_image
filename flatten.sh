#!/bin/bash

echo 'Flattening image' $1 'into' $2

docker run -d $1 | xargs docker export | docker import - $2:flat