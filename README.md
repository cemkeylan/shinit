shinit
======

Basic init daemon in POSIX sh with only 5 lines of code. It supports acting upon
signals.

On USR1 signal it will poweroff, and on INT signal it will reboot.


Installing
----------

Before installing, edit the second command to use your boot/poweroff script. If
you are using Carbs Linux or KISS, you don't need to change it.

You can then install with `make`.

    make install


Note on halting the system
--------------------------

shinit does **NOT** deal with system halting. You will need an extra utility for
that given purpose. `ubase halt` deals with this. You can also use compile
this really simple C program that tells to kernel to shutdown or reboot.

``` c
#include <sys/reboot.h>

int
main(int argc, char *argv[])
{
    switch ((int) argv[argc < 2 ? 0 : 1][0]) {
    case 'p': reboot(RB_POWER_OFF); break;
    case 'r': reboot(RB_AUTOBOOT);  break;
    default: return 1;
    }
    return 0;
}
```

You can compile the following program to something named `halt` or whatever you
like. If you call `halt p` it will power off, if you call `halt r` it will
reboot. Just note that this needs to be at the end of your init script, because
this command will shut your computer down straight away. You can do the
following check at the end of your init script:

``` sh
case "$1" in
    poweroff) halt p ;;
    reboot)   halt r ;;
esac
```
