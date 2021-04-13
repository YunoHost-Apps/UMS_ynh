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
Le code du programme peut ^etre consulté [ici]](https://github.com/UniversalMediaServer/UniversalMediaServer)

**Version incluse :** 10.4.1

## Captures d'écran

![](Lien vers une capture d'écran de cette application.)

## Configuration

Une fois installé, tous les réglages peuvent etre trouver dans `/ums/.config/UMS/`
Les réglages sont plutot bien documentés, vous pouvez les changer directement dans le fichier.

## Documentation

 * Le [wiki](https://github.com/UniversalMediaServer/UniversalMediaServer/wiki) décrit les principaux réglages.
 * Le [forum](https://www.universalmediaserver.com/forum/) a également énormément d'info.
 
## Caractéristiques spécifiques YunoHost

#### Support multi-utilisateur

Pour l'instant, l'application supporte uniuqment un mode mono-instance.
Et comme elle ne gère pas d'utilisateur, il n'y a bien entendu pas de LDAP.

Le réglage par défaut partagera le répertoire multimedia partagé. Vous pouvez changer ce réglage dans le fichier `/home/ums/.config/UMS/UMS.conf` sur le réglage "folders".

#### Architectures supportées

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/ums.svg)](https://ci-apps.yunohost.org/ci/apps/ums/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/ums.svg)](https://ci-apps-arm.yunohost.org/ci/apps/ums/)

## Limitations

* Limitations connues: 
 - pas de  multiinstance
 - fonctionne uniquement en sous-domaine (ums.mydomain.tld, et non mydomain.tld/ums)
 - pas de gestion d'utilisateur
 - Pas énormément testée
 
## Informations additionnelles

J'ai rajouté la possibilité d'installer vlc lors de l'installation. ATTENTION, je ne l'ai pas testé et je ne suis pas sur que cela serve à quelque chose sur un serveur headless...
De plus, vlc requiert l'installation d'un environnement graphique complet.

**Plus d'informations sur la page de documentation :**  
https://yunohost.org/packaging_apps

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
