#!/bin/bash
dir=/tmp/jetbrains
mkdir -p $dir

dest=/home/deploy/deploy_test/current/public/tb

wget -O $dir/Webstorm.dmg "https://data.services.jetbrains.com/products/download?code=WS&platform=mac"

wget -O $dir/Pycharm.dmg "https://data.services.jetbrains.com/products/download?code=PCP&platform=mac"

wget -O $dir/Phpstorm.dmg "https://data.services.jetbrains.com/products/download?code=PS&platform=mac"

wget -O $dir/AppCode.dmg "https://data.services.jetbrains.com/products/download?code=AC&platform=mac"

wget -O $dir/Rubymine.dmg "https://data.services.jetbrains.com/products/download?code=RM&platform=mac"

tar -zcf jetbrains.tar.gz $dir #- create the tar

if [ -d "$dest" ]; then
  mv $dir/jetbrains.tar.gz $dest
fi

