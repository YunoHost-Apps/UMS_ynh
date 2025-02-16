<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Universal Media Server untuk YunoHost

[![Tingkat integrasi](https://apps.yunohost.org/badge/integration/ums)](https://ci-apps.yunohost.org/ci/apps/ums/)
![Status kerja](https://apps.yunohost.org/badge/state/ums)
![Status pemeliharaan](https://apps.yunohost.org/badge/maintained/ums)

[![Pasang Universal Media Server dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ums)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Universal Media Server secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

Universal Media Server is a DLNA-compliant UPnP Media Server. It is capable of sharing video, audio and images between most modern devices.
The program streams or transcodes many different media formats with little or no configuration. It is powered by FFmpeg, MediaInfo, OpenSubtitles, Crowdin, MEncoder, tsMuxeR, AviSynth, VLC and more, which combine to offer support for a wide range of media formats.

**Versi terkirim:** 14.10.0~ynh1

## Tangkapan Layar

![Tangkapan Layar pada Universal Media Server](./doc/screenshots/screenshot.png)

## Dokumentasi dan sumber daya

- Website aplikasi resmi: <www.universalmediaserver.com>
- Dokumentasi admin resmi: <https://github.com/UniversalMediaServer/UniversalMediaServer/wiki>
- Depot kode aplikasi hulu: <https://github.com/UniversalMediaServer/UniversalMediaServer>
- Gudang YunoHost: <https://apps.yunohost.org/app/ums>
- Laporkan bug: <https://github.com/YunoHost-Apps/ums_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/ums_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/ums_ynh/tree/testing --debug
atau
sudo yunohost app upgrade ums -u https://github.com/YunoHost-Apps/ums_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
