shinit
======

Basic init daemon in POSIX sh with only 5 lines of code. It supports
acting upon signals.

On USR1 signal it will poweroff, and on INT signal it will reboot.


Installing
----------

Before installing, edit the second command to use your boot/poweroff
script. If you are using Carbs Linux or KISS, you don't need to change it.

You can then install with `make`.

    make install
