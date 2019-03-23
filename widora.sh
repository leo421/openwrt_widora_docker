#!/bin/bash

if [ ! -d openwrt_widora ]; then
    git clone https://github.com/widora/openwrt_widora.git
fi

#cp -rpf widora_dl openwrt_widora/dl

docker build -t "widora-dev" .

docker run -it --rm \
	-w="$(pwd)/openwrt_widora" \
	-v "$(pwd):$(pwd)" \
	--user="`id -u`:`id -g`" \
	"widora-dev" ${@}



