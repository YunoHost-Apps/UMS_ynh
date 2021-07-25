# Universal Media Server (ums)  YunoHost


[![Integration level](https://dash.yunohost.org/integration/ums.svg)](https://dash.yunohost.org/appci/app/ums) ![](https://ci-apps.yunohost.org/ci/badges/ums.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/ums.maintain.svg)  
[![Install ums with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ums)

Official website : [![https://www.universalmediaserver.com/](https://raw.githubusercontent.com/UniversalMediaServer/UniversalMediaServer/master/src/main/resources/images/logo.png)](https://www.universalmediaserver.com/)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install ums quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview

Universal Media Server is a free DLNA, UPnP and HTTP/S Media Server supporting all major operating systems, with versions for Windows, Linux and macOS.
The program streams or transcodes many different media formats with little or no configuration.
It is powered by FFmpeg, MediaInfo, OpenSubtitles, Crowdin, MEncoder, tsMuxeR, AviSynth, VLC and more, which combine to offer support for a wide range of media formats.
It was originally based on PS3 Media Server by shagrath, and started by SubJunk, an official developer of PMS, in order to ensure greater stability and file-compatibility.

Upstream source code may be found [here](https://github.com/UniversalMediaServer/UniversalMediaServer)

**Shipped version:** 10.8.2

## Screenshots

![](https://www.universalmediaserver.com/assets/img/web-interface.gif)

## Configuration

Once installed, UMS will create config file in `/home/ums/.config/UMS/`

All settings are pretty well documented directly in the files.
The default setting will use the shared multimedia directory by default (located into `/home/yunohost.multimedia/share`), you may change this setting in `/home/ums/.config/UMS/UMS.conf` with the setting "folders"



## Documentation

 * The [wiki](https://github.com/UniversalMediaServer/UniversalMediaServer/wiki) described main settings
 * The [forum](https://www.universalmediaserver.com/forum/) has also a lot of info


## YunoHost specific features

#### Multi-user support

For now, the app support single instance only.
As there is no user management, LDAP is not requested.


#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/ums.svg)](https://ci-apps.yunohost.org/ci/apps/ums/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/ums.svg)](https://ci-apps-arm.yunohost.org/ci/apps/ums/)

## Limitations

 - No multi-instance
 - work only on its own subdomain (ums.mydomain.tld, not on mydomain.tld/ums)
 - No user management
 - Not tested that much


## Other infos

If you can't find the server on a renderer, you may try the following trouble shooting :
- Wait a little bit : the first start up will intialized the database and if you have a lot of media, this may take a while
- Wait a little more : the server will broadcast an ALIVE message every 30 sec, so it may take this long for a renderer to find it
- check if the service ums is running in the yunohost admin
- check on which network interface the server is annoucing : You may find the network and address used in `/home/ums/.config/UMS/debug.log` or `/var/log/ums/ums.log`. Search for a line like `Using address /192.168.0.54 found on network interface: name:enp0s3 (enp0s3)`
The subnet to be used should be the same as your renderer (ie : if your TV is on 192.168.0.X and ums on 192.168.1.X, this will not work)

## Links

 * Report a bug: https://github.com/YunoHost-Apps/ums_ynh/issues
 * App website: [https://www.universalmediaserver.com](https://www.universalmediaserver.com/)
 * Upstream app repository: [https://www.universalmediaserver.com/](https://www.universalmediaserver.com/)
 * YunoHost website: https://yunohost.org/

---

## Developer info

**Only if you want to use a testing branch for coding, instead of merging directly into master.**
Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/ums_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/ums_ynh/tree/testing --debug
or
sudo yunohost app upgrade ums -u https://github.com/YunoHost-Apps/ums_ynh/tree/testing --debug
```
