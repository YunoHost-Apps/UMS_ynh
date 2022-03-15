### Configuration

Once installed, UMS will create config file in `/home/yunohost.app/ums/.config/UMS/`

All settings are pretty well documented directly in the files.
The default setting will use the shared multimedia directory by default (located into `/home/yunohost.multimedia/share`), you may change this setting in `/home/yunohost.app/ums/.config/UMS/UMS.conf` with the setting "folders"

### Limitations

 - No multi-instance
 - work only on its own subdomain (ums.mydomain.tld, not on mydomain.tld/ums)
 - No user management
 - Not tested that much

### Other infos

If you can't find the server on a renderer, you may try the following trouble shooting :
- Wait a little bit : the first start up will intialized the database and if you have a lot of media, this may take a while
- Wait a little more : the server will broadcast an ALIVE message every 30 sec, so it may take this long for a renderer to find it
- check if the service ums is running in the yunohost admin
- check on which network interface the server is annoucing : You may find the network and address used in `/home/yunohost.app/ums/.config/UMS/debug.log` or `/var/log/ums/ums.log`. Search for a line like `Using address /192.168.0.54 found on network interface: name:enp0s3 (enp0s3)`
The subnet to be used should be the same as your renderer (ie : if your TV is on 192.168.0.X and ums on 192.168.1.X, this will not work)

On small device (Raspberry for example), transco may be requiring too much power : try some alternate transcoder.
