#!/bin/sh -l

# `$*` expands the `args` supplied in an `array` individually 
# or splits `args` in a string separated by whitespace.
docker run --name chat-app --hostname localhost -d scylladb/scylla
docker exec -it some-scylla nodetool status
docker exec -it some-scylla cqlsh 
echo "Testing Successful so far"
