#!/bin/bash

V=3.80
S=1
D=r1

P=cnijfilter-$V-$D.patch

pushd .. > /dev/null
diff -ru cnijfilter-source-$V-$S cnijfilter-source > $P
install -m 644 $P ../gentoo/net-print/cnijfilter-common/files
install -m 644 $P ../gentoo/net-print/cnijfilter-ip7200/files
popd > /dev/null
