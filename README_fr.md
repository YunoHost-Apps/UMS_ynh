<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Universal Media Server pour YunoHost

[![Niveau d’intégration](https://dash.yunohost.org/integration/ums.svg)](https://dash.yunohost.org/appci/app/ums) ![Statut du fonctionnement](https://ci-apps.yunohost.org/ci/badges/ums.status.svg) ![Statut de maintenance](https://ci-apps.yunohost.org/ci/badges/ums.maintain.svg)

[![Installer Universal Media Server avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ums)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Universal Media Server rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

Universal Media Server est un serveur multimédia UPnP compatible DLNA. Il peut partager des vidéos, de l'audio et des images avec la pluparts des équipements modernes. 
Le programme stream ou transcode de nombreux formats média différents avec peu ou pas de configuration. Il utilise par FFmpeg, MediaInfo, OpenSubtitles, Crowdin, MEncoder, tsMuxeR, AviSynth, VLC et d'autres, qui se combinent pour offrir une grande variété de formats.

**Version incluse :** 14.0.0~ynh1

## Captures d’écran

![Capture d’écran de Universal Media Server](./doc/screenshots/screenshot.png)

## Documentations et ressources

- Site officiel de l’app : <www.universalmediaserver.com>
- Documentation officielle de l’admin : <https://github.com/UniversalMediaServer/UniversalMediaServer/wiki>
- Dépôt de code officiel de l’app : <https://github.com/UniversalMediaServer/UniversalMediaServer>
- YunoHost Store : <https://apps.yunohost.org/app/ums>
- Signaler un bug : <https://github.com/YunoHost-Apps/ums_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/ums_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/ums_ynh/tree/testing --debug
ou
sudo yunohost app upgrade ums -u https://github.com/YunoHost-Apps/ums_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
