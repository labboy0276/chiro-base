#!/bin/bash
mkdir ~/lando/chiro/config/temp
cp -r ~/lando/chiro/config/sync/. ~/lando/chiro/config/temp
cd ~/lando/chiro
lando drush cex -y
rm -rf ~/lando/chiro/web/profiles/chiro_base/config/install
mkdir ~/lando/chiro/web/profiles/chiro_base/config/install
cp -r ~/lando/chiro/config/sync/. ~/lando/chiro/web/profiles/chiro_base/config/install
find ~/lando/chiro/web/profiles/chiro_base/config/install/ -type f -exec sed -i -e '/^uuid: /d' {} \;
find ~/lando/chiro/web/profiles/chiro_base/config/install/ -type f -exec sed -i -e '/_core/,+1d' {} \;
rm -rf ~/lando/chiro/web/profiles/chiro_base/config/install/core.extension.yml
rm -rf ~/lando/chiro/web/profiles/chiro_base/config/install/file.settings.yml
rm -rf ~/lando/chiro/web/profiles/chiro_base/config/install/core.extension.yml
rm -rf ~/lando/chiro/web/profiles/chiro_base/config/install/README.txt
rm -rf ~/lando/chiro/config/sync
mv ~/lando/chiro/config/temp ~/lando/chiro/config/sync
