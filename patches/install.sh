#!/bin/sh

echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic/libm frameworks/native frameworks/av  system/extras system/core" 

# red + nocolor
RED='\033[0;31m'
NC='\033[0m'

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
    echo -e "\n${RED}Applying ${NC}$dir ${RED}patches...${NC}\n"
	git apply -v $rootdirectory/device/xiaomi/mocha/patches/$dir/*.patch
done

# -----------------------------------
echo -e "Done !\n"
cd $rootdirectory
