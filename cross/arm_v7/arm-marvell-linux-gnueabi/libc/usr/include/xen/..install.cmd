cmd_/source/linux-3.x/usr/include/xen/.install := perl scripts/headers_install.pl /source/linux-3.x/include/xen /source/linux-3.x/usr/include/xen arm evtchn.h privcmd.h; perl scripts/headers_install.pl /source/linux-3.x/include/xen /source/linux-3.x/usr/include/xen arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /source/linux-3.x/usr/include/xen/$$F; done; touch /source/linux-3.x/usr/include/xen/.install