# Universal Media Server (ums)  YunoHost

**WORK IN PROGRESS: This app does not work yet and does not install or remove properly : Use with caution!!**

[![Integration level](https://dash.yunohost.org/integration/ums.svg)](https://dash.yunohost.org/appci/app/ums) ![](https://ci-apps.yunohost.org/ci/badges/ums.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/ums.maintain.svg)  
[![Install ums with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ums)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install ums quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
Quick description of this app.

**Shipped version:** 10.4.1

## Screenshots

![](Link to a screenshot of this app.)

## Demo

* [Official demo](Link to a demo site for this app.)

## Configuration

How to configure this app: From an admin panel, a plain file with SSH, or any other way.

## Documentation

 * Official documentation: Link to the official documentation of this app
 * YunoHost documentation: If specific documentation is needed, feel free to contribute.

## YunoHost specific features

#### Multi-user support

Are LDAP and HTTP auth supported?
Can the app be used by multiple users?

#### Supported architectures

**Only x_86_64 has been tested so far**
* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/ums.svg)](https://ci-apps.yunohost.org/ci/apps/ums/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/ums.svg)](https://ci-apps-arm.yunohost.org/ci/apps/ums/)

## Limitations

* Any known limitations : a lot :)

## Additional information

* Must have its own domain (no subdir like mydomain.tld/ums)
* No multiinstance
* has been tested only on x86_64 so far

**More info on the documentation page:**  
https://yunohost.org/packaging_apps

## Links

 * Report a bug: https://github.com/YunoHost-Apps/ums_ynh/issues
 * App website: Link to the official website of this app.
 * Upstream app repository: Link to the official repository of the upstream app.
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
