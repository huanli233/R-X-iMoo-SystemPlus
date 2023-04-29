#!/bin/bash
mdir=$(cd $(dirname $0) && pwd)
if [ ! -d ${mdir}/build ];then
    mkdir ${mdir}/build
fi
cp "$mdir/framework/framework-res.apk_$1" ${mdir}/model/system/framework/framework-res.apk
if [ -n ${2} ];then
    if [[ ${2} == '-apps' ]];then
        echo "apps for model"
        cp -r ${mdir}/apps/* ${mdir}/model/system/
    fi
fi
cd ${mdir}/model
zip -rq ${mdir}/build/build.zip ./*
rm ${mdir}/model/system/framework/framework-res.apk
rm -rf ${mdir}/model/system/priv-app
rm -rf ${mdir}/model/system/app