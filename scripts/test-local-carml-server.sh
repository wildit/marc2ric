#!/bin/bash

curl -v -o output/output.ttl -F mapping=@src-gen/mapping.carml.ttl -F source=@input/split_115.xml -H "Accept: text/turtle" http://192.168.2.71:8080/service/service


# http://fl-6-62.zhdk.cloud.switch.ch:8080/service/service

# http://192.168.2.71:8080/service/service

