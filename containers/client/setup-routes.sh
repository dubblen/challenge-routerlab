#!/bin/bash

ip route del default
ip route add default via 10.10.0.2
