# Universal Media Server (ums) pour YunoHost


[![Niveau d'intégration](https://dash.yunohost.org/integration/ums.svg)](https://dash.yunohost.org/appci/app/ums) ![](https://ci-apps.yunohost.org/ci/badges/ums.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/ums.maintain.svg)  
[![Installer ums avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ums)

Site Web officiel : [![https://www.universalmediaserver.com/](https://raw.githubusercontent.com/UniversalMediaServer/UniversalMediaServer/master/src/main/resources/images/logo.png)](https://www.universalmediaserver.com/)

*[Read this readme in english.](./README.md)* 

> *Ce package vous permet d'installer ums rapidement et simplement sur un serveur YunoHost.  
Si vous n'avez pas YunoHost, consultez [le guide](https://yunohost.org/#/install) pour apprendre comment l'installer.*

## Vue d'ensemble

Universal Media Server est un serveur DLNA, UPnp et HTTP/S libre supportant tous les grands systèmes d'exploitation, avec une version pour Windows, Linux et MacOS
Le programme stream ou transcode beaucoup de formats différents avec peu ou pas de configuration.
Il utilise by FFmpeg, MediaInfo, OpenSubtitles, Crowdin, MEncoder, tsMuxeR, AviSynth, VLC et d'autres, qiu'il combine pour permettre d'exploiter une grande variété de format.
Il était originellement basé sur PS3 Media Server de shagrath, et a été lancé par SubJunk, un développeur officiel de PMS, pour assurer la plus grande stabilité et compatiblité.
Le code du programme peut être consulté [ici]](https://github.com/UniversalMediaServer/UniversalMediaServer)

**Version incluse :** 10.6.0

## Captures d'écran

![](https://www.universalmediaserver.com/assets/img/web-interface.gif)

## Configuration

Une fois installé, tous les réglages peuvent etre trouver dans `/ums/.config/UMS/`
Les réglages sont plutot bien documentés, vous pouvez les changer directement dans le fichier.
Le réglage par défaut utilisera le répertoire multimedia partagé (situé dans `/home/yunohost.multimedia/share`). Vous pouvez changer ce réglage dans le fichier `/home/ums/.config/UMS/UMS.conf` sur le réglage "folders".

## Documentation

 * Le [wiki](https://github.com/UniversalMediaServer/UniversalMediaServer/wiki) décrit les principaux réglages.
 * Le [forum](https://www.universalmediaserver.com/forum/) a également énormément d'info.
 
## Caractéristiques spécifiques YunoHost

#### Support multi-utilisateur

Pour l'instant, l'application supporte uniquement un mode mono-instance.
Et comme elle ne gère pas d'utilisateur, il n'y a bien entendu pas de LDAP.



#### Architectures supportées

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/ums.svg)](https://ci-apps.yunohost.org/ci/apps/ums/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/ums.svg)](https://ci-apps-arm.yunohost.org/ci/apps/ums/)

## Limitations

 - pas de  multiinstance
 - fonctionne uniquement en sous-domaine (ums.mydomain.tld, et non mydomain.tld/ums)
 - pas de gestion d'utilisateur
 - Pas énormément testée
 
## Other infos

Si vous ne trouvez pas le serveur sur vos renderer, vous pouvez essayer les trucs suivants:
- Attendez un petit peu : lors du premier démarrage, UMS va indexer tous vos médias et ceci peut prendre un certain temps si vous en avez beaucoup
- Attendez encore un peu : le serveur s'annonce par un message ALIVE toutes les 30 sec, donc cela peut prendre tout ce temps avant qu'un renderer ne le trouve
- Vérifiez bien que le service ums tourne dans l'interface d'administration de yunohost
- Vérifiez sur quel interface réseau ums s'annonce. Vous pouvez trouver l'adresse utilisée et le réseau dans `/home/ums/.config/UMS/debug.log` ou `/var/log/ums/ums.log`. Cherchez une ligne ressemblant à `Using address /192.168.0.54 found on network interface: name:enp0s3 (enp0s3)`. Le sous-réseau utilisé doit être le même que le renderer (ie : si votre TV est sur 192.168.0.X et ums sur 192.168.1.X, cela ne marchera pas)

Sur de petits appareils (par exemple une raspberry, la transco peut demander trop de puissance, n'hésiter par à utiliser des transcodeur alternatifs.

## Liens

 * Signaler un bug : https://github.com/YunoHost-Apps/ums_ynh/issues
 * Site de l'application : [https://www.universalmediaserver.com](https://www.universalmediaserver.com/)
 * Dépôt de l'application principale :[ https://www.universalmediaserver.com/](https://www.universalmediaserver.com/)
 * Site web YunoHost : https://yunohost.org/

---

## Informations pour les développeurs

**Seulement si vous voulez utiliser une branche de test pour le codage, au lieu de fusionner directement dans la banche principale.**
Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/ums_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/ums_ynh/tree/testing --debug
ou
sudo yunohost app upgrade ums -u https://github.com/YunoHost-Apps/ums_ynh/tree/testing --debug
```
