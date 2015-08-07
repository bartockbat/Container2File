#!/bin/bash
# The $1 parameter in the docker image name
export NOW=$(date +%R"_"%d_%m_%Y)
docker history --no-trunc=true $1 | gawk '{print $7,$8,$9,$10,$11,$12,$13,$14,$15,$16}' >> file$NOW

