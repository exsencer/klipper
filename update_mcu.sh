sudo service klipper stop

make clean KCONFIG_CONFIG=config.spider
make KCONFIG_CONFIG=config.spider
read -p "Spider firmware built, please check above for any errors. Press [Enter] to continue flashing, or [Ctrl+C] to abort"

./scripts/flash-sdcard.sh /dev/ttyAMA0 fysetc-spider-v1
read -p "Spider firmware flashed, please check above for any errors. Press [Enter] to continue, or [Ctrl+C] to abort"

sudo service klipper start