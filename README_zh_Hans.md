<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Universal Media Server

[![集成程度](https://dash.yunohost.org/integration/ums.svg)](https://ci-apps.yunohost.org/ci/apps/ums/) ![工作状态](https://ci-apps.yunohost.org/ci/badges/ums.status.svg) ![维护状态](https://ci-apps.yunohost.org/ci/badges/ums.maintain.svg)

[![使用 YunoHost 安装 Universal Media Server](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ums)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Universal Media Server。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

Universal Media Server is a DLNA-compliant UPnP Media Server. It is capable of sharing video, audio and images between most modern devices.
The program streams or transcodes many different media formats with little or no configuration. It is powered by FFmpeg, MediaInfo, OpenSubtitles, Crowdin, MEncoder, tsMuxeR, AviSynth, VLC and more, which combine to offer support for a wide range of media formats.

**分发版本：** 14.5.0~ynh1

## 截图

![Universal Media Server 的截图](./doc/screenshots/screenshot.png)

## 文档与资源

- 官方应用网站： <www.universalmediaserver.com>
- 官方管理文档： <https://github.com/UniversalMediaServer/UniversalMediaServer/wiki>
- 上游应用代码库： <https://github.com/UniversalMediaServer/UniversalMediaServer>
- YunoHost 商店： <https://apps.yunohost.org/app/ums>
- 报告 bug： <https://github.com/YunoHost-Apps/ums_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/ums_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/ums_ynh/tree/testing --debug
或
sudo yunohost app upgrade ums -u https://github.com/YunoHost-Apps/ums_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
