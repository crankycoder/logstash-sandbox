#!/bin/sh
java -jar logstash-1.1.0-monolithic.jar agent -v -f logstash.conf --pluginpath src
