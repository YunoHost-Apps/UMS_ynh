<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Universal Media Server YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/ums.svg)](https://ci-apps.yunohost.org/ci/apps/ums/) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/ums.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/ums.maintain.svg)

[![Instalatu Universal Media Server YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ums)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Universal Media Server YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

Universal Media Server is a DLNA-compliant UPnP Media Server. It is capable of sharing video, audio and images between most modern devices.
The program streams or transcodes many different media formats with little or no configuration. It is powered by FFmpeg, MediaInfo, OpenSubtitles, Crowdin, MEncoder, tsMuxeR, AviSynth, VLC and more, which combine to offer support for a wide range of media formats.

**Paketatutako bertsioa:** 14.5.0~ynh1

## Pantaila-argazkiak

![Universal Media Server(r)en pantaila-argazkia](./doc/screenshots/screenshot.png)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <www.universalmediaserver.com>
- Administratzaileen dokumentazio ofiziala: <https://github.com/UniversalMediaServer/UniversalMediaServer/wiki>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/UniversalMediaServer/UniversalMediaServer>
- YunoHost Denda: <https://apps.yunohost.org/app/ums>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/ums_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/ums_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/ums_ynh/tree/testing --debug
edo
sudo yunohost app upgrade ums -u https://github.com/YunoHost-Apps/ums_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
