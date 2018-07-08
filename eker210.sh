#!/bin/bash

echo ">>>make distclean:"
make distclean
echo ""

echo ">>>make eker210_config:"
make eker210_config
echo ""

echo ">>>make:"
make
echo ""

echo ">>>rm -f ~/tftpboot/u-boot.bin"
rm -f ~/tftpboot/u-boot.bin
echo ""

echo ">>>cp u-boot.bin ~/tftpboot/"
cp u-boot.bin ~/tftpboot/
echo ""
