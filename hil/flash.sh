#!/bin/bash
set -e
LOG=/home/kris/hil/flash.log

echo "Flashing firmware..." | tee $LOG

openocd -f interface/stlink.cfg \
        -f target/stm32f4x.cfg \
        -c "program /home/kris/hil/firmware.bin verify reset exit" | tee -a $LOG

echo "Done." | tee -a $LOG
