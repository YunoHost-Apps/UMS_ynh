<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# Universal Media Server voor Yunohost

[![Integratieniveau](https://apps.yunohost.org/badge/integration/ums)](https://ci-apps.yunohost.org/ci/apps/ums/)
![Mate van functioneren](https://apps.yunohost.org/badge/state/ums)
![Onderhoudsstatus](https://apps.yunohost.org/badge/maintained/ums)

[![Universal Media Server met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ums)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je Universal Media Server snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

Universal Media Server is a DLNA-compliant UPnP Media Server. It is capable of sharing video, audio and images between most modern devices.
The program streams or transcodes many different media formats with little or no configuration. It is powered by FFmpeg, MediaInfo, OpenSubtitles, Crowdin, MEncoder, tsMuxeR, AviSynth, VLC and more, which combine to offer support for a wide range of media formats.

**Geleverde versie:** 14.8.0~ynh1

## Schermafdrukken

![Schermafdrukken van Universal Media Server](./doc/screenshots/screenshot.png)

## Documentatie en bronnen

- Officiele website van de app: <www.universalmediaserver.com>
- Officiele beheerdersdocumentatie: <https://github.com/UniversalMediaServer/UniversalMediaServer/wiki>
- Upstream app codedepot: <https://github.com/UniversalMediaServer/UniversalMediaServer>
- YunoHost-store: <https://apps.yunohost.org/app/ums>
- Meld een bug: <https://github.com/YunoHost-Apps/ums_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/ums_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/ums_ynh/tree/testing --debug
of
sudo yunohost app upgrade ums -u https://github.com/YunoHost-Apps/ums_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>
