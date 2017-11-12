#!/bin/bash
cd ~/lando/chiro
lando drush sql-drop -y
rm -rf ~/lando/chiro/web/sites/default/settings.php
cp ~/lando/chiro/web/sites/default/default.settings.php ~/lando/chiro/web/sites/default/settings.php
