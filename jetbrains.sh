#!/bin/bash
dir=/tmp/jetbrains
mkdir -p $dir

tarfile=/tmp/jetbrains.tar.gz

dest=/home/deploy/deploy_test/current/public/tb

wget -O $dir/Webstorm.dmg "https://data.services.jetbrains.com/products/download?code=WS&platform=mac"

wget -O $dir/Pycharm.dmg "https://data.services.jetbrains.com/products/download?code=PCP&platform=mac"

wget -O $dir/Phpstorm.dmg "https://data.services.jetbrains.com/products/download?code=PS&platform=mac"

wget -O $dir/AppCode.dmg "https://data.services.jetbrains.com/products/download?code=AC&platform=mac"

wget -O $dir/Rubymine.dmg "https://data.services.jetbrains.com/products/download?code=RM&platform=mac"

tar -czvf $tarfile -P $dir

if [ -d "$dest" ]; then
  mv $tarfile $dest
fi




