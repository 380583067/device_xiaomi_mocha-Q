#!/bin/sh

rootdirectory="$PWD"
dirs="bionic/libm frameworks/native frameworks/av system/core system/extras"


RED='\033[0;31m'
NC='\033[0m'

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo -e "${RED}Applying ${NC}$dir ${RED}patches...${NC}\n"
	git apply -v --check $rootdirectory/device/xiaomi/mocha/patches/$dir/*.patch
done

# -----------------------------------
echo -e "Done !\n"
cd $rootdirectory

