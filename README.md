# Syndicate Automount Service

This is the Syndicate automount service.  It lets you run and manage a large set of gateways from a single computer.

# Building

To build, you will first need to install [syndicate-core](https://github.com/syndicate-storage/syndicate-core), as well as the gateways you will want to run.

Then to build, type:
```
    $ make
```

To install, type:
```
    $ make install PREFIX=<your prefix> DESTDIR=<your destdir>
```

