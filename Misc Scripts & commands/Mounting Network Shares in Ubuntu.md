## Mounting Network Shares in Ubuntu

First create a new directory where you would like file share mounted to:

```shell
sudo mkdir /mnt/sharename
```

Next we will need to add the share to */etc/fstab* so then the share can be mounted at start up: 

*Ubuntu 16.04.x or v1.0.0 smb / cifs share:*

```shell
//host/folderpath /mnt/sharename cifs username=username,password=password,uid=1000,gid=1000,iocharset=utf8,noperm,vers=1.0 0 0
```

*Ubuntu 18.04 & up or newer smb / cifs share:*

```shell
//host/folderpath /mnt/sharename cifs username=username,password=password,uid=1000,gid=1000,iocharset=utf8,noperm 0 0
```

Then finally we mount the share to the server:

```shell
sudo mount -a
```



**Additional Notes:**

If a path contains spaces or special characters: 

```shell
/folder\ name\ \(0000\)/
```

