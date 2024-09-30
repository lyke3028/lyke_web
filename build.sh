#! /bin/bash

echo start build lyke_web docs...
make html

# 将网页版文档部署到 tomcat 服务器上
tomcat_path="/usr/share/tomcat/webapps/lyke_web"
if [ ! -d "$tomcat_path" ]; then
    mkdir -p "$tomcat_path"
    echo "mkdir $tomcat_path"
fi
cp -r build/html/* $tomcat_path