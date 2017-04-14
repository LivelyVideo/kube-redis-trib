#!/bin/bash

set -x

echo "yes" | /redis-trib.rb create `getent hosts redis-0.redis-internal | awk '{ print $1 }'`:6379 `getent hosts redis-1.redis-internal | awk '{ print $1 }'`:6379 `getent hosts redis-2.redis-internal | awk '{ print $1 }'`:6379