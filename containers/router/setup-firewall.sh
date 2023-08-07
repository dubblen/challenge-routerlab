#!/bin/bash

iptables -t nat -A POSTROUTING -j MASQUERADE
iptables -t nat -A PREROUTING -p tcp --dport 2223 -j DNAT --to-destination 10.10.0.3:22
