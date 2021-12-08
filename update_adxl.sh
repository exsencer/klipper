sudo service klipper stop

make clean KCONFIG_CONFIG=config.promicro
make KCONFIG_CONFIG=config.promicro
read -p "Pro Micro firmware built, please check above for any errors. Press [Enter] to continue flashing, or [Ctrl+C] to abort"

sudo service klipper start