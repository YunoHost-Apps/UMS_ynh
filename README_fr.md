# Universal Media Server (UMS) pour YunoHost

**WORK IN PROGRESS : Le package n'est pas stable ni fonctionnel actuellement, aucune garantie de fonctionnement, d'installation sans souci ni d'ailleurs de désinstallation sans soucis**

[![Niveau d'intégration](https://dash.yunohost.org/integration/UMS.svg)](https://dash.yunohost.org/appci/app/UMS) ![](https://ci-apps.yunohost.org/ci/badges/UMS.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/UMS.maintain.svg)  
[![Installer UMS avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=UMS)

*[Read this readme in english.](./README.md)* 

> *Ce package vous permet d'installer UMS rapidement et simplement sur un serveur YunoHost.  
Si vous n'avez pas YunoHost, consultez [le guide](https://yunohost.org/#/install) pour apprendre comment l'installer.*

## Vue d'ensemble
Description rapide de cette application.

**Version incluse :** 10.4.1

## Captures d'écran

![](Lien vers une capture d'écran de cette application.)

## Démo

* [Démo officielle](Lien vers un site de démonstration de cette application.)

## Configuration

Comment configurer cette application : via le panneau d'administration, un fichier brut en SSH ou tout autre moyen.

## Documentation

 * Documentation officielle : Lien vers la documentation officielle de cette application.
 * Documentation YunoHost : Si une documentation spécifique est nécessaire, n'hésitez pas à contribuer.

## Caractéristiques spécifiques YunoHost

#### Support multi-utilisateur

* L'authentification LDAP et HTTP est-elle prise en charge ?
* L'application peut-elle être utilisée par plusieurs utilisateurs ?

#### Architectures supportées

**Développement en cours sur x86_64. Aucun tests effectués encore sur d'autres architectures**

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/UMS.svg)](https://ci-apps.yunohost.org/ci/apps/UMS/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/UMS.svg)](https://ci-apps-arm.yunohost.org/ci/apps/UMS/)

## Limitations

* Limitations connues: Ne fonctionne pas

## Informations additionnelles

* Autres informations que vous souhaitez ajouter sur cette application.
doit etre sur un domaine root
pas de multiinstance
regarder les logs => debug log
Tester uniquement sur x86_64 pour l'instant


**Plus d'informations sur la page de documentation :**  
https://yunohost.org/packaging_apps

## Liens

 * Signaler un bug : https://github.com/YunoHost-Apps/UMS_ynh/issues
 * Site de l'application : Lien vers le site officiel de cette application.
 * Dépôt de l'application principale : Lien vers le dépôt officiel de l'application principale.
 * Site web YunoHost : https://yunohost.org/

---

## Informations pour les développeurs

**Seulement si vous voulez utiliser une branche de test pour le codage, au lieu de fusionner directement dans la banche principale.**
Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/UMS_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/UMS_ynh/tree/testing --debug
ou
sudo yunohost app upgrade UMS -u https://github.com/YunoHost-Apps/UMS_ynh/tree/testing --debug
```
