#!/bin/sh

chown -R root:root desktop etc mldonkey ui
chmod -R 755 *
tar -czf package.tgz -X exclude.txt desktop etc mldonkey ui

chown -R root:root scripts CHANGELOG LICENSE INFO package.tgz PACKAGE_ICON.PNG
chmod -R 755 *
tar -cvf ../MLDonkey-x86-3.1.3-001.spk -X exclude.txt scripts CHANGELOG LICENSE INFO package.tgz PACKAGE_ICON.PNG

exit 0