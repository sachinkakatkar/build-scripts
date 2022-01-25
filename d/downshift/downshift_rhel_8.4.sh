# -----------------------------------------------------------------------------
#
# Package       : downshift
# Version       : v5.2.1
# Source repo   : https://github.com/downshift-js/downshift.git
# Tested on     : RHEL 8.4
# Language      : Node
# Travis-Check  : True
# Script License: Apache License Version 2.0
# Maintainer    : sachin.kakatkar@ibm.com
#
# Disclaimer: This script has been tested in root mode on given
# ==========  platform using the mentioned version of the package.
#             It may not work as expected with newer versions of the
#             package and/or distribution. In such case, please
#             contact "Maintainer" of this script.
#
# ----------------------------------------------------------------------------
#Run the script:./downshift_rhel_8.4.sh v5.2.1
#!/usr/bin/env bash

PACKAGE_NAME=downshift
PACKAGE_VERSION=$1
PACKAGE_URL=https://github.com/downshift-js/downshift.git

dnf module enable nodejs:12 -y
dnf install git npm -y

if [ -z "$1" ]
  then
    PACKAGE_VERSION=v5.2.1
fi
git clone $PACKAGE_URL $PACKAGE_NAME
cd $PACKAGE_NAME
git checkout $PACKAGE_VERSION
npm install
npm test a

