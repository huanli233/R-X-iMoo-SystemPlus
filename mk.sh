#!bin/bash
l=("z6dfb" "z7" "z7a" "z8" "z8snb")
for i in ${l[*]}; do
    bash make.sh "${i}"
    mv ./build/build.zip "./build/${i}.zip"
done