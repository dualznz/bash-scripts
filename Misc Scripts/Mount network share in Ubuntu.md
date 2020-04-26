### Mount network share in Ubuntu

Create a new directory where you would like file share mounted to:
`sudo mkdir /mnt/sharename`

Next we will need to add the share to **/etc/fstab** so then the share can be mounted at start up:
For *ubuntu 16.04.x*:
`//host/folderpath /mnt/sharename cifs username=username,password=password,uid=1000,gid=1000,iocharset=utf8,noperm,vers=1.0 0 0`

For *ubuntu 18.04.x and above*:
`//host/folderpath /mnt/sharename cifs username=username,password=password,uid=1000,gid=1000,iocharset=utf8,noperm 0 0`

If a path contains *spaces* or *special characters*:
`folder\ name\ \(0000\)/`

Next we mount the the share:
`mount -a`