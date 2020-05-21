## Chrome Remote Desktop Service Commands

**Notes:**

*Please note:* these commands will most likely require **admin / sudo** permissions to execute.



**Commands:**

*Windows:*

```powershell
net start chromoting
net stop chromoting
```

*Linux:*

```shell
sudo service chrome-remote-desktop start
sudo service chrome-remote-desktop restart
sudo service chrome-remote-desktop stop
```

*MacOS*

```shell
launchctl start org.chromium.chromoting
launchctl stop org.chromium.chromoting
```

