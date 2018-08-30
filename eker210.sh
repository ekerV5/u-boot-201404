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

echo "==========Merge spl and u-boot=========="
echo "rm -f ~/tftpboot/eker210-uboot.bin"
rm -f ~/tftpboot/eker210-uboot.bin

echo "cp spl/eker210-spl.bin eker210-uboot.bin"
cp spl/eker210-spl.bin eker210-uboot.bin

echo "truncate eker210-uboot.bin -c -s 16K"
truncate eker210-uboot.bin -c -s 16K

echo "cat u-boot.bin >> eker210-uboot.bin"
cat u-boot.bin >> eker210-uboot.bin

echo "mv eker210-uboot.bin ~/tftpboot/"
mv eker210-uboot.bin ~/tftpboot/
echo ""
