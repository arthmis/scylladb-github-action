#!/bin/sh -l

# `$*` expands the `args` supplied in an `array` individually 
# or splits `args` in a string separated by whitespace.
# docker run --name chat-app --hostname localhost -d scylladb/scylla
# docker exec -it some-scylla nodetool status
# docker exec -it some-scylla cqlsh 
docker_run="docker run --name chat-app --hostname localhost -d scylladb/scylla"
docker_run="$docker_run && docker exec -it chat-app nodetool status"
# docker_run="$docker_run -e"
sh -c "$docker_run"
echo "Testing Successful so far"
