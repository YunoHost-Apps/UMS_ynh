### Configuration

A la première connexion, UMS vous demandera de créer un user administrateur. Cela peut-être désactivé plus tard dans les réglages.

Une fois installé, tous les réglages peuvent être trouvés dans `__DATA_DIR__/.config/UMS/`
Les réglages sont plutôt bien documentés, vous pouvez les changer directement dans le fichier.
Le réglage par défaut utilisera le répertoire multimédia partagé (situé dans `/home/yunohost.multimedia/share`). Vous pouvez changer ce réglage dans le fichier `__DATA_DIR__/.config/UMS/UMS.conf` sur le réglage "folders".

### Limitations

 - Pas d'intégration des utilisateurs avec YunoHost
 
### Autres infos

Si vous ne trouvez pas le serveur sur vos renderer, vous pouvez essayer les trucs suivants :
- Attendez un petit peu : lors du premier démarrage, UMS va indexer tous vos médias et ceci peut prendre un certain temps si vous en avez beaucoup
- Attendez encore un peu : le serveur s'annonce par un message ALIVE toutes les 30 sec, donc cela peut prendre tout ce temps avant qu'un renderer ne le trouve
- Vérifiez bien que le service ums tourne dans l'interface d'administration de yunohost
- Vérifiez sur quel interface réseau ums s'annonce. Vous pouvez trouver l'adresse utilisée et le réseau dans `__DATA_DIR__/.config/UMS/debug.log` ou `/var/log/ums/ums.log`. Cherchez une ligne ressemblant à `Using address /192.168.0.54 found on network interface: name:enp0s3 (enp0s3)`. Le sous-réseau utilisé doit être le même que le renderer (ie : si votre TV est sur 192.168.0.X et ums sur 192.168.1.X, cela ne marchera pas)

Sur de petits appareils (par exemple un raspberry), la transco peut demander trop de puissance, n'hésitez par à utiliser des transcodeur alternatifs.
