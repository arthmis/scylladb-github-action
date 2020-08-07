#!/bin/sh -l

# `$*` expands the `args` supplied in an `array` individually 
# or splits `args` in a string separated by whitespace.
# docker run --name chat-app --hostname localhost -d scylladb/scylla
# docker exec -it some-scylla nodetool status
# docker exec -it some-scylla cqlsh 
docker_run="docker run --name chat-app --hostname localhost -d scylladb/scylla"
# docker_run="$docker_run && docker exec chat-app nodetool -p 9042 status"
docker_run="$docker_run && ping 127.0.0.1 -n 6"
docker_run="$docker_run && docker exec chat-app cqlsh"
# docker_run="$docker_run -e"
sh -c "$docker_run"
echo "Testing Successful so far"
