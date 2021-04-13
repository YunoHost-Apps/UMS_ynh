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

**Shipped version:** 10.4.1

## Screenshots

![](Link to a screenshot of this app.)

## Configuration

Once installed, UMS will create config file in `/home/ums/.config/UMS/`
All settings are pretty well documented. You may change them from here.

## Documentation

 * The [wiki](https://github.com/UniversalMediaServer/UniversalMediaServer/wiki) described main settings
 * The [forum](https://www.universalmediaserver.com/forum/) has also a lot of info


## YunoHost specific features

#### Multi-user support

For now, the app support single instance only.
As there is no user management, LDAP is not requested.

The default setting will use the shared multimedia directory by default, you may change this setting in `/home/ums/.config/UMS/UMS.conf` with the setting "folders"



#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/ums.svg)](https://ci-apps.yunohost.org/ci/apps/ums/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/ums.svg)](https://ci-apps-arm.yunohost.org/ci/apps/ums/)

## Limitations

* Known limitations : 
 - No multiinstance
 - work only on its own subdomain (ums.mydomain.tld, not on mydomain.tld/ums)
 - No user management
 - Not tested that much

## Additional information

I added the possibility to install vlc on installation. Beware! I addn't tested it and I'm not sure it is of any use for a headless server.
Moreover, it will download a full graphical UI, so not very useful on a server...

**More info on the documentation page:**  
https://yunohost.org/packaging_apps

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
