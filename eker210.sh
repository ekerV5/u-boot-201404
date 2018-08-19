#!/bin/sh

echo ">>>make distclean:"
make distclean
echo ""

echo ">>>make eker210_config:"
make eker210_config
echo ""

echo ">>>make:"
make
echo ""

echo ">>>rm -f ~/tftpboot/eker210-spl.bin"
rm -f ~/tftpboot/eker210-spl.bin
echo ""

echo ">>>rm -f ~/tftpboot/u-boot.bin"
rm -f ~/tftpboot/u-boot.bin
echo ""

echo ">>>cp spl/eker210-spl.bin ~/tftpboot/"
cp spl/eker210-spl.bin ~/tftpboot/
echo ""

echo ">>>cp u-boot.bin ~/tftpboot/"
cp u-boot.bin ~/tftpboot/
echo ""
