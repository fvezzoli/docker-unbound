#!/bin/sh

exec /usr/sbin/unbound -c /usr/local/etc/unbound/unbound.conf -d -v
