## Creating Network Shares in Ubuntu

First you will need to ensure that *samba* is installed on your system:

```shell
sudo apt install samba
```

Next you need to create a *network user* that will be able to access the shared directory:

```shell
smbpasswd -a username
```

Then fill in the required information to create the smb user.

Next you need to specify the directory location that you would like to share:

```shell
sudo mkdir /mnt/sharename
```

[Optional] you can chown the directory to a specific user account for read / write access:

```shell
sudo chown user:user /mnt/sharename
```

Next you will need modify the samba configuration file to add this new share:

```shell
sudo nano /etc/samba/smb.conf
```

Goto the bottom of the configuration file and add the following:

```shell
#share name
[share_name]
path = /mnt/sharename
available = yes
valid users = root #specify the smb accounts that can access this share
read only = no
browsable = yes
public = yes
writable = yes
```

Finally we need to restart samba:

*Ubuntu 16.04.x:*

```shell
sudo service smbd restart
```

*Ubuntu 18.04 & above:*

```shell
sudo /etc/init.d/smbd restart
```

