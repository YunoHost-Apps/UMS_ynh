# Universal Media Server (ums) pour YunoHost

**WORK IN PROGRESS : Le package n'est pas stable ni fonctionnel actuellement, aucune garantie de fonctionnement, d'installation sans souci ni d'ailleurs de désinstallation sans soucis**

[![Niveau d'intégration](https://dash.yunohost.org/integration/ums.svg)](https://dash.yunohost.org/appci/app/ums) ![](https://ci-apps.yunohost.org/ci/badges/ums.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/ums.maintain.svg)  
[![Installer ums avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ums)

*[Read this readme in english.](./README.md)* 

> *Ce package vous permet d'installer ums rapidement et simplement sur un serveur YunoHost.  
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

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/ums.svg)](https://ci-apps.yunohost.org/ci/apps/ums/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/ums.svg)](https://ci-apps-arm.yunohost.org/ci/apps/ums/)

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

 * Signaler un bug : https://github.com/YunoHost-Apps/ums_ynh/issues
 * Site de l'application : Lien vers le site officiel de cette application.
 * Dépôt de l'application principale : Lien vers le dépôt officiel de l'application principale.
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
