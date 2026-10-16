#!/bin/bash

#USB startup need the option "POPLAR_RECOVERY=1".
make distclean
make CROSS_COMPILE=aarch64-linux-gnu- all fip \
  SPD=none \
  BL33=~/u-boot/u-boot.bin \
  DEBUG=1 \
  PLAT=poplar \
  POPLAR_RECOVERY=1
