Unbound (with DNSSEC validation)
===========

# Running

Just use this command to start the container. Unbound will listen on port 53/udp.

```docker run --name unbound -d -p 53:53/udp -p 53:53 fvezzoli/unbound```

(optional)
If you want to override the nameserver in the unbound container, you can use:

```docker run --name unbound -d -p 53:53/udp -p 53:53 --dns="127.0.0.1" fvezzoli/unbound```
