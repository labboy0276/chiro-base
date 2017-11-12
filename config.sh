#!/bin/bash
find ~/lando/chiro/web/profiles/chiro_base/config/install/ -type f -exec sed -i -e '/^uuid: /d' {} \;
find ~/lando/chiro/web/profiles/chiro_base/config/install/ -type f -exec sed -i -e '/_core/,+1d' {} \;
rm -rf ~/lando/chiro/web/profiles/chiro_base/config/install/core.extension.yml
rm -rf ~/lando/chiro/web/profiles/chiro_base/config/install/file.settings.yml
rm -rf ~/lando/chiro/web/profiles/chiro_base/config/install/update.settings.yml
