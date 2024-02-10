#!/usr/bin/fish

while true; socat TCP4:127.0.0.1:2000, TCP4:127.0.0.1:2005; sleep 10; end
