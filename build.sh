#! /bin/bash

echo start build lyke_web docs...
make html

# 将网页版文档部署到 tomcat 服务器上
cp -r build/html/* /usr/share/tomcat/webapps