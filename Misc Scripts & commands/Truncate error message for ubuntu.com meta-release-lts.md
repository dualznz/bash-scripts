## Truncate error message for ubuntu.com meta-release-lts

**Notes:**

Error appears that connection failed to meta-release-lts in ubuntu.

It seems that when the connection can be re-established to check the changelog, this file is not cleaned up properly. So, after the first time it cannot connect, the message is stored in the file and never erased so it will always show up as if it cannot connect (when actually it is connecting).



**Preview:**

```
Failed to connect to https://changelogs.ubuntu.com/meta-release-lts. Check your Internet connection or proxy settings
```



**Command(s):**

```shell
sudo truncate -s 0 /var/lib/ubuntu-release-upgrader/release-upgrade-available
```

